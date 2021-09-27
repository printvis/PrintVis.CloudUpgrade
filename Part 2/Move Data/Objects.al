Codeunit 50001 "Move Data Around"
{

    trigger OnRun()
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
