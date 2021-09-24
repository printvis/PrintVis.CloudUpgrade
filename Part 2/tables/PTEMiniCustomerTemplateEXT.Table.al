Table 81300 "PTE Mini Customer TemplateEXT"
{

    fields
    {
        field(1; "Key"; Integer)
        {
            Caption = 'Key';
            DataClassification = ToBeClassified;
        }
        field(2; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(6010050; "PVS Customer Group Code"; Code[20])
        {
            Caption = 'Customer Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010053; "PVS Industry Group"; Code[10])
        {
            Caption = 'Industry Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010054; "PVS ABC Code"; Code[10])
        {
            Caption = 'ABC Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010059; "PVS External No."; Code[20])
        {
            Caption = 'External No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010300; "PVS Discount Group"; Code[20])
        {
            Caption = 'Discount Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010301; "PVS Shipment From Customer"; Boolean)
        {
            Caption = 'Shipment from Customer';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010303; "PVS Allow Back Order"; Boolean)
        {
            Caption = 'Allow Partial Delivery';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010305; "PVS Digital Art Delivery Code"; Code[10])
        {
            Caption = 'Digital Art Delivery';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010310; "PVS Order Planner"; Code[50])
        {
            Caption = 'Order Planner';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010311; "PVS Estimator"; Code[50])
        {
            Caption = 'Estimator';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010313; "PVS No Freight"; Boolean)
        {
            Caption = 'No Freight';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "Key")
        {
            Clustered = true;
        }
    }



}

