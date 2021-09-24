page 80001 "PTE Tables Status"
{

    ApplicationArea = All;
    Caption = 'PTE Tables Status';
    PageType = List;
    SourceTable = "PTE Tables Status";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(TableNo; Rec.TableNo)
                {
                    ApplicationArea = All;
                }
                field(TableName; Rec.TableName)
                {
                    ApplicationArea = All;
                }
                field(Company; Rec.Company)
                {
                    ApplicationArea = All;
                }
                field(RecordsEXTTable; Rec.RecordsEXTTable)
                {
                    ApplicationArea = All;
                }
                field(RecordsTable; Rec.RecordsTable)
                {
                    ApplicationArea = All;
                }
                field(Completed; Rec.CompletedCloud)
                {
                    ApplicationArea = All;
                }
                field(LastError; Rec.LastError)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Process)
            {
                ApplicationArea = All;
                Image = Process;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    DoneTxt: Label 'Done!';
                begin
                    Codeunit.Run(80001);
                    Message(DoneTxt);
                end;
            }
        }
    }

}
