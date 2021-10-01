codeunit 99999 "PTE Cloud Upgrade Mgt."
{
    procedure CustomizationsExist(): Boolean
    var
        AllObj: Record AllObj;
    begin
        AllObj.SetRange("Object ID", 50000, 99949);
        exit(not AllObj.IsEmpty);
    end;

    procedure MoveData() // TODO Fix, call, whatever
    var
        PTETablesStatus: Record "PTE Upgrade Table Status";
        Company: Record Company;
        c: Integer;
        i: Integer;
        w: Dialog;
        Text000: Label '#1';
    begin
        PTETablesStatus.SETRANGE(Completed, false);
        c := PTETablesStatus.COUNT;
        w.OPEN(Text000, c);
        if PTETablesStatus.findset then
            repeat
                if Company.Get(PTETablesStatus.Company) then begin
                    CLEARLASTERROR;
                    COMMIT;
                    if CODEUNIT.RUN(80002, PTETablesStatus) then BEGIN
                        PTETablesStatus.Completed := TRUE;
                        if PTETablesStatus.modify() then;
                    END ELSE BEGIN
                        PTETablesStatus."Last Error" := COPYSTR(GETLASTERRORTEXT, 1, 250);
                        if PTETablesStatus.modify() then;
                    END;
                    i += 1;
                    w.UPDATE(1, ROUND(i / c * 10000, 1));
                end;
            until PTETablesStatus.NEXT = 0;
        w.CLOSE;

    end;

    procedure MigratePerTenantExtension() // TODO Fix, call, whatever
    begin
        Dlg.Open('Converting Interim Tables #1################');
        AllObj.SetRange("Object Type", AllObj."object type"::Table);
        AllObj.SetFilter("Object Name", 'PTE Interim*');
        AllObj.FindSet;
        repeat
            Dlg.Update(1, AllObj."Object ID");
            ToRecRef.Open(GetFromObjectID(AllObj."Object Name"));
            FromRecRef.Open(AllObj."Object ID");
            if FromRecRef.FindSet then
                repeat
                    Fld.SetRange(TableNo, AllObj."Object ID");
                    Fld.SetRange("No.", 1, 49999);
                    Fld.FindSet;
                    repeat
                        FromFldRef := FromRecRef.Field(Fld."No.");
                        ToFldRef := ToRecRef.Field(Fld."No.");
                        ToFldRef.SetRange(FromFldRef.Value);
                    until Fld.Next = 0;

                    ToRecRef.FindFirst();
                    Fld.Reset();
                    Fld.SetRange(TableNo, AllObj."Object ID");
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
        until AllObj.Next = 0;
        Dlg.Close;
    end;

    var
        AllObj: Record AllObj;
        Fld: Record "Field";
        FromRecRef: RecordRef;
        ToRecRef: RecordRef;
        FromFldRef: FieldRef;
        ToFldRef: FieldRef;
        Dlg: Dialog;

    local procedure GetFromObjectID(Value: Text): Integer
    var
        ObjectID: Integer;
    begin
        Evaluate(ObjectID, CopyStr(Value, 10, 30));
        exit(ObjectID);
    end;
}