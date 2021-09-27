Table 85110 "PTE Purchase Line ArchiveEXT"
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
        field(6010050; "PVS Sales Order No."; Code[20])
        {
            Caption = 'Order No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010051; "PVS Qty. PrintVis Order"; Decimal)
        {
            Caption = 'Qty. Graphic';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010052; "PVS Purchase Price PrintVis"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Purchase Price Graphic';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010053; "PVS Qty. Unit"; Option)
        {
            Caption = 'Unit Number';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Pcs.,1000 pcs.,lbs.,sq ft.,ft,Gallon';
            OptionMembers = "Pcs.","1000 pcs.",Weight,"Area",Lenght,Volume;
        }
        field(6010054; "PVS Price Unit"; Option)
        {
            Caption = 'Price Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Pcs.,1000 pcs.,lbs.,sq ft.,ft,Gallon,100 lbs,1000 lbs,1000 ft';
            OptionMembers = "Pcs.","1000 pcs.",Weight,"Area",Length,Volume,"100 Weight","1000 Weight","1000 Length";
        }
        field(6010055; "PVS Invoice Qty."; Decimal)
        {
            Caption = 'Invoice (number) Print';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010056; "PVS Receive Qty."; Decimal)
        {
            Caption = 'Receive (Quantity) Graphic';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010057; "PVS Invoiced Qty."; Decimal)
        {
            Caption = 'Invoiced (number) Graphic';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010058; "PVS Received Qty."; Decimal)
        {
            Caption = 'Received (Quantity) Graphic';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010059; "PVS Purchase Price Total"; Decimal)
        {
            Caption = 'Purchase Price in Total Graphic';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010060; "PVS Price"; Decimal)
        {
            Caption = 'Price Graphical';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010061; "PVS Total Price"; Decimal)
        {
            Caption = 'Total Price graphical';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010062; "PVS Profit"; Decimal)
        {
            Caption = 'Profit Graphic';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010063; "PVS Sales Amount"; Decimal)
        {
            Caption = 'Sales Amount';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010067; "PVS Sales Order Line No."; Integer)
        {
            Caption = 'Sales Line No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010068; "PVS Price Factor"; Decimal)
        {
            BlankZero = true;
            Caption = 'Price factor';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010300; "PVS ID 1"; Integer)
        {
            Caption = 'PrintVis Case ID';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010301; "PVS ID 2"; Integer)
        {
            Caption = 'Order ID 2';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010302; "PVS ID 3"; Integer)
        {
            Caption = 'Order ID 3';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010303; "PVS Item Statistical Group"; Code[20])
        {
            Caption = 'Item Statistics Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010304; "PVS Department Code"; Code[20])
        {
            Caption = 'Department';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010305; "PVS Inventory Management"; Boolean)
        {
            Caption = 'Warehouse Management';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010306; "PVS UOM Code"; Code[20])
        {
            Caption = 'Unit of Measure';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010307; "PVS Product Group Code"; Code[20])
        {
            Caption = 'Product Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010308; "PVS Customer Group Code"; Code[20])
        {
            Caption = 'Customer Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            Editable = false;
        }
        field(6010309; "PVS Sub Contracting"; Boolean)
        {
            Caption = 'Sub Contracting';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010310; "PVS Order Type Code"; Code[20])
        {
            Caption = 'Order Type';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010311; "PVS Closing Date"; Date)
        {
            Caption = 'Statistics Date';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010312; "PVS Cost Center Code"; Code[20])
        {
            Caption = 'Cost Center';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010313; "PVS Salesperson Code"; Code[20])
        {
            Caption = 'Sales Person';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010314; "PVS Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010315; "PVS Industry Group"; Code[10])
        {
            Caption = 'Industry Group';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010316; "PVS Production Order"; Boolean)
        {
            Caption = 'Production Order';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010318; "PVS Page Unit"; Option)
        {
            Caption = 'Page Unit';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
            OptionCaption = 'Pages w. Print,Sheets,Total Pages';
            OptionMembers = "Pages w. Print",Sheets,"Total Pages";
        }
        field(6010319; "PVS Pages"; Integer)
        {
            Caption = 'Pages';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010320; "PVS Format Code"; Code[20])
        {
            Caption = 'Format Code';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010321; "PVS Colors Front"; Integer)
        {
            Caption = 'Color Front';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010322; "PVS Colors Back"; Integer)
        {
            Caption = 'Color Back';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010323; "PVS Paper"; Code[20])
        {
            Caption = 'Paper';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010324; "PVS Unchanged Reprint"; Boolean)
        {
            Caption = 'Unchanged Reissue';
            DataClassification = ToBeClassified;
            Description = 'PRINTVIS';
        }
        field(6010328; "PVS Expected Receipt Time"; Time)
        {
            Caption = 'Expected Receipt Time';
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

