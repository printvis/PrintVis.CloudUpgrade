Table 86661 "PTE Return Receipt LineEXT"
{

    fields
    {
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(6010051; "PVS ID 1"; Integer)
        {
            BlankZero = true;
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010052; "PVS ID 2"; Integer)
        {
            BlankZero = true;
            Caption = 'Order ID 2';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010053; "PVS ID 3"; Integer)
        {
            BlankZero = true;
            Caption = 'Order ID 3';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010055; "PVS Bold"; Boolean)
        {
            Caption = 'Bold';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010056; "PVS Group Code"; Code[20])
        {
            Caption = 'Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010312; "PVS Hidden Group Line"; Boolean)
        {
            Caption = 'Hidden Group Line';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010315; "PVS Qty. Order"; Decimal)
        {
            Caption = 'Prod. Quantity';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010316; "PVS Unit"; Option)
        {
            Caption = 'Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,per 1000';
            OptionMembers = " ","per 1000";
        }
        field(6010317; "PVS Sales Price"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Prod. Price';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010328; "PVS Picked/Received"; Boolean)
        {
            Caption = 'Picked/Received';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010329; "PVS Nonstock Items"; Boolean)
        {
            Caption = 'Non Stock Item';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010330; "PVS Allow Partial Delivery"; Boolean)
        {
            Caption = 'Allow Partial Delivery';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010331; "PVS Shipment"; Option)
        {
            Caption = 'Shipment';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,wo/freight,Customer owned inventory,Customer Inventory';
            OptionMembers = " ","wo/freight","Customer owned inventory","Customer Inventory";
        }
        field(6010343; "PVS Intent Group"; Code[20])
        {
            Caption = 'Intent Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010344; "PVS Intent Group Product Code"; Code[20])
        {
            Caption = 'Intent Group Product Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010345; "PVS Intent Head No."; Integer)
        {
            Caption = 'Intent Head No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010346; "PVS Intent Product Entry"; Integer)
        {
            Caption = 'Intent Product Entry';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }



}

