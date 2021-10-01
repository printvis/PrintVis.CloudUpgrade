Table 99954 "PTE Gen. Product PostGroup EXT"
{

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6010050; "PVS Type"; Option)
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Normal,Header,Totalling';
            OptionMembers = Normal,Header,Totalling;
        }
        field(6010051; "PVS Indent"; Integer)
        {
            BlankZero = true;
            Caption = 'Indent';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010052; "PVS Bold"; Boolean)
        {
            Caption = 'Bold';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010053; "PVS Totaling"; Text[100])
        {
            Caption = 'Totaling';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010054; "PVS Min. DG%"; Decimal)
        {
            Caption = 'Min. Profit%';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010055; "PVS Max. DG%"; Decimal)
        {
            Caption = 'Max. DG%';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010056; "PVS Principle of Usage"; Option)
        {
            Caption = 'Application Principle';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Normal inventory item,Inventory item without posting value,Price list';
            OptionMembers = "Normal inventory item","Inventory item without posting value","Price list";
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

