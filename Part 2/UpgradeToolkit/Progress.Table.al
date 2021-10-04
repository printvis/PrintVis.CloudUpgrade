Table 99999 "PVS Upgrade Progress"
{

    fields
    {
        field(1; "Preparation Step"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Import Toolkit","Setup Integration Runtime","Install Extensions","Configure Table Mapping";
        }
        field(2; "Conversion Step"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Configured,Executed,Error,MigrateInterimExtensions,RunUpgrade,Ready;
        }
        field(3; Description; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(4; Status; Option)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            OptionMembers = " ",Manual,Required,Executed;
        }
    }

    keys { key(Key1; "Preparation Step", "Conversion Step") { Clustered = true; } }


    procedure ExecuteStep()
    var
        CloudUpgradeSetup: Record "PVS Cloud Upgrade Setup";
        CloudUpgradeMgt: Codeunit "PTE Cloud Upgrade Mgt.";
    begin
        case "Preparation Step" of
            "Preparation step"::"Import Toolkit":
                Message('The toolkit is installed succesfully');
            "Preparation step"::"Setup Integration Runtime":
                Page.Run(4000);
            "Preparation step"::"Install Extensions":
                ResetPerTenantExtensionStatus;
            "Preparation step"::"Configure Table Mapping":
                Page.Run(4003);
        end;

        case "Conversion Step" of
            "Conversion step"::Configured:
                begin
                    TestIfRealPerTenantExtensionExists;
                    TestMapping;
                end;
            "Conversion Step"::Executed:
                Page.Run(4003);
            "Conversion Step"::MigrateInterimExtensions:
                MigrateInterimExtensions;
            "Conversion step"::Error:
                Page.Run(Page::"PrintVis Cloud Upgrade Details");
            "Conversion Step"::RunUpgrade:
                RunUpgrade;
            "Conversion Step"::Ready:
                Message('Congratulations');
        end;

        Status := Status::Executed;
        Modify;
    end;

    procedure GetStepStyle(): Text
    var
        CloudUpgradeMgt: Codeunit "PTE Cloud Upgrade Mgt.";
    begin
        case "Preparation Step" of
            "Preparation Step"::"Install Extensions":
                if not CloudUpgradeMgt.CustomizationsExist() then
                    exit('Ambiguous');
        end;
        exit('StandardAccent');
    end;

    procedure ResetPerTenantExtensionStatus()
    var
        CloudUpgradeMgt: Codeunit "PTE Cloud Upgrade Mgt.";
    begin
        if CloudUpgradeMgt.CustomizationsExist() then begin
            Description := 'Install Per Tenant Extension';
            TestIfRealPerTenantExtensionExists;
        end else
            Description := 'You have not modified the system';
        if xRec.Description <> Rec.Description then
            Message('Thanks for checking again... we''ve updated the status...');
    end;

    local procedure MigrateInterimExtensions()
    var
        CloudUpgradeMgt: Codeunit "PTE Cloud Upgrade Mgt.";
    begin
        CloudUpgradeMgt.MigratePerTenantExtension();
        CloudUpgradeMgt.MovePrintVisData();
    end;

    local procedure TestIfRealPerTenantExtensionExists()
    var
        AllObj: Record AllObj;
        Fld: Record Field;
        FldExt: Record Field;
        Info: ModuleInfo;
        BaseTableId: Integer;
    begin
        NavApp.GetCurrentModuleInfo(Info);
        AllObj.SetFilter("Object Name", 'PTE Interim*');
        AllObj.SetRange("Object Type", AllObj."Object Type"::Table);
        AllObj.SetRange("Object ID", 50000, 99949);
        if AllObj.FindSet() then
            repeat
                Evaluate(BaseTableId, CopyStr(AllObj."Object Name", 12, 99));
                Fld.SetRange(TableNo, AllObj."Object ID");
                Fld.SetRange("No.", 50000, 99999);
                if Fld.FindSet() then
                    repeat
                        if not FldExt.Get(BaseTableId, Fld."No.") then
                            Error('Table Extension not found for table %1', BaseTableId);
                    until Fld.Next() = 0;
            until AllObj.Next() = 0;
    end;

    local procedure RunUpgrade()
    var
        UpgradeLogic: Codeunit "PTE Upgrade Logic";
    begin
        UpgradeLogic.CapUnitRoundingUpDown();

        UpgradeLogic.MergePointerTables();
        UpgradeLogic.MovedCustomerTemplateIfNotExist();
        UpgradeLogic.MovedItemTemplateIfNotExist();
        UpgradeLogic.MoveCaseMgtMatrix();
        UpgradeLogic.MovePlanningBoardPermissionDo();
        ConvertCombinedShipments();
        UpgradeLogic.UpgradeGrossQuotedPricePVSJob();
    end;

    local procedure TestMapping()
    var
        MigrationTableMapping: RecordRef;
        FldRef: FieldRef;
    begin
        MigrationTableMapping.Open(4009);
        FldRef := MigrationTableMapping.Field(8); // Extension Name

        FldRef.SetRange('PrintVis Cloud Upgrade Toolkit');
        MigrationTableMapping.FindFirst();

        FldRef.SetRange('PrintVis');
        MigrationTableMapping.FindFirst();
    end;

    local procedure ConvertCombinedShipments()
    var
        Shpmnt: Record "PVS Job Shipment";
    begin
        Shpmnt.SetFilter("Combined Shipment No.", '%1', '');
        if Shpmnt.FindSet(true) then
            repeat
                Shpmnt.GetCombinedShipmentNo();
                Shpmnt.Modify()
            until Shpmnt.Next() = 0;
    end;

}

