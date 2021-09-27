Table 85109 "PTE Purchase Header ArchiveEXT"
{

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(5047; "Version No."; Integer)
        {
            Caption = 'Version No.';
            DataClassification = ToBeClassified;
        }
        field(5048; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
            DataClassification = ToBeClassified;
        }
        field(6010051; "PVS ID"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010052; "PVS Archived"; Boolean)
        {
            Caption = 'Archived';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010053; "PVS Control Amount Incl. VAT"; Decimal)
        {
            Caption = 'Control amount including VAT';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010054; "PVS Status"; Option)
        {
            Caption = 'NVS Status';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Supply,Selected,Canceled';
            OptionMembers = Supply,Selected,Canceled;
        }
        field(6010300; "PVS Order Type Code"; Code[20])
        {
            Caption = 'Order Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010301; "PVS Status Code"; Code[20])
        {
            Caption = 'Status Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010303; "PVS Deadline"; Date)
        {
            Caption = 'Deadline';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010304; "PVS Person Responsible"; Code[50])
        {
            Caption = 'Responsible';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            NotBlank = true;
        }
        field(6010306; "PVS Manual Responsible"; Boolean)
        {
            Caption = 'Manual Responsible';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010308; "PVS Coordinator"; Code[50])
        {
            Caption = 'Order Planner';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010312; "PVS Expected Receipt Time"; Time)
        {
            Caption = 'Expected Receipt Time';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.", "Doc. No. Occurrence", "Version No.")
        {
            Clustered = true;
        }
    }



}

