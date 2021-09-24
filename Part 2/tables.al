Table 60000 "CloudLift 18"
{
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50000; "My Custom Little Field"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(key1; "No.") { Clustered = true; }
    }
}
Table 60001 "CloudLift 6010312"
{
    fields
    {
        field(1; "ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50000; "My Custom Little Field"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(key1; "ID") { Clustered = true; }
    }
}
