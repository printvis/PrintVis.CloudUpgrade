Table 85108 "PTE Sales Line ArchiveEXT"
{

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(5047; "Version No."; Integer)
        {
            Caption = 'Version No.';
            DataClassification = ToBeClassified;
        }
        field(5048; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
            DataClassification = ToBeClassified;
        }
        field(6010050; "PVS Order No."; Code[20])
        {
            Caption = 'PrintVis Order No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010051; "PVS ID 1"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010052; "PVS ID 2"; Integer)
        {
            Caption = 'Order ID 2';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010053; "PVS ID 3"; Integer)
        {
            Caption = 'Order ID 3';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010054; "PVS Indentation"; Integer)
        {
            Caption = 'Insertion';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010055; "PVS Bold"; Boolean)
        {
            Caption = 'Bold';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010056; "PVS Group Code"; Code[20])
        {
            Caption = 'Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010060; "PVS Manual Mark Up Type"; Boolean)
        {
            Caption = 'Manual Type of Surcharge';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010061; "PVS Surcharge type"; Integer)
        {
            Caption = 'Surcharge type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010062; "PVS Date of Creation"; Date)
        {
            Caption = 'Date of Creation';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010063; "PVS Created by User"; Code[30])
        {
            Caption = 'Created by User';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010064; "PVS Price Status"; Option)
        {
            Caption = 'Price Status';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'OK,No charge,Price missing,Cost missing,Price and Cost missing';
            OptionMembers = OK,"No charge","Price missing","Cost missing","Price and Cost missing";
        }
        field(6010066; "PVS Cost Amount LCY"; Decimal)
        {
            Caption = 'Cost Amount';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010067; "PVS Net Back Order Amount"; Decimal)
        {
            Caption = 'Net Back Order Amount';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010068; "PVS Net Back Order Cost Amount"; Decimal)
        {
            Caption = 'Net Back Order Cost Amount';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010069; "PVS Salesperson"; Code[20])
        {
            Caption = 'Salesperson';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010070; "PVS Closing Date"; Date)
        {
            Caption = 'Statistics Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010071; "PVS Order Date"; Date)
        {
            Caption = 'Order Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010072; "PVS Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010073; "PVS Customer Inventory"; Decimal)
        {
            Caption = 'Customer Inventory';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            Description = 'PRINTVIS';
        }
        field(6010074; "PVS Customer Inventory Entry"; Integer)
        {
            Caption = 'Customer Inventory Entry';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010076; "PVS No of Month"; Integer)
        {
            BlankZero = true;
            Caption = 'Number of Months';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010077; "PVS Repetition Term"; Code[10])
        {
            Caption = 'Repetition Term';
            DataClassification = ToBeClassified;
            DateFormula = true;
            Description = 'PRINTVIS';
        }
        field(6010078; "PVS Start of Period"; Date)
        {
            Caption = 'Start of Period';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010079; "PVS End of Period"; Date)
        {
            Caption = 'End of Period';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010300; "PVS Department Code"; Code[20])
        {
            Caption = 'Department';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010301; "PVS Cost Center Code"; Code[20])
        {
            Caption = 'Cost Center';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010302; "PVS UOM Code"; Code[20])
        {
            Caption = 'Unit of Measure';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010303; "PVS Item Statistical Group"; Code[20])
        {
            Caption = 'Item Statistics Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010304; "PVS Industry Group"; Code[10])
        {
            Caption = 'Industry Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010305; "PVS Product Group Code"; Code[20])
        {
            Caption = 'Product Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010306; "PVS Customer Group Code"; Code[20])
        {
            Caption = 'Customer Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010307; "PVS Order Type Code"; Code[20])
        {
            Caption = 'Order Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010308; "PVS Line Type"; Option)
        {
            Caption = 'Line Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Total,Estimating,Estimating+waste,Estimating+deviation,Waste,Deviations,Main/sub-supplier,Discount/surcharge,,,Totals';
            OptionMembers = Total,Estimating,"Estimating+waste","Estimating+deviation",Waste,Deviations,"Main/sub-supplier","Discount/surcharge",,,Totals;
        }
        field(6010309; "PVS Can be debited"; Boolean)
        {
            Caption = 'Can be debited';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010310; "PVS Waste"; Boolean)
        {
            Caption = 'Waste';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010311; "PVS Customs Tariff No."; Code[20])
        {
            Caption = 'Customs Tariff No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010312; "PVS Hiden Group Line"; Boolean)
        {
            Caption = 'HiddenGroupLine';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010313; "PVS Form_Linietype"; Integer)
        {
            Caption = 'Form_Linetype';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010315; "PVS Qty. Order"; Decimal)
        {
            Caption = 'Prod. Quantity';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010316; "PVS Unit"; Option)
        {
            Caption = 'Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,per 1000';
            OptionMembers = " ","per 1000";
        }
        field(6010317; "PVS Sales Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Price';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010318; "PVS Production Order"; Boolean)
        {
            Caption = 'Production Order';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010320; "PVS Page Unit"; Option)
        {
            Caption = 'Page Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Pages w. Print,Sheets,Total Pages';
            OptionMembers = "Pages w. Print",Sheets,"Total Pages";
        }
        field(6010321; "PVS Pages"; Integer)
        {
            Caption = 'Pages';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010322; "PVS Format Code"; Code[20])
        {
            Caption = 'Format Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010323; "PVS Colors Front"; Integer)
        {
            Caption = 'Color Front';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010324; "PVS Colors Back"; Integer)
        {
            Caption = 'Color Back';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010325; "PVS Paper"; Code[20])
        {
            Caption = 'Paper';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010326; "PVS Unchanged Reprint"; Boolean)
        {
            Caption = 'Unchanged Reissue';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010328; "PVS Picked/Received"; Boolean)
        {
            Caption = 'Picked/Received';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010329; "PVS Nonstock Items"; Boolean)
        {
            Caption = 'Non Stock Item';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010330; "PVS Allow Partial Delivery"; Boolean)
        {
            Caption = 'Allow Partial Delivery';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010331; "PVS Shipment"; Option)
        {
            Caption = 'Shipment';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = ' ,wo/freight,Customer owned inventory,Customer Inventory';
            OptionMembers = " ","wo/freight","Customer owned inventory","Customer Inventory";
        }
        field(6010332; "PVS No Consumption Posting"; Boolean)
        {
            Caption = 'No Consumption Posting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010333; "PVS No Freight"; Boolean)
        {
            Caption = 'No Freight';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010334; "PVS Production Qty."; Integer)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010341; "PVS Ship-To Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010342; "PVS Manual Price"; Boolean)
        {
            Caption = 'Manuel Price';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010343; "PVS Intent Group"; Code[20])
        {
            Caption = 'Intent Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010344; "PVS Intent Group Product Code"; Code[20])
        {
            Caption = 'Intent Group Product Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Doc. No. Occurrence", "Version No.", "Line No.")
        {
            Clustered = true;
        }
    }



}

