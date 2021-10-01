Table 99961 "PTE Item Ledger EntryEXT"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(6010050; "PVS ID"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010056; "PVS Cost Center Code"; Code[20])
        {
            Caption = 'Cost Center';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010321; "PVS User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010400; "PVS First Arrival Date"; Date)
        {
            Caption = 'First Arrival Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }




}

