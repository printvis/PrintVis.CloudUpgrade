Table 99988 "PTE Tables Status"
{
    DataPerCompany = false;

    fields
    {
        field(1; TableNo; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; RecordsTable; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; RecordsEXTTable; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Completed; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(5; LastError; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(6; Company; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(7; TableName; Text[250])
        {
            CalcFormula = lookup(AllObjWithCaption."Object Name" where("Object Type" = const(Table),
                                                                        "Object ID" = field(TableNo)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; CompletedCloud; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; TableNo, Company)
        {
            Clustered = true;
        }
    }


}

