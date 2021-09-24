Table 80279 "PTE Extended Text HeaderEXT"
{

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            DataClassification = ToBeClassified;
            OptionCaption = 'Standard Text,G/L Account,Item,Resource';
            OptionMembers = "Standard Text","G/L Account",Item,Resource;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(3; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            DataClassification = ToBeClassified;
        }
        field(4; "Text No."; Integer)
        {
            Caption = 'Text No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(6010050; "PVS PrintVis Order"; Boolean)
        {
            Caption = 'PrintVis Order No.';
            DataClassification = ToBeClassified;
            Description = 'PrintVis';
        }
        field(6010051; "PVS Web2PVS Order"; Boolean)
        {
            Caption = 'Web2PVS Order';
            DataClassification = ToBeClassified;
            Description = 'PrintVis';
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Language Code", "Text No.")
        {
            Clustered = true;
        }
    }




}

