Table 99990 "PTE User Time RegisterEXT"
{

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Date; Date)
        {
            Caption = 'Date';
        }
        field(6010050; "PVS Item List Days Filter"; Integer)
        {
            Caption = 'Item List Days Filter';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010114; "PVS Case Mgt. Matrix"; Option)
        {
            Caption = 'Timeline';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Nothing,Status Codes,Milestones,Planning';
            OptionMembers = Nothing,"Status Codes",Milestones,Planning;
        }
        field(6010394; "PVS Logout Date"; Date)
        {
            Caption = 'Logout Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010395; "PVS Logout Time"; Time)
        {
            Caption = 'Logout Time';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010396; "PVS Login Date"; Date)
        {
            Caption = 'Login Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010397; "PVS Login Time"; Time)
        {
            Caption = 'Login Time';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010398; "PVS Logged On"; Boolean)
        {
            Caption = 'Logged on';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010400; "PVS Login Cost Center"; Code[20])
        {
            Caption = 'Login Cost Center';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010401; "PVS Login Order ID"; Integer)
        {
            Caption = 'Login OrderID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010408; "PVS Login Plan ID"; Integer)
        {
            Caption = 'Login Job';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010409; "PVS Last Waste Code"; Code[10])
        {
            Caption = 'Last Waste Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010410; "PVS Login Plan Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010500; "PVS Prod. Plan Sorting"; Option)
        {
            Caption = 'Sorting key';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Optional,Priority,Manning,ID,StartDate,Order No.';
            OptionMembers = Optional,Priority,Manning,ID,StartDate,OrderNo;
        }
        field(6010501; "PVS Prod. Plan Department"; Code[20])
        {
            Caption = 'Department Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010502; "PVS Prod. Plan Capacity Group"; Code[20])
        {
            Caption = 'Capacity Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010503; "PVS Prod. Plan Capacity Code"; Code[20])
        {
            Caption = 'Capacity Unit Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010504; "PVS Prod. Plan Manning Code"; Code[50])
        {
            Caption = 'Capacity Resource Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010505; "PVS Prod. Plan From Date"; Date)
        {
            Caption = 'From Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010506; "PVS Prod. Plan To Date"; Date)
        {
            Caption = 'To Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }




}

