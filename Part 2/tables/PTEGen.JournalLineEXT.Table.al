Table 80081 "PTE Gen. Journal LineEXT"
{

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = ToBeClassified;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(51; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = ToBeClassified;
        }
        field(6010051; "PVS Order Date"; Date)
        {
            Caption = 'Order Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010052; "PVS Cc Sent"; Boolean)
        {
            Caption = 'PrintVis CC sent';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010053; "PVS Cc Received"; Boolean)
        {
            Caption = 'PrintVis CC received';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010300; "PVS Order ID"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010301; "PVS Order No."; Code[20])
        {
            Caption = 'PrintVis Order No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010302; "PVS Department Code"; Code[20])
        {
            Caption = 'Department';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010303; "PVS Cost Center Code"; Code[20])
        {
            Caption = 'Cost Center';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010304; "PVS UOM Code"; Code[20])
        {
            Caption = 'Unit of Measure';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010307; "PVS Product Group Code"; Code[20])
        {
            Caption = 'Product Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010310; "PVS Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010311; "PVS Inventory Management"; Boolean)
        {
            Caption = 'Warehouse Management';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010312; "PVS Sub Contracting"; Boolean)
        {
            Caption = 'Sub Contracting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010314; "PVS Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
        }
    }




}

