Table 80015 "PTE G/L AccountEXT"
{

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6010309; "PVS Order Number Posting"; Option)
        {
            Caption = 'Order Number Posting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Mandatory code,Same code,No code';
            OptionMembers = " ","Mandatory code","Same code","No code";
        }
        field(6010310; "PVS Department Posting"; Option)
        {
            Caption = 'Department Posting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Mandatory code,Same code,No code';
            OptionMembers = " ","Mandatory code","Same code","No code";
        }
        field(6010311; "PVS Cost Center Posting"; Option)
        {
            Caption = 'Cost Center Posting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Mandatory code,Same code,No code';
            OptionMembers = " ","Mandatory code","Same code","No code";
        }
        field(6010312; "PVS Unit of Measure Posting"; Option)
        {
            Caption = 'Unit of Measure Posting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Mandatory code,Same code,No code';
            OptionMembers = " ","Mandatory code","Same code","No code";
        }
        field(6010313; "PVS Default Unit of Measure"; Code[20])
        {
            Caption = 'Default Unit of Measure';
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

