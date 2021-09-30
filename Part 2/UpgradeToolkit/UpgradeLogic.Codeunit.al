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

    procedure MovedCustomerTemplateIfNotExist()
    var
        MiniCustomerTemplate: Record "Mini Customer Template";
        CustomerTemplate: Record "Customer Templ.";
    begin
        if MiniCustomerTemplate.FindSet() then
            repeat
                if not CustomerTemplate.Get(MiniCustomerTemplate.Code) then begin
                    CustomerTemplate.Init();
                    CustomerTemplate.Code := MiniCustomerTemplate.Code;
                    CustomerTemplate.Validate(Description, MiniCustomerTemplate."Template Name");
                    CustomerTemplate.Validate(City, MiniCustomerTemplate.City);
                    CustomerTemplate.Validate("Document Sending Profile", MiniCustomerTemplate."Document Sending Profile");
                    CustomerTemplate.Validate("Currency Code", MiniCustomerTemplate."Currency Code");
                    CustomerTemplate.Validate("Credit Limit (LCY)", MiniCustomerTemplate."Credit Limit (LCY)");
                    CustomerTemplate.Validate("Customer Posting Group", MiniCustomerTemplate."Customer Posting Group");
                    CustomerTemplate.Validate("Customer Price Group", MiniCustomerTemplate."Customer Price Group");
                    CustomerTemplate.Validate("Language Code", MiniCustomerTemplate."Language Code");
                    CustomerTemplate.Validate("Payment Terms Code", MiniCustomerTemplate."Payment Terms Code");
                    CustomerTemplate.Validate("Fin. Charge Terms Code", MiniCustomerTemplate."Fin. Charge Terms Code");
                    CustomerTemplate.Validate("Country/Region Code", MiniCustomerTemplate."Country/Region Code");
                    CustomerTemplate.Validate("Customer Disc. Group", MiniCustomerTemplate."Customer Disc. Group");
                    CustomerTemplate.Validate("Block Payment Tolerance", MiniCustomerTemplate."Block Payment Tolerance");
                    CustomerTemplate.Validate("Payment Method Code", MiniCustomerTemplate."Payment Method Code");
                    CustomerTemplate.Validate("Application Method", MiniCustomerTemplate."Application Method");
                    CustomerTemplate.Validate("Prices Including VAT", MiniCustomerTemplate."Prices Including VAT");
                    CustomerTemplate.Validate("Post Code", MiniCustomerTemplate."Post Code");
                    CustomerTemplate.Validate("Gen. Bus. Posting Group", MiniCustomerTemplate."Gen. Bus. Posting Group");
                    CustomerTemplate.Validate(County, MiniCustomerTemplate.County);
                    CustomerTemplate.Validate("Reminder Terms Code", MiniCustomerTemplate."Reminder Terms Code");
                    CustomerTemplate.Validate("VAT Bus. Posting Group", MiniCustomerTemplate."VAT Bus. Posting Group");
                    CustomerTemplate.Validate("Allow Line Disc.", MiniCustomerTemplate."Allow Line Disc.");
                    CustomerTemplate.Validate("Validate EU Vat Reg. No.", MiniCustomerTemplate."Validate EU Vat Reg. No.");
                    CustomerTemplate.Validate("PVS Customer Group Code", MiniCustomerTemplate."PVS Customer Group Code");
                    CustomerTemplate.Validate("PVS Industry Group", MiniCustomerTemplate."PVS Industry Group");
                    CustomerTemplate.Validate("PVS ABC Code", MiniCustomerTemplate."PVS ABC Code");
                    CustomerTemplate.Validate("PVS External No.", MiniCustomerTemplate."PVS External No.");
                    CustomerTemplate.Validate("PVS Discount Group", MiniCustomerTemplate."PVS Discount Group");
                    CustomerTemplate.Validate("PVS Shipment From Customer", MiniCustomerTemplate."PVS Shipment From Customer");
                    CustomerTemplate.Validate("PVS Allow Back Order", MiniCustomerTemplate."PVS Allow Back Order");
                    CustomerTemplate.Validate("PVS Digital Art Delivery Code", MiniCustomerTemplate."PVS Digital Art Delivery Code");
                    CustomerTemplate.Validate("PVS Order Planner", MiniCustomerTemplate."PVS Order Planner");
                    CustomerTemplate.Validate("PVS Estimator", MiniCustomerTemplate."PVS Estimator");
                    CustomerTemplate.Validate("PVS No Freight", MiniCustomerTemplate."PVS No Freight");
                    CustomerTemplate.Insert();
                end;
            until MiniCustomerTemplate.Next() = 0;
    end;

    procedure MovedItemTemplateIfNotExist()
    var
        MiniItemTemplate: Record "Item Template";
        ItemTemplate: Record "Item Templ.";
    begin
        if MiniItemTemplate.FindSet() then
            repeat
                if not ItemTemplate.Get(MiniItemTemplate.Code) then begin
                    ItemTemplate.Init();
                    ItemTemplate.Code := MiniItemTemplate.Code;
                    ItemTemplate.Validate(Description, MiniItemTemplate."Template Name");
                    ItemTemplate.Validate("Allow Invoice Disc.", MiniItemTemplate."Allow Invoice Disc.");
                    ItemTemplate.Validate("Automatic Ext. Texts", MiniItemTemplate."Automatic Ext. Texts");
                    ItemTemplate.Validate("Base Unit of Measure", MiniItemTemplate."Base Unit of Measure");
                    ItemTemplate.Validate("Costing Method", MiniItemTemplate."Costing Method");
                    ItemTemplate.Validate("Gen. Prod. Posting Group", MiniItemTemplate."Gen. Prod. Posting Group");
                    ItemTemplate.Validate("Indirect Cost %", MiniItemTemplate."Indirect Cost %");
                    ItemTemplate.Validate("Inventory Posting Group", MiniItemTemplate."Inventory Posting Group");
                    ItemTemplate.Validate("Item Category Code", MiniItemTemplate."Item Category Code");
                    ItemTemplate.Validate("Item Disc. Group", MiniItemTemplate."Item Disc. Group");
                    ItemTemplate.Validate("Price Includes VAT", MiniItemTemplate."Price Includes VAT");
                    ItemTemplate.Validate("Price/Profit Calculation", MiniItemTemplate."Price/Profit Calculation");
                    ItemTemplate.Validate("Profit %", MiniItemTemplate."Profit %");
                    ItemTemplate.Validate("Service Item Group", MiniItemTemplate."Service Item Group");
                    ItemTemplate.Validate("Tax Group Code", MiniItemTemplate."Tax Group Code");
                    ItemTemplate.Validate(Type, MiniItemTemplate.Type);
                    ItemTemplate.Validate("VAT Prod. Posting Group", MiniItemTemplate."VAT Prod. Posting Group");
                    ItemTemplate.Validate("Warehouse Class Code", MiniItemTemplate."Warehouse Class Code");
                    ItemTemplate.Validate("PVS Item Type", MiniItemTemplate."PVS Item Type");
                    ItemTemplate.Validate("PVS Format 1", MiniItemTemplate."PVS Format 1");
                    ItemTemplate.Validate("PVS Format 2", MiniItemTemplate."PVS Format 2");
                    ItemTemplate.Validate("PVS Item Quality Code", MiniItemTemplate."PVS Item Quality Code");
                    ItemTemplate.Validate("PVS Item Quality Code", MiniItemTemplate."PVS Item Quality Code");
                    ItemTemplate.Validate("PVS Weight", MiniItemTemplate."PVS Weight");
                    ItemTemplate.Validate("PVS Ink Coverage Area/Weight", MiniItemTemplate."PVS Ink Coverage Area/Weight");
                    ItemTemplate.Validate("PVS Price Unit", MiniItemTemplate."PVS Price Unit");
                    ItemTemplate.Validate("PVS Price List Code", MiniItemTemplate."PVS Price List Code");
                    ItemTemplate.Validate("PVS Add. Pct.", MiniItemTemplate."PVS Add. Pct.");
                    ItemTemplate.Validate("PVS Paper Type", MiniItemTemplate."PVS Paper Type");
                    ItemTemplate.Validate("PVS Inventory Unit", MiniItemTemplate."PVS Inventory Unit");
                    ItemTemplate.Validate("PVS Transfer Cost", MiniItemTemplate."PVS Transfer Cost");
                    ItemTemplate.Validate("PVS Transfer Surcharge Pct.", MiniItemTemplate."PVS Transfer Surcharge Pct.");
                    ItemTemplate.Validate("PVS Transfer Price", MiniItemTemplate."PVS Transfer Price");
                    ItemTemplate.Validate("PVS Default Coverage Pct.", MiniItemTemplate."PVS Default Coverage Pct.");
                    ItemTemplate.Validate("PVS Reel Length", MiniItemTemplate."PVS Reel Length");
                    ItemTemplate.Validate("PVS Formula Code", MiniItemTemplate."PVS Formula Code");
                    ItemTemplate.Validate("PVS Incl. In Add. Calc.", MiniItemTemplate."PVS Incl. In Add. Calc.");
                    ItemTemplate.Validate("PVS Incl. In Reprinting", MiniItemTemplate."PVS Incl. In Reprinting");
                    ItemTemplate.Validate("PVS Imposition Code", MiniItemTemplate."PVS Imposition Code");
                    ItemTemplate.Validate("PVS Thickness", MiniItemTemplate."PVS Thickness");
                    ItemTemplate.Validate("PVS Weight Per Inventory Unit", MiniItemTemplate."PVS Weight Per Inventory Unit");
                    ItemTemplate.Validate("PVS Toxic Factor", MiniItemTemplate."PVS Toxic Factor");
                    ItemTemplate.Validate("PVS Color Code", MiniItemTemplate."PVS Color Code");
                    ItemTemplate.Validate("PVS Finishing", MiniItemTemplate."PVS Finishing");
                    ItemTemplate.Validate("PVS Unwind", MiniItemTemplate."PVS Unwind");
                    ItemTemplate.Validate("PVS Format Code", MiniItemTemplate."PVS Format Code");
                    ItemTemplate.Validate("PVS Quality Type Code", MiniItemTemplate."PVS Quality Type Code");
                    ItemTemplate.Validate("PVS ECO Label Code", MiniItemTemplate."PVS ECO Label Code");
                    ItemTemplate.Validate("PVS Intent Group Product Code", MiniItemTemplate."PVS Intent Group Product Code");
                    ItemTemplate.Validate("PVS Length", MiniItemTemplate."PVS Length");
                    ItemTemplate.Validate("PVS Width", MiniItemTemplate."PVS Width");
                    ItemTemplate.Validate("PVS Nonstock Items", MiniItemTemplate."PVS Nonstock Items");
                    ItemTemplate.Validate("PVS No Consumption Posting", MiniItemTemplate."PVS No Consumption Posting");
                    ItemTemplate.Validate("PVS UOM Code", MiniItemTemplate."PVS UOM Code");
                    ItemTemplate.Validate("PVS Sub Contracting", MiniItemTemplate."PVS Sub Contracting");
                    ItemTemplate.Validate("PVS Inventory Item", MiniItemTemplate."PVS Inventory Item");
                    ItemTemplate.Validate("PVS Item Type Code", MiniItemTemplate."PVS Item Type Code");
                    ItemTemplate.Validate("PVS Min. Sale", MiniItemTemplate."PVS Min. Sale");
                    ItemTemplate.Validate("PVS Allow Partial Delivery", MiniItemTemplate."PVS Allow Partial Delivery");
                    ItemTemplate.Validate("PVS Customer No.", MiniItemTemplate."PVS Customer No.");
                    ItemTemplate.Validate("PVS Grain Direction", MiniItemTemplate."PVS Grain Direction");
                    ItemTemplate.Validate("PVS Product Group Code", MiniItemTemplate."PVS Product Group Code");
                    ItemTemplate.Validate("PVS Colors Front", MiniItemTemplate."PVS Colors Front");
                    ItemTemplate.Validate("PVS Colors Back", MiniItemTemplate."PVS Colors Back");
                    ItemTemplate.Validate("PVS Grade", MiniItemTemplate."PVS Grade");
                    ItemTemplate.Validate("PVS Consumption Unit", MiniItemTemplate."PVS Consumption Unit");
                    ItemTemplate.Validate("PVS Weight Unit", MiniItemTemplate."PVS Weight Unit");
                    ItemTemplate.Validate("PVS Front Coatings", MiniItemTemplate."PVS Front Coatings");
                    ItemTemplate.Validate("PVS Back Coatings", MiniItemTemplate."PVS Back Coatings");
                    ItemTemplate.Validate("PVS Tool 1", MiniItemTemplate."PVS Tool 1");
                    ItemTemplate.Validate("PVS Tool 2", MiniItemTemplate."PVS Tool 2");
                    ItemTemplate.Validate("PVS Tool 3", MiniItemTemplate."PVS Tool 3");
                    ItemTemplate.Validate("PVS Tool 4", MiniItemTemplate."PVS Tool 4");
                    ItemTemplate.Validate("PVS Media Type", MiniItemTemplate."PVS Media Type");
                    ItemTemplate.Validate("PVS Envelope Window Shape Type", MiniItemTemplate."PVS Envelope Window Shape Type");
                    ItemTemplate.Validate("PVS Envelope Window Size X", MiniItemTemplate."PVS Envelope Window Size X");
                    ItemTemplate.Validate("PVS Envelope Window Size Y", MiniItemTemplate."PVS Envelope Window Size Y");
                    ItemTemplate.Validate("PVS Opacity", MiniItemTemplate."PVS Opacity");
                    ItemTemplate.Validate("PVS Opacity Level", MiniItemTemplate."PVS Opacity Level");
                    ItemTemplate.Validate("PVS Ink Evaporation Pct.", MiniItemTemplate."PVS Ink Evaporation Pct.");
                    ItemTemplate.Validate("PVS Ded. Middle Liner Caliper", MiniItemTemplate."PVS Ded. Middle Liner Caliper");
                    ItemTemplate.Validate("PVS Deduc. Base Liner Caliper", MiniItemTemplate."PVS Deduc. Base Liner Caliper");
                    ItemTemplate.Validate("PVS Middle Liner Weight", MiniItemTemplate."PVS Middle Liner Weight");
                    ItemTemplate.Validate("PVS Base Liner Weight", MiniItemTemplate."PVS Base Liner Weight");
                    ItemTemplate.Insert();
                end;
            until MiniItemTemplate.Next() = 0;
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