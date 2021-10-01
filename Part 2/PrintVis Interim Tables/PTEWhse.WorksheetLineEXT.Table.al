Table 99994 "PTE Whse. Worksheet LineEXT"
{

    fields
    {
        field(1; "Worksheet Template Name"; Code[10])
        {
            Caption = 'Worksheet Template Name';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Name; Code[10])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(10; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(6010300; "PVS ID"; Integer)
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "Worksheet Template Name", Name, "Location Code", "Line No.")
        {
            Clustered = true;
        }
    }


}

