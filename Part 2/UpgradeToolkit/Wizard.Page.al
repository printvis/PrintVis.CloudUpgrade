Page 99999 "PrintVis Cloud Upgrade Wizard"
{
    Caption = 'PrintVis Cloud Upgrade Wizard';
    PageType = NavigatePage;
    SourceTable = "PVS Cloud Upgrade Setup";
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(StartImage)
            {
                Editable = false;
                ShowCaption = false;
                Visible = TopBannerVisible;
                field("MediaResourcesStandard.""Media Reference"""; MediaResourcesStandard."Media Reference")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ShowCaption = false;
                }
            }
            group(FirstStep)
            {
                Visible = FirstStepVisible;
                group(Welcome)
                {
                    Caption = 'Welcome to the cloud upgrade!';
                    Visible = FirstStepVisible;
                    group(LetsGo)
                    {
                        InstructionalText = 'Let''s convert your data...';
                        ShowCaption = false;
                    }

                    field(CustomizationsStatus; Rec.Preparations)
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
            group(Preparations)
            {
                Visible = CustomizationsStepVisible;
                group(Preparation)
                {
                    InstructionalText = 'Prepare your code customizations for the upgrade...';
                    Visible = CustomizationsStepVisible;
                    part(StepsCustomizations; "PrintVis Cloud Upgrade Subpage")
                    {
                        Caption = 'Status';
                        Editable = false;
                        ApplicationArea = All;
                        SubPageView = where("Conversion Step" = const(" "));
                    }
                }
            }
            group(PrintVisSteps)
            {
                Visible = PrintVisStepVisible;
                group(PrintVisStep)
                {
                    InstructionalText = 'Enter the credentials for the account, which will be used for sending the invoice emails.';
                    Visible = PrintVisStepVisible;
                    part(StepsPrintVis; "PrintVis Cloud Upgrade Subpage")
                    {
                        Caption = 'Status';
                        Editable = false;
                        ApplicationArea = All;
                        SubPageView = where("Preparation Step" = const(" "));
                    }
                }
            }
            group(Control17)
            {
                Visible = FinalStepVisible;
                group("That's it!")
                {
                    Caption = 'That''s it!';
                    InstructionalText = 'Your PrintVis Cloud System is ready to be used.';
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
        MediaRepositoryDone, MediaRepositoryStandard : Record "Media Repository";
        MediaResourcesDone, MediaResourcesStandard : Record "Media Resources";
        PVSStyle, CustStyle : Text;
        TopBannerVisible, FirstStepVisible, CustomizationsStepVisible, FinalStepVisible, PrintVisStepVisible, FinishActionEnabled, BackActionEnabled, NextActionEnabled, SetupCompleted : Boolean;
        Step: Option Start,Customizations,PrintVis,Finish;

    local procedure EnableControls()
    begin
        if Rec.Preparations in [Rec.Preparations::"Setup Integration Runtime" .. Rec.Preparations::"Configure Table Mapping"] then
            CustStyle := 'Unfavorable'
        else
            CustStyle := 'Favorable';

        case Rec."Data Conversion" of
            Rec."Data Conversion"::Executed:
                PVSStyle := 'Favorable';
            Rec."Data Conversion"::Error:
                PVSStyle := 'Unfavorable';
            else
                PVSStyle := 'Ambiguous';
        end;
        LoadTopBanners;
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
        TopBannerVisible := true;
    end;

    local procedure ShowSettingsStep()
    begin
        TopBannerVisible := false;
        CustomizationsStepVisible := true;
        NextActionEnabled := true;
    end;

    local procedure ShowPrintVisStep()
    begin
        TopBannerVisible := false;
        PrintVisStepVisible := true;
        NextActionEnabled := true;
    end;

    local procedure ShowFinishStep()
    begin
        TopBannerVisible := true;
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
        if Rec.Preparations = Rec.Preparations::"Install Extensions" then
            exit(Ready);

        // if Rec.Preparations = Rec.Preparations::"Not Required" then
        //     exit(Vanilla);

        exit(NotReady);
    end;


    procedure PrintVisStatus(): Text
    var
        Ready: label 'PrintVis is prepared for migration!';
        HasError: label 'Your conversion has issues, please look at the details.';
        Imported: label 'Get ready to move your PrintVis to the cloud!';
    begin
        if Rec."Data Conversion" = Rec."Data Conversion"::Executed then
            exit(Ready);

        if Rec."Data Conversion" = Rec."Data Conversion"::Error then
            exit(HasError);

        exit(Imported);
    end;

    local procedure LoadTopBanners()
    var
        ClientTypeManagement: Codeunit "Client Type Management";
    begin
        if MediaRepositoryStandard.Get('WhatsNewWizard-Banner-First.png', Format(ClientTypeManagement.GetCurrentClientType)) and
           MediaRepositoryDone.Get('AssistedSetupDone-NoText-400px.png', Format(ClientTypeManagement.GetCurrentClientType))
        then
            if MediaResourcesStandard.Get(MediaRepositoryStandard."Media Resources Ref") and
               MediaResourcesDone.Get(MediaRepositoryDone."Media Resources Ref")
            then
                TopBannerVisible := MediaResourcesDone."Media Reference".HasValue;
    end;

}

