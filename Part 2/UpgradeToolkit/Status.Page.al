Page 99998 "PrintVis Cloud Upgrade Details"
{
    Editable = false;
    PageType = List;
    SourceTable = "PTE Upgrade Table Status";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = Basic;
                }
                field("Table No."; Rec."Table No.")
                {
                    ApplicationArea = Basic;
                }
                field("Table Name"; Rec."Table Name")
                {
                    ApplicationArea = Basic;
                }
                field(Company; Rec.Company)
                {
                    ApplicationArea = Basic;
                }
                field("Last Error"; Rec."Last Error")
                {
                    ApplicationArea = Basic;
                }
                field(Skip; Rec.Skip)
                {
                    ApplicationArea = Basic;
                }
                field(Completed; Rec.Completed)
                {
                    ApplicationArea = Basic;
                }
                field("Cloud Completed"; Rec."Cloud Completed")
                {
                    ApplicationArea = Basic;
                }
                field("Records in Table"; Rec."Records in Table")
                {
                    ApplicationArea = Basic;
                }
                field("Records in Table Extension"; Rec."Records in Table Extension")
                {
                    ApplicationArea = Basic;
                }
            }
        }
    }

    actions
    {
    }
}

