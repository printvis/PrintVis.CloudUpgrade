Table 80083 "PTE Item Journal LineEXT"
{

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = ToBeClassified;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(41; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = ToBeClassified;
        }
        field(6010050; "PVS ID"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010051; "PVS Quote No."; Code[20])
        {
            Caption = 'PrintVis Quote No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010053; "PVS Sub Contracting"; Boolean)
        {
            Caption = 'Sub Contracting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010054; "PVS Department Code"; Code[20])
        {
            Caption = 'Department';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010055; "PVS Reason Department"; Code[20])
        {
            Caption = 'Reason Department';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010056; "PVS Waste Code"; Code[10])
        {
            Caption = 'Slack Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010057; "PVS Cost Center Code"; Code[20])
        {
            Caption = 'Cost Center';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010058; "PVS UOM Code"; Code[20])
        {
            Caption = 'Unit of Measure';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010059; "PVS Consumption Type"; Option)
        {
            Caption = 'Job Costing Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Normal';
            OptionMembers = Normal;
        }
        field(6010060; "PVS Price"; Decimal)
        {
            Caption = 'Price Graphic';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010061; "PVS Qty. PrintVis Order"; Decimal)
        {
            Caption = 'Qty. Graphic';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010062; "PVS Direct Cost"; Decimal)
        {
            Caption = 'Direct Cost';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010063; "PVS Qty. Unit"; Option)
        {
            Caption = 'Unit Number';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Pcs.,1000 pcs.,lbs.,sq ft.,ft,Gallon';
            OptionMembers = "Pcs.","1000 pcs.",Weight,"Area",Lenght,Volume;
        }
        field(6010064; "PVS Calc. Unit"; Option)
        {
            Caption = 'Calculation Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Pcs.,1000 pcs.,lbs.,sq ft.,ft,Gallon,100 lbs,1000 lbs,1000 ft';
            OptionMembers = "Pcs.","1000 pcs.",Weight,"Area",Length,Volume,"100 Weight","1000 Weight","1000 Length";
        }
        field(6010065; "PVS Plan ID"; Integer)
        {
            Caption = 'PlanID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010307; "PVS Total Cost"; Decimal)
        {
            Caption = 'Total Cost';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010308; "PVS Price Calculated"; Decimal)
        {
            Caption = 'Price, Calc.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010309; "PVS Fixed Sales Price"; Boolean)
        {
            Caption = 'Fixed quoted price';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010310; "PVS Fixed Cost"; Boolean)
        {
            Caption = 'Fixed Cost';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010321; "PVS User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010322; "PVS Publication Code"; Code[20])
        {
            Caption = 'Publication Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010323; "PVS Edition ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Edition ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010324; "PVS Section Code"; Code[20])
        {
            Caption = 'Section Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
        }
    }




}

