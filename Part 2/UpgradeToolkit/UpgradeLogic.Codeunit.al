codeunit 99998 "PTE Upgrade Logic"
{
    Access = Internal;

    procedure MergePointerTables()
    var
        SingleInstance: Codeunit "PVS SingleInstance";
        PlanningPointerRec: record "PVS Job Planning Flow Pointer";
        GeneringPointerRec: Record "PVS Job Process Flow Pointer";
    begin
        PlanningPointerRec.reset;
        if PlanningPointerRec.findset then
            repeat
                GeneringPointerRec.init;
                GeneringPointerRec."Pointer Type" := GeneringPointerRec."Pointer Type"::PlanningUnit;
                GeneringPointerRec.ID := PlanningPointerRec.ID;
                GeneringPointerRec."From Plan ID" := PlanningPointerRec."From Plan ID";
                GeneringPointerRec."Point To ID" := PlanningPointerRec."To Plan ID";
                GeneringPointerRec."Earliest Start" := PlanningPointerRec."Earliest Start";
                GeneringPointerRec."Finished Latest" := PlanningPointerRec."Finished Latest";
                GeneringPointerRec."Net Buffer" := PlanningPointerRec."Net Buffer";
                GeneringPointerRec."Respect Cap. Unit From" := PlanningPointerRec."Respect Cap. Unit From";
                GeneringPointerRec."Respect Cap. Unit To" := PlanningPointerRec."Respect Cap. Unit To";
                GeneringPointerRec."Transport Unit" := PlanningPointerRec."Transport Unit";
                GeneringPointerRec."Pointer Entry No." := 0;
                SingleInstance.Set_Override_TableTrigger_Check(true);
                GeneringPointerRec.insert(true);
            until PlanningPointerRec.next = 0;
        PlanningPointerRec.deleteall;
    end;

    procedure CapUnitRoundingUpDown()
    var
        SourceRecordRef: RecordRef;
    begin

        SourceRecordRef.Open(Database::"PVS Capacity Unit");
        if SourceRecordRef.FindSet() then
            repeat
                TimeFieldToDecimalField(SourceRecordRef, 5, 111);
                TimeFieldToDecimalField(SourceRecordRef, 13, 110);
            until SourceRecordRef.Next() = 0;

    end;

    procedure UpgradeGrossQuotedPricePVSJob()
    var
        SingleInstance: Codeunit "PVS SingleInstance";
        PVSJob: Record "PVS Job";
    begin
        PVSJob.SetFilter("Quoted Price", '<>%1', 0);
        PVSJob.SetRange("Gross Quoted Price (LCY)", 0);
        if PVSJob.IsEmpty() then
            exit;
        if PVSJob.FindSet() then
            repeat
                PVSJob.Calculate_Gross_Price(PVSJob);
                PVSJob.Modify();
            until PVSJob.Next() = 0;
    end;

    procedure MoveCaseMgtMatrix()
    var
        UserTimeRegister: Record "User Time Register";
        PVSUserSetup: Record "PVS User Setup";
    begin
        UserTimeRegister.SetFilter("User ID", '<>%1', '');
        if UserTimeRegister.FindSet() then
            repeat
                PVSUserSetup.SetRange("BC User Name", UserTimeRegister."User ID");
                if PVSUserSetup.FindFirst() then begin
                    PVSUserSetup."Case Mgt. Matrix" := UserTimeRegister."PVS Case Mgt. Matrix";
                    if PVSUserSetup.Modify() then;
                end;
            until UserTimeRegister.Next() = 0;
    end;

    procedure MovePlanningBoardPermissionDo()
    var
        UserSetup: Record "PVS User Setup";
        PlanningUserSetup: Record "PVS Planning User Setup";
        RecRef: RecordRef;
    begin
        if PlanningUserSetup.FindSet() then
            repeat
                RecRef.GETTABLE(PlanningUserSetup);
                if UserSetup.Get(PlanningUserSetup."PVS User ID") then begin
                    UserSetup."Capacity Group A" := ReadCodeTextFromFieldRecordRef(RecRef, 20);
                    UserSetup."Capacity Group B" := ReadCodeTextFromFieldRecordRef(RecRef, 21);
                    UserSetup."Capacity Group C" := ReadCodeTextFromFieldRecordRef(RecRef, 22);
                    UserSetup."Capacity Group D" := ReadCodeTextFromFieldRecordRef(RecRef, 23);
                    UserSetup."Capacity Group E" := ReadCodeTextFromFieldRecordRef(RecRef, 24);
                    if ReadBooleanFromFieldRecordRef(RecRef, 10) then
                        UserSetup."Planning Board Permission" := UserSetup."Planning Board Permission"::FullAccess
                    else
                        UserSetup."Planning Board Permission" := UserSetup."Planning Board Permission"::ViewOnly;
                    UserSetup.Modify();
                end;
            until PlanningUserSetup.Next() = 0;
    end;

    local procedure TimeFieldToDecimalField(var SourceRecordRef: RecordRef; FromFieldNo: Integer; ToFieldNo: Integer)
    var
        FieldRec: Record Field;
        SourceFieldRef: FieldRef;
        TargetFieldRef: FieldRef;
        ValueVariant: Variant;
        ValueTime: Time;
    begin
        //check field so it exists
        if not FieldRec.Get(SourceRecordRef.Number, FromFieldNo) then
            exit;
        if not FieldRec.Get(SourceRecordRef.Number, ToFieldNo) then
            exit;
        SourceFieldRef := SourceRecordRef.Field(FromFieldNo);  //Time
        TargetFieldRef := SourceRecordRef.Field(ToFieldNo);    //Dec
        ValueVariant := SourceFieldRef.Value;
        ValueTime := ValueVariant;
        if ValueTime <> 0T then begin
            TargetFieldRef.Value := TimeToDecimal(ValueTime);
            SourceFieldRef.Value := 0T;
            SourceRecordRef.Modify();
        end;
    end;

    local procedure TimeToDecimal(inTime: Time): Decimal
    begin
        exit((inTime - 000000T) / 3600000)
    end;


    //move to core app later on
    local procedure ReadCodeTextFromFieldRecordRef(VAR RecRef: RecordRef; FieldNo: Integer): Text
    var
        FieldRec: Record Field;
        FldRef: FieldRef;
    begin
        FieldRec.SetRange(TableNo, RecRef.Number);
        FieldRec.SetFilter(ObsoleteState, '<>%1', FieldRec.ObsoleteState::Removed);
        if FieldRec.FindFirst() then begin
            FldRef := RecRef.Field(FieldNo);
            exit(FldRef.VALUE);
        end;
    end;

    //move to core app later on
    local procedure ReadBooleanFromFieldRecordRef(VAR RecRef: RecordRef; FieldNo: Integer): Boolean
    var
        FieldRec: Record Field;
        FldRef: FieldRef;
    begin
        FieldRec.SetRange(TableNo, RecRef.Number);
        FieldRec.SetFilter(ObsoleteState, '<>%1', FieldRec.ObsoleteState::Removed);
        if FieldRec.FindFirst() then begin
            FldRef := RecRef.Field(FieldNo);
            exit(FldRef.VALUE);
        end;
    end;

}
