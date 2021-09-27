Table 80110 "PTE Sales Shipment HeaderEXT"
{

    fields
    {
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
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }




}

