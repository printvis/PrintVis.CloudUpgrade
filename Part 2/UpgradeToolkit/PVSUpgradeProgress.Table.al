Table 99999 "PVS Upgrade Progress"
{

    fields
    {
        field(1; "Customization Step"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Generate C/Side Code","Import C/Side Code","Execte Conversion","Generate AL Code",,,,"Use ForNAV to make PTE";
        }
        field(2; "PrintVis Step"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Import Conversion Tool","Execute Conversion Tool","Fix Errors","Renamed Fields";
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

    keys
    {
        key(Key1; "Customization Step", "PrintVis Step")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }


    procedure ExecuteStep()
    var
        CloudUpgradeSetup: Record "PVS Cloud Upgrade Setup";
        CloudUpgradeMgt: Codeunit "Upgrade - BaseApp";
    // UpgradeMoveData: Codeunit UnknownCodeunit104001;
    begin
        // case "Customization Step" of
        //     "customization step"::"Generate C/Side Code":
        //         CloudUpgradeMgt.GenerateCode;
        //     "customization step"::"Import C/Side Code":
        //         Hyperlink('https://www.gitub.com/PrintVis/'); // To Do... add link to MD file with documentation
        //     "customization step"::"Execte Conversion":
        //         UpgradeMoveData.MoveCustomizedData;
        //     "customization step"::"Generate AL Code":
        //         CloudUpgradeMgt.GenerateALCode;
        //     "customization step"::"Use ForNAV to make PTE":
        //         Hyperlink('https://www.fornav.com');
        // end;

        // case "PrintVis Step" of
        //     "printvis step"::"Execute Conversion Tool":
        //         UpgradeMoveData.MovePrintVisData;
        //     "printvis step"::"Fix Errors":
        //         Page.Run(Page::"PrintVis Cloud Upgrade Details");
        // end;

        Status := Status::Executed;
        Modify;
    end;
}

