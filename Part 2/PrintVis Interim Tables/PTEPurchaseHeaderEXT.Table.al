Table 80038 "PTE Purchase HeaderEXT"
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
        field(6010051; "PVS ID"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010053; "PVS Control Amount Incl. VAT"; Decimal)
        {
            Caption = 'Control amount including VAT';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010054; "PVS Status"; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Supply,Selected,Canceled';
            OptionMembers = Supply,Selected,Canceled;
        }
        field(6010250; "PVS eProcurement Status"; Option)
        {
            Caption = 'eProcurement Status';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'New,Processed,Error';
            OptionMembers = New,Processed,Error;
        }
        field(6010300; "PVS P-Order Type"; Code[20])
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
        key(Key1; "Document Type", "No.")
        {
            Clustered = true;
        }
    }



}

