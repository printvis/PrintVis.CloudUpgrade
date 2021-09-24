codeunit 80001 "PTE PrintVis Cloud"
{
    trigger OnRun()
    begin
        MoveData();
    end;


    procedure MoveData()
    var
        PTETablesStatus: Record "PTE Tables Status";
        Company: Record Company;
        c: Integer;
        i: Integer;
        w: Dialog;
        Text000: Label '#1';
    begin
        PTETablesStatus.SETRANGE(CompletedCloud, FALSE);
        c := PTETablesStatus.COUNT;
        w.OPEN(Text000, c);
        if PTETablesStatus.findset then
            repeat
                if Company.Get(PTETablesStatus.Company) then begin
                    CLEARLASTERROR;
                    COMMIT;
                    if CODEUNIT.RUN(80002, PTETablesStatus) then BEGIN
                        PTETablesStatus.CompletedCloud := TRUE;
                        if PTETablesStatus.modify() then;
                    END ELSE BEGIN
                        PTETablesStatus.LastError := COPYSTR(GETLASTERRORTEXT, 1, 250);
                        if PTETablesStatus.modify() then;
                    END;
                    i += 1;
                    w.UPDATE(1, ROUND(i / c * 10000, 1));
                end;
            until PTETablesStatus.NEXT = 0;
        w.CLOSE;

    end;
}
