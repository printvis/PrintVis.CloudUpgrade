Table 99998 "PVS Cloud Upgrade Setup"
{

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(10; Preparations; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Import Toolkit","Setup Integration Runtime","Configure Table Mapping","Install Extensions";
        }
        field(20; "Data Conversion"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Configured,Executed,Error,Ready;
        }
    }

    keys { key(Key1; "Primary Key") { Clustered = true; } }

    procedure InitializeUpgrade()
    var
        UpgradeProgress: Record "PVS Upgrade Progress";
        CloudUpgradeMgt: Codeunit "PTE Cloud Upgrade Mgt.";
    begin
        Preparations := Preparations::"Setup Integration Runtime";

        UpgradeProgress."Preparation Step" := UpgradeProgress."Preparation Step"::"Import Toolkit";
        UpgradeProgress.Description := 'Import Cloud Migration Toolkit';
        UpgradeProgress.Status := UpgradeProgress.Status::Executed;
        UpgradeProgress.Insert;

        UpgradeProgress."Preparation Step" := UpgradeProgress."Preparation Step"::"Setup Integration Runtime";
        UpgradeProgress.Description := 'Connect Business Central to On Premises';
        UpgradeProgress.Status := UpgradeProgress.Status::Manual;
        UpgradeProgress.Insert;

        UpgradeProgress."Preparation Step" := UpgradeProgress."Preparation Step"::"Install Extensions";
        if CloudUpgradeMgt.CustomizationsExist() then
            UpgradeProgress.Description := 'Install Per Tenant Extension'
        else
            UpgradeProgress.Description := 'You have not modified the system';

        UpgradeProgress.Status := UpgradeProgress.Status::Required;
        UpgradeProgress.Insert;

        UpgradeProgress."Preparation Step" := UpgradeProgress."Preparation Step"::"Configure Table Mapping";
        UpgradeProgress.Description := 'Configure Table Mapping';
        UpgradeProgress.Status := UpgradeProgress.Status::Required;
        UpgradeProgress.Insert;

        UpgradeProgress."Preparation Step" := UpgradeProgress."Preparation Step"::" ";
        UpgradeProgress."Conversion Step" := UpgradeProgress."Conversion Step"::Configured;
        UpgradeProgress.Description := 'Configure Data Migration';
        UpgradeProgress.Status := UpgradeProgress.Status::Executed;
        UpgradeProgress.Insert;

        UpgradeProgress."Preparation Step" := UpgradeProgress."Preparation Step"::" ";
        UpgradeProgress."Conversion Step" := UpgradeProgress."Conversion Step"::Executed;
        UpgradeProgress.Description := 'Data Migration is Executed';
        UpgradeProgress.Status := UpgradeProgress.Status::Required;
        UpgradeProgress.Insert;

        UpgradeProgress."Preparation Step" := UpgradeProgress."Preparation Step"::" ";
        UpgradeProgress."Conversion Step" := UpgradeProgress."Conversion Step"::Error;
        UpgradeProgress.Description := 'Fix migration erros';
        UpgradeProgress.Status := UpgradeProgress.Status::Manual;
        UpgradeProgress.Insert;

        UpgradeProgress."Preparation Step" := UpgradeProgress."Preparation Step"::" ";
        UpgradeProgress."Conversion Step" := UpgradeProgress."Conversion Step"::RunUpgrade;
        UpgradeProgress.Description := 'Run Cloud Upgrade Steps (Per Company)';
        UpgradeProgress.Status := UpgradeProgress.Status::Required;
        UpgradeProgress.Insert;

        UpgradeProgress."Preparation Step" := UpgradeProgress."Preparation Step"::" ";
        UpgradeProgress."Conversion Step" := UpgradeProgress."Conversion Step"::Ready;
        UpgradeProgress.Description := 'Ready';
        UpgradeProgress.Status := UpgradeProgress.Status::Manual;
        UpgradeProgress.Insert;
    end;
}

