Table 99980 "PTE Sales HeaderEXT"
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
        field(6010052; "PVS Reception"; Option)
        {
            Caption = 'Reception';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Telephone,Fax,Letter,E-mail,Internet';
            OptionMembers = Telephone,Fax,Letter,"E-mail",Internet;
        }
        field(6010054; "PVS Calc. Status"; Option)
        {
            Caption = 'Calculation not completed';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Calculate,Wait';
            OptionMembers = Calculate,Wait;
        }
        field(6010300; "PVS Order ID"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010301; "PVS Order No."; Code[20])
        {
            Caption = 'PrintVis Order No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010302; "PVS Price Method"; Option)
        {
            Caption = 'Price Method';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'As per Quote,In accordance with consumption,Manual Price';
            OptionMembers = "As per Quote","In accordance with consumption","Manual Price";
        }
        field(6010303; "PVS Complaint No."; Integer)
        {
            Caption = 'Complaint No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010304; "PVS Order Type Code"; Code[20])
        {
            Caption = 'Order Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010305; "PVS Status Code"; Code[20])
        {
            Caption = 'Status Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010307; "PVS Deadline"; Date)
        {
            Caption = 'Deadline';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010308; "PVS Person Responsible"; Code[50])
        {
            Caption = 'Responsible';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            NotBlank = true;
        }
        field(6010310; "PVS Manual Responsible"; Boolean)
        {
            Caption = 'Manual Responsible';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010312; "PVS Coordinator"; Code[50])
        {
            Caption = 'Order Planner';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010315; "PVS Customer Group Code"; Code[20])
        {
            Caption = 'Customer Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010316; "PVS Rejection Code"; Code[20])
        {
            Caption = 'Rejection Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010318; "PVS Allow Partial Delivery"; Boolean)
        {
            Caption = 'Allow Partial Delivery';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010319; "PVS No Freight"; Boolean)
        {
            Caption = 'No Freight';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010327; "PVS Batch No."; Integer)
        {
            Caption = 'Batch Number';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010332; "PVS End User Contact"; Code[20])
        {
            Caption = 'End User Contact';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010334; "PVS Invoice Template Code"; Code[20])
        {
            Caption = 'Invoice Template Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010335; "PVS Man. Invoice Template Code"; Boolean)
        {
            Caption = 'Manual Invoice Template Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010336; "PVS Web Frontend Code"; Code[20])
        {
            Caption = 'Web Front End';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010337; "PVS Web Header Code"; Code[20])
        {
            Caption = 'Web Header Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010338; "PVS Web Order No."; Code[20])
        {
            Caption = 'Web Order No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010339; "PVS Web Contact Phone"; Text[30])
        {
            Caption = 'Web Contact Phone';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010340; "PVS Web Contact E-Mail"; Text[50])
        {
            Caption = 'Web Contact Email';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010400; "PVS Auto Created Invoice"; Boolean)
        {
            Caption = 'Auto Created Invoice';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010401; "PVS Auto Post"; Boolean)
        {
            Caption = 'Auto Post';
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

