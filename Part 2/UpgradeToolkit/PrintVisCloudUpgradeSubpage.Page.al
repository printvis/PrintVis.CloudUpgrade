Page 99997 "PrintVis Cloud Upgrade Subpage"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = ListPart;
    ShowFilter = false;
    SourceTable = "PVS Upgrade Progress";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Description; Rec.Description)
                {
                    ApplicationArea = Basic;
                    Editable = false;
                    Style = StandardAccent;
                    StyleExpr = true;

                    trigger OnDrillDown()
                    begin
                        Rec.ExecuteStep;
                    end;
                }
                field(Status; Rec.Status)
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

