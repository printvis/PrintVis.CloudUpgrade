Table 99998 "PVS Cloud Upgrade Setup"
{

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(10; Customizations; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Not Required",Required,"Code Generated",Executed;
        }
        field(20; PrintVis; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Imported,Executed,Error,Ready;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }


    procedure InitializeUpgrade()
    var
        UpgradeProgress: Record "PVS Upgrade Progress";
        PrintVisCloudUpgradeMgt: Codeunit "Upgrade - BaseApp";
    // UpgradeMoveData: Codeunit UnknownCodeunit104001;
    begin
        // if PrintVisCloudUpgradeMgt.CustomizationsExist then begin
        Customizations := Customizations::Required;

        UpgradeProgress."Customization Step" := UpgradeProgress."customization step"::"Execte Conversion";
        UpgradeProgress.Description := 'Execute customizations migration';
        UpgradeProgress.Status := UpgradeProgress.Status::Manual;
        UpgradeProgress.Insert;

        UpgradeProgress."Customization Step" := UpgradeProgress."customization step"::"Generate C/Side Code";
        UpgradeProgress.Description := 'Generate Code for Customization Migration';
        UpgradeProgress.Status := UpgradeProgress.Status::Required;
        UpgradeProgress.Insert;

        UpgradeProgress."Customization Step" := UpgradeProgress."customization step"::"Import C/Side Code";
        UpgradeProgress.Description := 'Import generated code into C/Side';
        UpgradeProgress.Status := UpgradeProgress.Status::Required;
        UpgradeProgress.Insert;

        UpgradeProgress."Customization Step" := UpgradeProgress."customization step"::"Generate AL Code";
        UpgradeProgress.Description := 'Generate Intermediate PTE Extension';
        UpgradeProgress.Status := UpgradeProgress.Status::Manual;
        UpgradeProgress.Insert;

        UpgradeProgress."Customization Step" := UpgradeProgress."customization step"::"Use ForNAV to make PTE";
        UpgradeProgress.Description := 'Use ForNAV converter to generate PTE Extension';
        UpgradeProgress.Status := UpgradeProgress.Status::Manual;
        UpgradeProgress.Insert;
        // end;

        UpgradeProgress."Customization Step" := UpgradeProgress."customization step"::" ";
        UpgradeProgress."PrintVis Step" := UpgradeProgress."printvis step"::"Import Conversion Tool";
        UpgradeProgress.Description := 'Import Upgrade Toolkit';
        UpgradeProgress.Status := UpgradeProgress.Status::Executed;
        UpgradeProgress.Insert;

        UpgradeProgress."Customization Step" := UpgradeProgress."customization step"::" ";
        UpgradeProgress."PrintVis Step" := UpgradeProgress."printvis step"::"Execute Conversion Tool";
        UpgradeProgress.Description := 'Execute Conversion Tool';
        UpgradeProgress.Status := UpgradeProgress.Status::Required;
        UpgradeProgress.Insert;

        UpgradeProgress."Customization Step" := UpgradeProgress."customization step"::" ";
        UpgradeProgress."PrintVis Step" := UpgradeProgress."printvis step"::"Fix Errors";
        UpgradeProgress.Description := 'Fix migration erros';
        UpgradeProgress.Status := UpgradeProgress.Status::Manual;
        UpgradeProgress.Insert;

        UpgradeProgress."Customization Step" := UpgradeProgress."customization step"::" ";
        UpgradeProgress."PrintVis Step" := UpgradeProgress."printvis step"::"Renamed Fields";
        UpgradeProgress.Description := 'Import Renamed Fields';
        UpgradeProgress.Status := UpgradeProgress.Status::Manual;
        UpgradeProgress.Insert;

        // UpgradeMoveData.InitializeUpgradeStatus;
    end;
}

