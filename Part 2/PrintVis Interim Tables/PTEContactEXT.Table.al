Table 99950 "PTE ContactEXT"
{

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(6010101; "PVS Creation Date"; Date)
        {
            Caption = 'Date of Creation';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010102; "PVS Created By User"; Code[50])
        {
            Caption = 'Created by User';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010103; "PVS Last User Modified"; Code[50])
        {
            Caption = 'Modified by';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
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
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }



}

