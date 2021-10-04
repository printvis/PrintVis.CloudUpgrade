codeunit 99997 "PTE Internal Move Data"
{
    TableNo = "PTE Upgrade Table Status";
    Permissions = TableData "Salesperson/Purchaser" = rm,
    TableData "Location" = rm,
    TableData "G/L Account" = rm,
    TableData "G/L Entry" = rm,
    TableData "Customer" = rm,
    TableData "Vendor" = rm,
    TableData "Item" = rm,
    TableData "Item Ledger Entry" = rm,
    TableData "Sales Header" = rm,
    TableData "Sales Line" = rm,
    TableData "Purchase Header" = rm,
    TableData "Purchase Line" = rm,
    TableData "Invt. Posting Buffer" = rm,
    TableData "User Time Register" = rm,
    TableData "Gen. Journal Line" = rm,
    TableData "Item Journal Line" = rm,
    TableData "Sales Shipment Header" = rm,
    TableData "Sales Shipment Line" = rm,
    TableData "Sales Invoice Header" = rm,
    TableData "Sales Invoice Line" = rm,
    TableData "Sales Cr.Memo Header" = rm,
    TableData "Sales Cr.Memo Line" = rm,
    TableData "Purch. Rcpt. Line" = rm,
    TableData "Purch. Inv. Line" = rm,
    TableData "Purch. Cr. Memo Line" = rm,
    TableData "Order Address" = rm,
    TableData "Requisition Line" = rm,
    TableData "Gen. Product Posting Group" = rm,
    TableData "Extended Text Header" = rm,
    TableData "VAT Posting Setup" = rm,
    TableData "Item Templ." = rm,
    TableData "Customer Templ." = rm,
    TableData "Activities Cue" = rm,
    TableData "Contact" = rm,
    TableData "Interaction Log Entry" = rm,
    TableData "To-do" = rm,
    TableData "Sales Header Archive" = rm,
    TableData "Sales Line Archive" = rm,
    TableData "Purchase Header Archive" = rm,
    TableData "Purchase Line Archive" = rm,
    TableData "Item Variant" = rm,
    TableData "Return Shipment Line" = rm,
    TableData "Return Receipt Line" = rm,
    TableData "Warehouse Entry" = rm,
    TableData "Whse. Worksheet Line" = rm,
    TableData "Internal Movement Line" = rm;

    trigger OnRun()
    begin
        MoveData(Rec);
    end;


    local procedure MoveData(var PTETablesStatus: Record "PTE Upgrade Table Status")
    begin
        CASE PTETablesStatus."Table No." OF
            13:
                m13(PTETablesStatus);
            14:
                m14(PTETablesStatus);
            15:
                m15(PTETablesStatus);
            17:
                m17(PTETablesStatus);
            18:
                m18(PTETablesStatus);
            23:
                m23(PTETablesStatus);
            27:
                m27(PTETablesStatus);
            32:
                m32(PTETablesStatus);
            36:
                m36(PTETablesStatus);
            37:
                m37(PTETablesStatus);
            38:
                m38(PTETablesStatus);
            39:
                m39(PTETablesStatus);
            51:
                m51(PTETablesStatus);
            81:
                m81(PTETablesStatus);
            83:
                m83(PTETablesStatus);
            110:
                m110(PTETablesStatus);
            111:
                m111(PTETablesStatus);
            112:
                m112(PTETablesStatus);
            113:
                m113(PTETablesStatus);
            114:
                m114(PTETablesStatus);
            115:
                m115(PTETablesStatus);
            121:
                m121(PTETablesStatus);
            123:
                m123(PTETablesStatus);
            125:
                m125(PTETablesStatus);
            224:
                m224(PTETablesStatus);
            246:
                m246(PTETablesStatus);
            251:
                m251(PTETablesStatus);
            279:
                m279(PTETablesStatus);
            325:
                m325(PTETablesStatus);
            1300:
                m1300(PTETablesStatus);
            1301:
                m1301(PTETablesStatus);
            5050:
                m5050(PTETablesStatus);
            5065:
                m5065(PTETablesStatus);
            5080:
                m5080(PTETablesStatus);
            5107:
                m5107(PTETablesStatus);
            5108:
                m5108(PTETablesStatus);
            5109:
                m5109(PTETablesStatus);
            5110:
                m5110(PTETablesStatus);
            5401:
                m5401(PTETablesStatus);
            6651:
                m6651(PTETablesStatus);
            6661:
                m6661(PTETablesStatus);
            7312:
                m7312(PTETablesStatus);
            7326:
                m7326(PTETablesStatus);
            7347:
                m7347(PTETablesStatus);
        END;
    end;


    local procedure m13(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 13;
        tx: Record "PTE Salesperson/PurchaserEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx.Code) then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m14(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 14;
        tx: Record "PTE LocationEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx.Code) then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m15(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 15;
        tx: Record "PTE G/L AccountEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m17(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 17;
        tx: Record "PTE G/L EntryEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Entry No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m18(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 18;
        tx: Record "PTE CustomerEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m23(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 23;
        tx: Record "PTE VendorEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m27(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 27;
        tx: Record "PTE ItemEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m32(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 32;
        tx: Record "PTE Item Ledger EntryEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Entry No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m36(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 36;
        tx: Record "PTE Sales HeaderEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document Type", tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m37(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 37;
        tx: Record "PTE Sales LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document Type", tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m38(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 38;
        tx: Record "PTE Purchase HeaderEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document Type", tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m39(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 39;
        tx: Record "PTE Purchase LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document Type", tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m51(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 51;
        tx: Record "PTE User Time RegisterEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."User ID", tx.Date) then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m81(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 81;
        tx: Record "PTE Gen. Journal LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Journal Template Name", tx."Journal Batch Name", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m83(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 83;
        tx: Record "PTE Item Journal LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Journal Template Name", tx."Journal Batch Name", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m110(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 110;
        tx: Record "PTE Sales Shipment HeaderEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m111(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 111;
        tx: Record "PTE Sales Shipment LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m112(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 112;
        tx: Record "PTE Sales Invoice HeaderEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m113(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 113;
        tx: Record "PTE Sales Invoice LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m114(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 114;
        tx: Record "PTE Sales Cr.Memo HeaderEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m115(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 115;
        tx: Record "PTE Sales Cr.Memo LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m121(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 121;
        tx: Record "PTE Purch. Rcpt. LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m123(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 123;
        tx: Record "PTE Purch. Inv. LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m125(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 125;
        tx: Record "PTE Purch. Cr. Memo LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m224(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 224;
        tx: Record "PTE Order AddressEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx.Code) then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m246(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 246;
        tx: Record "PTE Requisition LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Worksheet Template Name", tx."Journal Batch Name", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m251(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 251;
        tx: Record "PTE Gen. Product PostGroup EXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx.Code) then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m279(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 279;
        tx: Record "PTE Extended Text HeaderEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Table Name", tx."No.", tx."Language Code", tx."Text No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m325(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 325;
        tx: Record "PTE VAT Posting SetupEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."VAT Bus. Posting Group", tx."VAT Prod. Posting Group") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m1300(var P: Record "PTE Upgrade Table Status")
    var
        t: Record "Customer Templ.";
        tx: Record "PTE Mini Customer TemplateEXT";
    begin
        //move to a new Standard BC table.
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx.Code) then begin
                    t."PVS Customer Group Code" := tx."PVS Customer Group Code";
                    t."PVS Industry Group" := tx."PVS Industry Group";
                    t."PVS ABC Code" := tx."PVS ABC Code";
                    t."PVS External No." := tx."PVS External No.";
                    t."PVS Discount Group" := tx."PVS Discount Group";
                    t."PVS Shipment From Customer" := tx."PVS Shipment From Customer";
                    t."PVS Allow Back Order" := tx."PVS Allow Back Order";
                    t."PVS Digital Art Delivery Code" := tx."PVS Digital Art Delivery Code";
                    t."PVS Order Planner" := tx."PVS Order Planner";
                    t."PVS Estimator" := tx."PVS Estimator";
                    t."PVS No Freight" := tx."PVS No Freight";
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m1301(var P: Record "PTE Upgrade Table Status")
    var
        t: Record "Item Templ.";
        tx: Record "PTE Item TemplateEXT";
    begin
        //move to a new Standard BC table.
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx.Code) then begin
                    t."PVS Item Type" := tx."PVS Item Type";
                    t."PVS Format 1" := tx."PVS Format 1";
                    t."PVS Format 2" := tx."PVS Format 2";
                    t."PVS Item Quality Code" := tx."PVS Item Quality Code";
                    t."PVS Weight" := tx."PVS Weight";
                    t."PVS Ink Coverage Area/Weight" := tx."PVS Ink Coverage Area/Weight";
                    t."PVS Price Unit" := tx."PVS Price Unit";
                    t."PVS Price List Code" := tx."PVS Price List Code";
                    t."PVS Add. Pct." := tx."PVS Add. Pct.";
                    t."PVS Paper Type" := tx."PVS Paper Type";
                    t."PVS Inventory Unit" := tx."PVS Inventory Unit";
                    t."PVS Transfer Cost" := tx."PVS Transfer Cost";
                    t."PVS Transfer Surcharge Pct." := tx."PVS Transfer Surcharge Pct.";
                    t."PVS Transfer Price" := tx."PVS Transfer Price";
                    t."PVS Default Coverage Pct." := tx."PVS Default Coverage Pct.";
                    t."PVS Reel Length" := tx."PVS Reel Length";
                    t."PVS Formula Code" := tx."PVS Formula Code";
                    t."PVS Incl. In Add. Calc." := tx."PVS Incl. In Add. Calc.";
                    t."PVS Incl. In Reprinting" := tx."PVS Incl. In Reprinting";
                    t."PVS Imposition Code" := tx."PVS Imposition Code";
                    t."PVS Thickness" := tx."PVS Thickness";
                    t."PVS Weight Per Inventory Unit" := tx."PVS Weight Per Inventory Unit";
                    t."PVS Toxic Factor" := tx."PVS Toxic Factor";
                    t."PVS Color Code" := tx."PVS Color Code";
                    t."PVS Finishing" := tx."PVS Finishing";
                    t."PVS Unwind" := tx."PVS Unwind";
                    t."PVS Format Code" := tx."PVS Format Code";
                    t."PVS Quality Type Code" := tx."PVS Quality Type Code";
                    t."PVS ECO Label Code" := tx."PVS ECO Label Code";
                    t."PVS Intent Group Product Code" := tx."PVS Intent Group Product Code";
                    t."PVS Length" := tx."PVS Length";
                    t."PVS Width" := tx."PVS Width";
                    t."PVS Nonstock Items" := tx."PVS Nonstock Items";
                    t."PVS No Consumption Posting" := tx."PVS No Consumption Posting";
                    t."PVS UOM Code" := tx."PVS UOM Code";
                    t."PVS Sub Contracting" := tx."PVS Sub Contracting";
                    t."PVS Inventory Item" := tx."PVS Inventory Item";
                    t."PVS Item Type Code" := tx."PVS Item Type Code";
                    t."PVS Min. Sale" := tx."PVS Min. Sale";
                    t."PVS Allow Partial Delivery" := tx."PVS Allow Partial Delivery";
                    t."PVS Customer No." := tx."PVS Customer No.";
                    t."PVS Grain Direction" := tx."PVS Grain Direction";
                    t."PVS Product Group Code" := tx."PVS Product Group Code";
                    t."PVS Colors Front" := tx."PVS Colors Front";
                    t."PVS Colors Back" := tx."PVS Colors Back";
                    t."PVS Grade" := tx."PVS Grade";
                    t."PVS Consumption Unit" := tx."PVS Consumption Unit";
                    t."PVS Weight Unit" := tx."PVS Weight Unit";
                    t."PVS Front Coatings" := tx."PVS Front Coatings";
                    t."PVS Back Coatings" := tx."PVS Back Coatings";
                    t."PVS Tool 1" := tx."PVS Tool 1";
                    t."PVS Tool 2" := tx."PVS Tool 2";
                    t."PVS Tool 3" := tx."PVS Tool 3";
                    t."PVS Tool 4" := tx."PVS Tool 4";
                    t."PVS Media Type" := tx."PVS Media Type";
                    t."PVS Envelope Window Shape Type" := tx."PVS Envelope Window Shape Type";
                    t."PVS Envelope Window Size X" := tx."PVS Envelope Window Size X";
                    t."PVS Envelope Window Size Y" := tx."PVS Envelope Window Size Y";
                    t."PVS Opacity" := tx."PVS Opacity";
                    t."PVS Opacity Level" := tx."PVS Opacity Level";
                    t."PVS Ink Evaporation Pct." := tx."PVS Ink Evaporation Pct.";
                    t."PVS Ded. Middle Liner Caliper" := tx."PVS Ded. Middle Liner Caliper";
                    t."PVS Deduc. Base Liner Caliper" := tx."PVS Deduc. Base Liner Caliper";
                    t."PVS Middle Liner Weight" := tx."PVS Middle Liner Weight";
                    t."PVS Base Liner Weight" := tx."PVS Base Liner Weight";

                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m5050(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 5050;
        tx: Record "PTE ContactEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m5065(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 5065;
        tx: Record "PTE Interaction Log EntryEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Entry No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m5080(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 5080;
        tx: Record "PTE To-doEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m5107(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 5107;
        tx: Record "PTE Sales Header ArchiveEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document Type", tx."No.", tx."Doc. No. Occurrence", tx."Version No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m5108(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 5108;
        tx: Record "PTE Sales Line ArchiveEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document Type", tx."Document No.", tx."Doc. No. Occurrence", tx."Version No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m5109(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 5109;
        tx: Record "PTE Purchase Header ArchiveEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document Type", tx."No.", tx."Doc. No. Occurrence", tx."Version No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m5110(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 5110;
        tx: Record "PTE Purchase Line ArchiveEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document Type", tx."Document No.", tx."Doc. No. Occurrence", tx."Version No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m5401(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 5401;
        tx: Record "PTE Item VariantEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Item No.", tx.Code) then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m6651(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 6651;
        tx: Record "PTE Return Shipment LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m6661(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 6661;
        tx: Record "PTE Return Receipt LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Document No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m7312(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 7312;
        tx: Record "PTE Warehouse EntryEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Entry No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m7326(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 7326;
        tx: Record "PTE Whse. Worksheet LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."Worksheet Template Name", tx.Name, tx."Location Code", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;

    end;

    local procedure m7347(var P: Record "PTE Upgrade Table Status")
    var
        t: Record 7347;
        tx: Record "PTE Internal Movement LineEXT";
    begin
        t.changecompany(P.Company);
        tx.changecompany(P.Company);

        if tx.findset() then
            repeat
                if t.Get(tx."No.", tx."Line No.") then begin
                    t.TRANSFERFIELDS(tx);
                    if t.modify() then;
                end;
            until tx.NEXT = 0;
        p."Cloud Completed" := P."Records in Table Extension" = t.Count;
    end;

}
