Table 99991 "PTE VAT Posting SetupEXT"
{

    fields
    {
        field(1; "VAT Bus. Posting Group"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group';
            DataClassification = ToBeClassified;
        }
        field(2; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = ToBeClassified;
        }
        field(6010050; "PVS Calc. Prop. Deduction VAT"; Boolean)
        {
            Caption = 'Calc. Prop. Deduction VAT';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010051; "PVS Prop.Deduction VAT %"; Decimal)
        {
            Caption = 'Proportional Deduction VAT %';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "VAT Bus. Posting Group", "VAT Prod. Posting Group")
        {
            Clustered = true;
        }
    }




}

