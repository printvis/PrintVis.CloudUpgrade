Table 99951 "PTE CustomerEXT"
{

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
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
        field(6010056; "PVS Contact No."; Code[20])
        {
            Caption = 'Contact Contact No.';
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
        field(6010302; "PVS Modification Time"; Time)
        {
            Caption = 'Edited on';
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
        field(6010340; "PVS Optional Field 1"; Text[50])
        {
            Caption = 'Optional Field 1';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010341; "PVS Optional Field 2"; Text[50])
        {
            CaptionClass = 'PVS,FIELD18-2';
            Caption = 'Optional Field 2';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010342; "PVS Optional Field 3"; Text[50])
        {
            CaptionClass = 'PVS,FIELD18-3';
            Caption = 'Optional Field 3';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010343; "PVS Optional Field 4"; Text[50])
        {
            CaptionClass = 'PVS,FIELD18-4';
            Caption = 'Optional Field 4';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010344; "PVS Optional Field 5"; Text[50])
        {
            CaptionClass = 'PVS,FIELD18-5';
            Caption = 'Optional Field 5';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010345; "PVS Optional Field 6"; Text[50])
        {
            CaptionClass = 'PVS,FIELD18-6';
            Caption = 'Optional Field 6';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010346; "PVS Optional Field 7"; Text[50])
        {
            CaptionClass = 'PVS,FIELD18-7';
            Caption = 'Optional Field 7';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010347; "PVS Optional Field 8"; Text[50])
        {
            CaptionClass = 'PVS,FIELD18-8';
            Caption = 'Optional Field 8';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010348; "PVS Optional Field 9"; Text[50])
        {
            CaptionClass = 'PVS,FIELD18-9';
            Caption = 'Optional Field 9';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(6010349; "PVS Optional Field 10"; Text[50])
        {
            CaptionClass = 'PVS,FIELD18-10';
            Caption = 'Optional Field 10';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }




}

