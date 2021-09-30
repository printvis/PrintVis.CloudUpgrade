Table 99997 "PTE Upgrade Table Status"
{
    DataPerCompany = false;

    fields
    {
        field(1; "Table No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; Type; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Customization,PrintVis;
        }
        field(6; Company; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Records in Table"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Records in Table Extension"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(18; Skip; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(20; Completed; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Last Error"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(30; "Table Name"; Text[250])
        {
            CalcFormula = lookup(AllObjWithCaption."Object Name" where("Object Type" = const(Table),
                                                                        "Object ID" = field("Table No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "Interim Object No."; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Table No.", Type, Company)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

