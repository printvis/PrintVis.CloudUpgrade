Table 99977 "PTE Sales Cr.Memo HeaderEXT"
{

    fields
    {
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(6010300; "PVS Order ID"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010303; "PVS Complaint No."; Integer)
        {
            Caption = 'Complaint No.';
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
        field(6010336; "PVS Web Frontend Code"; Code[20])
        {
            Caption = 'Web Frontend';
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
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }



}

