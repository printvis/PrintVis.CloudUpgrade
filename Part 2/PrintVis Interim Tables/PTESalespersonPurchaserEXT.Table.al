Table 80013 "PTE Salesperson/PurchaserEXT"
{

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6010050; "PVS Group Code"; Code[20])
        {
            Caption = 'Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010051; "PVS IsSalesperson"; Boolean)
        {
            Caption = 'Salesperson';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }



}

