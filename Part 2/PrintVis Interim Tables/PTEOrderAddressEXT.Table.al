Table 80224 "PTE Order AddressEXT"
{

    fields
    {
        field(1; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6010050; "PVS eProc. Delivery Address ID"; Text[50])
        {
            Caption = 'eProcurement Delivery Address ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "Vendor No.", "Code")
        {
            Clustered = true;
        }
    }



}

