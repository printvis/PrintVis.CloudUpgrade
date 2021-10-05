codeunit 99999 "PTE Cloud Upgrade Mgt."
{
    procedure MigrateInterimExtensionTables();
    var
        UpgradeTablesStatus: Record "PTE Upgrade Table Status";
        Company: Record Company;
        Cnt, i : Integer;
        Dlg: Dialog;
    begin
        UpgradeTablesStatus.SetRange("Cloud Completed", false);
        UpgradeTablesStatus.SetRange(Type, UpgradeTablesStatus.Type::Customization, UpgradeTablesStatus.Type::PrintVis);
        Cnt := UpgradeTablesStatus.Count();
        Dlg.OPEN('Migrate: #1##################, #2#################');
        if UpgradeTablesStatus.findset then
            repeat
                if Company.Get(UpgradeTablesStatus.Company) then begin
                    i += 1;
                    Dlg.Update(1, Company.Name + ' ' + Format(UpgradeTablesStatus."Table No."));
                    Dlg.UPDATE(2, ROUND(i / Cnt * 10000, 1));
                    case UpgradeTablesStatus.Type of
                        UpgradeTablesStatus.Type::PrintVis:
                            MovePrintVisData(UpgradeTablesStatus);
                        UpgradeTablesStatus.Type::Customization:
                            MigratePerTenantExtension(UpgradeTablesStatus);
                    end;
                    if UpgradeTablesStatus.modify() then;
                end;
            until UpgradeTablesStatus.NEXT = 0;
        Dlg.CLOSE;
    end;

    local procedure MigratePerTenantExtension(var UpgradeTablesStatus: Record "PTE Upgrade Table Status")
    var
        Fld: Record "Field";
        FromRecRef, ToRecRef : RecordRef;
        FromFldRef, ToFldRef : FieldRef;
    begin
        ToRecRef.Open(UpgradeTablesStatus."Table No.");
        FromRecRef.Open(UpgradeTablesStatus."PTE Table No.");
        if FromRecRef.FindSet then
            repeat
                Fld.SetRange(TableNo, UpgradeTablesStatus."PTE Table No.");
                Fld.SetRange("No.", 1, 49999);
                Fld.FindSet;
                repeat
                    FromFldRef := FromRecRef.Field(Fld."No.");
                    ToFldRef := ToRecRef.Field(Fld."No.");
                    ToFldRef.SetRange(FromFldRef.Value);
                until Fld.Next = 0;

                ToRecRef.FindFirst();
                Fld.Reset();
                Fld.SetRange(TableNo, UpgradeTablesStatus."PTE Table No.");
                Fld.SetRange("No.", 50000, 99999);
                Fld.FindSet;
                repeat
                    FromFldRef := FromRecRef.Field(Fld."No.");
                    ToFldRef := ToRecRef.Field(Fld."No.");
                    ToFldRef.Value := FromFldRef.Value;
                until Fld.Next = 0;
                ToRecRef.Modify();
            until FromRecRef.Next = 0;
        ToRecRef.Close;
        FromRecRef.Close;
        UpgradeTablesStatus."Cloud Completed" := true;
    end;

    local procedure MovePrintVisData(var UpgradeTablesStatus: Record "PTE Upgrade Table Status")
    begin
        ClearLastError();
        Commit();
        if not Codeunit.Run(Codeunit::"PTE Internal Move Data", UpgradeTablesStatus) then
            UpgradeTablesStatus."Last Error" := CopyStr(GetLastErrorText(), 1, 250);
    end;

    procedure CustomizationsExist(): Boolean
    var
        AllObj: Record AllObj;
    begin
        AllObj.SetRange("Object ID", 50000, 99949);
        exit(not AllObj.IsEmpty);
    end;
}