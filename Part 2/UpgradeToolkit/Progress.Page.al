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
                    StyleExpr = StepStyle;

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

    var
        StepStyle: Text;

    trigger OnAfterGetRecord()
    begin
        StepStyle := Rec.GetStepStyle;
    end;
}

