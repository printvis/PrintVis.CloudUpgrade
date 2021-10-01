Table 99964 "PTE LocationEXT"
{

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6010052; "PVS Job Costing"; Boolean)
        {
            Caption = 'Job Costing';
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

