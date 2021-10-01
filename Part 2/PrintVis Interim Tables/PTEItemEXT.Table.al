Table 99959 "PTE ItemEXT"
{

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(6010050; "PVS Item Type"; Option)
        {
            Caption = 'Item Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
            OptionCaption = ' ,Paper,Plates,Film,Ink,Die,Repro,External Finishing,Finished Good,Block,Label,Envelope,Board';
            OptionMembers = " ",Paper,Plates,Film,Ink,Die,Repro,"External Finishing","Finished Good",Block,Label,Envelope,Board;
        }
        field(6010051; "PVS Format 1"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            BlankZero = true;
            Caption = 'Format 1';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010052; "PVS Format 2"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            BlankZero = true;
            Caption = 'Format 2';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010053; "PVS Item Quality Code"; Code[20])
        {
            Caption = 'Quality Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010054; "PVS Weight"; Decimal)
        {
            Caption = 'Weight';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010056; "PVS Ink Coverage Area/Weight"; Decimal)
        {
            Caption = 'Ink Coverage sqft/lbs';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Description = 'PRINTVIS';
        }
        field(6010057; "PVS Price Unit"; Option)
        {
            Caption = 'Price Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Pcs.,1000 pcs.,lbs.,sq ft.,ft,Gallon,100 lbs,1000 lbs,1000 ft,,MSI,MSF';
            OptionMembers = "Pcs.","1000 pcs.",Weight,"Area",Length,Volume,"100 Weight","1000 Weight","1000 Length",,MSI,MSF;
        }
        field(6010058; "PVS Price List Code"; Code[20])
        {
            Caption = 'Price List Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010059; "PVS Direct Cost PrintVis"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Cost PrintVis';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010060; "PVS Add. Pct."; Decimal)
        {
            Caption = 'Additional%';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010061; "PVS Paper Type"; Option)
        {
            Caption = 'Paper Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Sheet,Web';
            OptionMembers = Sheet,Web;
        }
        field(6010062; "PVS Inventory Unit"; Option)
        {
            Caption = 'Inventory Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Pcs.,,lbs,sq ft,ft,Gallon';
            OptionMembers = "Pcs.",,Weight,"Area",Lenght,Volume;
        }
        field(6010063; "PVS Special Price"; Boolean)
        {
            Caption = 'Special Price';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010064; "PVS Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Price PrintVis';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010065; "PVS Transfer Cost"; Boolean)
        {
            Caption = 'Transfer Cost';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010066; "PVS Transfer Surcharge Pct."; Boolean)
        {
            Caption = 'Transfer Surcharge%';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010067; "PVS Transfer Price"; Boolean)
        {
            Caption = 'Transfer Price';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010068; "PVS Default Coverage Pct."; Decimal)
        {
            Caption = 'Default Coverage %';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010069; "PVS Reel Length"; Decimal)
        {
            Caption = 'Reel Length';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010070; "PVS Formula Code"; Integer)
        {
            BlankZero = true;
            Caption = 'Formula Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            TableRelation = "PVS Calculation Formula".Code;
        }
        field(6010071; "PVS Incl. In Add. Calc."; Boolean)
        {
            Caption = 'Apply to additional quantity';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010072; "PVS Incl. In Reprinting"; Boolean)
        {
            Caption = 'Included in Reprinting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010073; "PVS Imposition Code"; Code[20])
        {
            Caption = 'Imposition Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010074; "PVS Thickness"; Decimal)
        {
            Caption = 'Thickness';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010075; "PVS Picture Name"; Text[250])
        {
            Caption = 'Picture Name';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010077; "PVS Internet"; Boolean)
        {
            Caption = 'Internet';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010078; "PVS Internet Item Group 1"; Integer)
        {
            BlankZero = true;
            Caption = 'Internet Item Group1';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010079; "PVS Internet Item Group 2"; Integer)
        {
            BlankZero = true;
            Caption = 'Internet Item Group 2';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010080; "PVS Internet Item Group 3"; Integer)
        {
            BlankZero = true;
            Caption = 'Internet Item Group 3';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010081; "PVS Internet Item Group 4"; Integer)
        {
            BlankZero = true;
            Caption = 'Internet Item Group 4';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010082; "PVS Unique For Customer Group"; Code[20])
        {
            Caption = 'Unique for Customer Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010083; "PVS Unique For Customer No."; Code[20])
        {
            Caption = 'Unique for Customer Number';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010092; "PVS Chemical Description"; Text[50])
        {
            Caption = 'Chemical Name';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010093; "PVS Environm. Unit of Measure"; Option)
        {
            Caption = 'ECO Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,lbs.,Gallon,Unit,Kilowatt,Cans,Bottles,Boxes,Containers';
            OptionMembers = " ",Weight,Volume,Unit,Kilowatt,Cans,Bottles,Boxes,Containers;
        }
        field(6010094; "PVS Weight per Inventory Unit"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            Caption = 'Weight per Inventory Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010096; "PVS Toxic Factor"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            Caption = 'Toxic Factor';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010103; "PVS Color Code"; Code[50])
        {
            Caption = 'Color Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010104; "PVS Resource Group Code"; Code[20])
        {
            Caption = 'Resource Group Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010105; "PVS Paper No."; Code[20])
        {
            Caption = 'Paper No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010106; "PVS Finishing"; Code[20])
        {
            Caption = 'Finishing';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010107; "PVS Unwind"; Option)
        {
            Caption = 'Unwind';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Inside Top First,Outside Top First,Inside Bottom First,Outside Bottom First,Inside Right Side First,Outside Right Side First,Inside Left Side First,Outside Left Side First,Sheeting,Folding';
            OptionMembers = " ",InsideTopFirst,OutsideTopFirst,InsideBottomFirst,OutsideBottomFirst,InsideRightSideFirst,OutsideRightSideFirs,InsideLeftSideFirst,OutsideLeftSideFirst,Sheeting,Folding;
        }
        field(6010108; "PVS Reverse Printing"; Boolean)
        {
            Caption = 'Reverse Printing';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS - ESKO';
        }
        field(6010116; "PVS Format Code"; Code[20])
        {
            Caption = 'Format Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010117; "PVS Quality Type Code"; Code[20])
        {
            Caption = 'Quality Type Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010118; "PVS ECO Label Code"; Code[20])
        {
            Caption = 'ECO Label Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010120; "PVS Template ID"; Integer)
        {
            Caption = 'Template ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010121; "PVS Template Job"; Integer)
        {
            Caption = 'Template Job';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010122; "PVS Template Version"; Integer)
        {
            Caption = 'Template Version';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010123; "PVS Intent Group Product Code"; Code[20])
        {
            Caption = 'Intent Group Product Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010130; "PVS Depth"; Decimal)
        {
            Caption = 'Depth';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010131; "PVS Width"; Decimal)
        {
            Caption = 'Width';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010300; "PVS Nonstock Items"; Boolean)
        {
            Caption = 'Non Stock Items';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010301; "PVS No Consumption Posting"; Boolean)
        {
            Caption = 'No Consumption Posting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010302; "PVS UOM Code"; Code[20])
        {
            Caption = 'Unit of Measure';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010303; "PVS Sub Contracting"; Boolean)
        {
            Caption = 'Sub Contracting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010304; "PVS Inventory Item"; Boolean)
        {
            Caption = 'Inventory Item';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010315; "PVS Item Type Code"; Code[20])
        {
            Caption = 'Item Type Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010316; "PVS Min. Sale"; Decimal)
        {
            Caption = 'Min. Sale';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010317; "PVS Allow Partial Delivery"; Boolean)
        {
            Caption = 'Allow Partial Delivery';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010318; "PVS Customer No."; Code[20])
        {
            Caption = 'Sell-To No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010320; "PVS Free Of Charge"; Boolean)
        {
            Caption = 'Free of Charge';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010327; "PVS Grain Direction"; Option)
        {
            Caption = 'Grain Direction';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Short Grain,Long Grain';
            OptionMembers = " ","1>2","1<2";
        }
        field(6010328; "PVS Product Group Code"; Code[20])
        {
            Caption = 'Productgroup Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010330; "PVS Colors Front"; Integer)
        {
            Caption = 'Colors Front';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010331; "PVS Colors Back"; Integer)
        {
            Caption = 'Colors Back';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010332; "PVS Grade"; Option)
        {
            Caption = 'Grade';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Gloss-coated paper,Matt-coated paper,Gloss-coated - web paper,Uncoated - white paper,Uncoated - yellowish paper';
            OptionMembers = " ","Gloss-coated paper","Matt-coated paper","Gloss-coated - web paper","Uncoated - white paper","Uncoated - yellowish paper";
        }
        field(6010333; "PVS Consumption Unit"; Code[10])
        {
            Caption = 'Consumption Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010334; "PVS Weight Unit"; Code[10])
        {
            Caption = 'Weight Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010335; "PVS Front Coatings"; Option)
        {
            Caption = 'Front Coatings';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,None,Coated,Glossy,HighGloss,InkJet,Matte,Polymer,Silver,Satin,Semigloss';
            OptionMembers = " ","None",Coated,Glossy,HighGloss,InkJet,Matte,Polymer,Silver,Satin,Semigloss;
        }
        field(6010336; "PVS Back Coatings"; Option)
        {
            Caption = 'Back Coatings';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,None,Coated,Glossy,HighGloss,InkJet,Matte,Polymer,Silver,Satin,Semigloss';
            OptionMembers = " ","None",Coated,Glossy,HighGloss,InkJet,Matte,Polymer,Silver,Satin,Semigloss;
        }
        field(6010337; "PVS ISO Paper Substrate"; Option)
        {
            Caption = 'ISO Paper Substrate';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,PS1 ═ Premium Coated,PS2 ═ Improved Coated,PS3 ═ Standard Coated Glossy,PS4 ═ Standard Coated Matt,PS5 ═ Wood-free Uncoated,PS6 ═ Super Calendered,PS7 ═ Improved Uncoated,PS8 ═ Standard Uncoated';
            OptionMembers = " ",PS1,PS2,PS3,PS4,PS5,PS6,PS7,PS8;
        }
        field(6010340; "PVS Optional Field 1"; Text[50])
        {
            Caption = 'Optional Field 1';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010341; "PVS Optional Field 2"; Text[50])
        {
            Caption = 'Optional Field 2';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010342; "PVS Optional Field 3"; Text[50])
        {
            Caption = 'Optional Field 3';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010343; "PVS Optional Field 4"; Text[50])
        {
            Caption = 'Optional Field 4';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010344; "PVS Optional Field 5"; Text[50])
        {
            Caption = 'Optional Field 5';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010345; "PVS Optional Field 6"; Text[50])
        {
            CaptionClass = 'PVS,FIELD27-6';
            Caption = 'Optional Field 6';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010346; "PVS Optional Field 7"; Text[50])
        {
            Caption = 'Optional Field 7';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010347; "PVS Optional Field 8"; Text[50])
        {
            Caption = 'Optional Field 8';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010348; "PVS Optional Field 9"; Text[50])
        {
            Caption = 'Optional Field 9';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010349; "PVS Optional Field 10"; Text[250])
        {
            Caption = 'Optional Field 10';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010401; "PVS Tool 1"; Code[20])
        {
            Caption = 'Tool 1';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010402; "PVS Tool 2"; Code[20])
        {
            Caption = 'Tool 2';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010403; "PVS Tool 3"; Code[20])
        {
            Caption = 'Tool 3';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010404; "PVS Tool 4"; Code[20])
        {
            Caption = 'Tool 4';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010410; "PVS Media Type"; Option)
        {
            Caption = 'Media Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Envelope,Envelope Plain,Envelope Window';
            OptionMembers = " ",Envelope,"Envelope Plain","Envelope Window";
        }
        field(6010411; "PVS Envelope Window Shape Type"; Option)
        {
            Caption = 'Envelope Window Shape Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Rectangular,Round,Path';
            OptionMembers = " ",Rectangular,Round,Path;
        }
        field(6010412; "PVS Envelope Window Size X"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            BlankZero = true;
            Caption = 'Envelope Window Size X';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010413; "PVS Envelope Window Size Y"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            BlankZero = true;
            Caption = 'Envelope Window Size Y';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010414; "PVS Opacity"; Option)
        {
            Caption = 'Opacity';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,Opaque,Translucent,Transparent';
            OptionMembers = " ",Opaque,Translucent,Transparent;
        }
        field(6010415; "PVS Opacity Level"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            BlankZero = true;
            Caption = 'Opacity Level';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;
            Description = 'PRINTVIS';
        }
        field(6010430; "PVS Ink Evaporation Pct."; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            Caption = 'Ink Evaporation %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 2 : 2;
            Description = 'PRINTVIS';
        }
        field(6010431; "PVS Ded. Middle Liner Caliper"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            Caption = 'Deduction Middle Liner Caliper';
            DataClassification = ToBeClassified;
            DecimalPlaces = 5 : 5;
            Description = 'PRINTVIS';
        }
        field(6010432; "PVS Ded. Base Liner Caliper"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            Caption = 'Deduction Base Liner Caliper';
            DataClassification = ToBeClassified;
            DecimalPlaces = 5 : 5;
            Description = 'PRINTVIS';
        }
        field(6010433; "PVS Middle Liner Weight"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            Caption = 'Middle Liner Weight';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010434; "PVS Base Liner Weight"; Decimal)
        {
            AutoFormatExpression = 'PVS_GeneralUnitDecimals';
            AutoFormatType = 10;
            Caption = 'Base Liner Weight';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010440; "PVS CAD Spec. No."; Code[20])
        {
            Caption = 'CAD Specification No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }




}

