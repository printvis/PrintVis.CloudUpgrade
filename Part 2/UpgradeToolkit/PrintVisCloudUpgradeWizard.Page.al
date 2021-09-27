Page 99997 "PrintVis Cloud Upgrade Wizard"
{
    Caption = 'PrintVis Cloud Upgrade Wizard';
    PageType = NavigatePage;
    SourceTable = "PVS Cloud Upgrade Setup";

    layout
    {
        area(content)
        {
            group(FirstStep)
            {
                Visible = FirstStepVisible;
                group(Welcome)
                {
                    Caption = 'Welcome to the cloud upgrade!';
                    Visible = FirstStepVisible;
                    group(LetsGo)
                    {
                        InstructionalText = 'Let''s get your data to the cloud...';
                        ShowCaption = false;
                    }
                }
                group(Progress)
                {
                    InstructionalText = 'Upgrade progress...';
                    ShowCaption = false;
                    Visible = FirstStepVisible;
                    field(CustomizationsStatus; Rec.Customizations)
                    {
                        ApplicationArea = Basic;
                        Caption = 'Customizations';
                        DrillDown = true;
                        Editable = false;
                        StyleExpr = CustStyle;
                        Visible = FirstStepVisible;

                        trigger OnDrillDown()
                        begin
                            NextStep(false);
                        end;
                    }
                    field(PrintVis; PrintVisStatus)
                    {
                        ApplicationArea = Basic;
                        Caption = 'PrintVis';
                        Editable = false;
                        StyleExpr = PVSStyle;
                        Visible = FirstStepVisible;

                        trigger OnDrillDown()
                        begin
                            NextStep(false);
                        end;
                    }
                }
            }
            group(Control12)
            {
                Visible = CustomizationsStepVisible;
                group(Control27)
                {
                    InstructionalText = 'Prepare your code customizations for the upgrade...';
                    Visible = CustomizationsStepVisible;
                    part(StepsCustomizations; "PrintVis Cloud Upgrade Subpage")
                    {
                        Caption = 'Status';
                        Editable = false;
                        SubPageView = where("PrintVis Step" = const(" "));
                    }
                }
            }
            group(Control100000018)
            {
                Visible = PrintVisStepVisible;
                group(Control100000012)
                {
                    InstructionalText = 'Enter the credentials for the account, which will be used for sending the invoice emails.';
                    Visible = PrintVisStepVisible;
                    part(StepsPrintVis; "PrintVis Cloud Upgrade Subpage")
                    {
                        Caption = 'Status';
                        Editable = false;
                        SubPageView = where("Customization Step" = const(" "));
                    }
                }
            }
            group(Control17)
            {
                Visible = FinalStepVisible;
                group("That's it!")
                {
                    Caption = 'That''s it!';
                    InstructionalText = 'If you want to verify that the specified email setup works, click on Send test email.';
                    field(OpenCloud; true)
                    {
                        ApplicationArea = Basic, Suite, Invoicing;
                        Editable = false;
                        ShowCaption = false;
                        Style = StandardAccent;
                        StyleExpr = true;

                        trigger OnDrillDown()
                        begin
                            Hyperlink('https://businesscentral.dynamics.com');
                        end;
                    }
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Status)
            {
                ApplicationArea = Basic;
                Caption = 'Detailed Status';
                Image = Status;
                InFooterBar = true;
                RunObject = Page "PrintVis Cloud Upgrade Details";
            }
            action(ActionBack)
            {
                ApplicationArea = Basic, Suite, Invoicing;
                Caption = 'Back';
                Enabled = BackActionEnabled;
                Image = PreviousRecord;
                InFooterBar = true;

                trigger OnAction()
                begin
                    NextStep(true);
                end;
            }
            action(ActionNext)
            {
                ApplicationArea = Basic, Suite, Invoicing;
                Caption = 'Next';
                Enabled = NextActionEnabled;
                Image = NextRecord;
                InFooterBar = true;

                trigger OnAction()
                begin
                    NextStep(false);
                end;
            }
            action(ActionFinish)
            {
                ApplicationArea = Basic, Suite, Invoicing;
                Caption = 'Finish';
                Enabled = FinishActionEnabled;
                Image = Approve;
                InFooterBar = true;

                trigger OnAction()
                begin
                    FinishAction;
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get then begin
            Rec.Init;
            Rec.InitializeUpgrade;
            Rec.Insert;
        end;

        Step := Step::Start;
        EnableControls;
    end;

    trigger OnQueryClosePage(CloseAction: action): Boolean
    var
        NotSetUpQst: label 'Upgrade has not been finished.\\Are you sure you want to exit?';
    begin
        if CloseAction = Action::OK then
            if not SetupCompleted then
                if not Confirm(NotSetUpQst, false) then
                    Error('');
    end;

    var
        CustStyle: Text;
        PVSStyle: Text;
        FirstStepVisible: Boolean;
        CustomizationsStepVisible: Boolean;
        PrintVisStepVisible: Boolean;
        FinalStepVisible: Boolean;
        FinishActionEnabled: Boolean;
        BackActionEnabled: Boolean;
        NextActionEnabled: Boolean;
        SetupCompleted: Boolean;
        Step: Option Start,Customizations,PrintVis,Finish;

    local procedure EnableControls()
    begin
        if Rec.Customizations in [Rec.Customizations::Required .. Rec.Customizations::"Code Generated"] then
            CustStyle := 'Unfavorable'
        else
            CustStyle := 'Favorable';

        case Rec.PrintVis of
            Rec.Printvis::Executed:
                PVSStyle := 'Favorable';
            Rec.Printvis::Error:
                PVSStyle := 'Unfavorable';
            else
                PVSStyle := 'Ambiguous';
        end;

        ResetControls;

        case Step of
            Step::Start:
                ShowStartStep;
            Step::Customizations:
                ShowSettingsStep;
            Step::PrintVis:
                ShowPrintVisStep;
            Step::Finish:
                ShowFinishStep;
        end;
    end;

    local procedure StoreSetup()
    var
        CloudUpgradeSetup: Record "PVS Cloud Upgrade Setup";
    begin
        if not CloudUpgradeSetup.Get then begin
            CloudUpgradeSetup.Init;
            CloudUpgradeSetup.Insert;
        end;

        CloudUpgradeSetup.TransferFields(Rec, false);
        CloudUpgradeSetup.Modify(true);
        Commit;
    end;

    local procedure FinishAction()
    begin
        StoreSetup;
        SetupCompleted := true;
        CurrPage.Close;
    end;

    local procedure NextStep(Backwards: Boolean)
    begin
        if Backwards then
            Step := Step - 1
        else
            Step := Step + 1;

        EnableControls;
    end;

    local procedure ShowStartStep()
    begin
        FirstStepVisible := true;
        FinishActionEnabled := false;
        BackActionEnabled := false;
    end;

    local procedure ShowSettingsStep()
    begin
        CustomizationsStepVisible := true;
        NextActionEnabled := true;
    end;

    local procedure ShowPrintVisStep()
    begin
        PrintVisStepVisible := true;
        NextActionEnabled := true;
    end;

    local procedure ShowFinishStep()
    begin
        FinalStepVisible := true;
        NextActionEnabled := false;
        FinishActionEnabled := true;
    end;

    local procedure ResetControls()
    begin
        FinishActionEnabled := false;
        BackActionEnabled := true;
        NextActionEnabled := true;

        FirstStepVisible := false;
        CustomizationsStepVisible := false;
        PrintVisStepVisible := false;
        FinalStepVisible := false;
    end;


    procedure GetCustomizationsStatus(): Text
    var
        Ready: label 'Your code customizations are ready to go!';
        Vanilla: label 'It looks like you are using an unmodified version of PrintVis. You can skip this step.';
        NotReady: label 'The modifications you made to PrintVis are not ready to migrate, click on the next button to start the process...';
    begin
        if Rec.Customizations = Rec.Customizations::Executed then
            exit(Ready);

        if Rec.Customizations = Rec.Customizations::"Not Required" then
            exit(Vanilla);

        exit(NotReady);
    end;


    procedure PrintVisStatus(): Text
    var
        Ready: label 'PrintVis is prepared for migration!';
        HasError: label 'Your conversion has issues, please look at the details.';
        Imported: label 'Get ready to move your PrintVis to the cloud!';
    begin
        if Rec.PrintVis = Rec.Printvis::Executed then
            exit(Ready);

        if Rec.PrintVis = Rec.Printvis::Error then
            exit(HasError);

        exit(Imported);
    end;


    procedure CustomizationsStyle(): Text
    var
        Ready: label 'Your code customizations are ready to go!';
        Vanilla: label 'It looks like you are using an unmodified version of PrintVis. You can skip this step.';
        NotReady: label 'The modifications you made to PrintVis are not ready to migrate, click on the next button to start the process...';
    begin
    end;
}

