Table 80017 "PTE G/L EntryEXT"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(6010051; "PVS Cc Sent"; Boolean)
        {
            Caption = 'PrintVis CC sent';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010052; "PVS Cc Received"; Boolean)
        {
            Caption = 'PrintVis CC received';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010300; "PVS ID"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
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

