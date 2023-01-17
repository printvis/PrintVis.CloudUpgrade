codeunit 99950 "PTE Interim to SO Int"
{
    trigger OnRun()
    begin
        m36();
        m37();
        m38();
        m39();
        m5107();
        m5108();
        m5109();
        m5110();
    end;

    local procedure m36()
    var
        t: Record 36;
        tx: Record "PTE Sales HeaderEXT";
    begin
        if tx.FindSet() then
            repeat
                if t.Get(tx."Document Type", tx."No.") then begin
                    t."PVS Calc. Status" := tx."PVS Calc. Status";
                    t."PVS Price Method" := tx."PVS Price Method";
                    t."PVS Order Type Code" := tx."PVS Order Type Code";
                    t."PVS Status Code" := tx."PVS Status Code";
                    t."PVS Deadline" := tx."PVS Deadline";
                    t."PVS Person Responsible" := tx."PVS Person Responsible";
                    t."PVS Manual Responsible" := tx."PVS Manual Responsible";
                    t."PVS Coordinator" := tx."PVS Coordinator";
                    t.modify(false);
                end;
            until tx.NEXT = 0;
    end;

    local procedure m37()
    var
        t: Record 37;
        tx: Record "PTE Sales LineEXT";
    begin
        if tx.FindSet() then
            repeat
                if t.Get(tx."Document Type", tx."Document No.", tx."Line No.") then begin
                    t."PVS Qty. Order" := tx."PVS Qty. Order";
                    t."PVS Unit" := tx."PVS Unit";
                    t."PVS Sales Price" := tx."PVS Sales Price";
                    t."PVS Production Order" := tx."PVS Production Order";
                    t."PVS Page Unit" := tx."PVS Page Unit";
                    t."PVS Pages" := tx."PVS Pages";
                    t."PVS Format Code" := tx."PVS Format Code";
                    t."PVS Colors Front" := tx."PVS Colors Front";
                    t."PVS Colors Back" := tx."PVS Colors Back";
                    t."PVS Paper" := tx."PVS Paper";
                    t."PVS Unchanged Reprint" := tx."PVS Unchanged Reprint";
                    t."PVS Production Qty." := tx."PVS Production Qty.";
                    t.modify(false);
                end;
            until tx.NEXT = 0;
    end;

    local procedure m38()
    var
        t: Record 38;
        tx: Record "PTE Purchase HeaderEXT";
    begin
        if tx.FindSet() then
            repeat
                if t.Get(tx."Document Type", tx."No.") then begin
                    t."PVS Control Amount Incl. VAT" := tx."PVS Control Amount Incl. VAT";
                    t."PVS Status" := tx."PVS Status";
                    t."PVS P-Order Type" := tx."PVS P-Order Type";
                    t."PVS Status Code" := tx."PVS Status Code";
                    t."PVS Deadline" := tx."PVS Deadline";
                    t."PVS Person Responsible" := tx."PVS Person Responsible";
                    t."PVS Manual Responsible" := tx."PVS Manual Responsible";
                    t."PVS Coordinator" := tx."PVS Coordinator";
                    t."PVS Expected Receipt Time" := tx."PVS Expected Receipt Time";
                    t.modify(false);
                end;
            until tx.NEXT = 0;
    end;

    local procedure m39()
    var
        t: Record 39;
        tx: Record "PTE Purchase LineEXT";
    begin
        if tx.FindSet() then
            repeat
                if t.Get(tx."Document Type", tx."Document No.", tx."Line No.") then begin
                    t."PVS Production Order" := tx."PVS Production Order";
                    t."PVS Page Unit" := tx."PVS Page Unit";
                    t."PVS Pages" := tx."PVS Pages";
                    t."PVS Format Code" := tx."PVS Format Code";
                    t."PVS Colors Front" := tx."PVS Colors Front";
                    t."PVS Colors Back" := tx."PVS Colors Back";
                    t."PVS Paper" := tx."PVS Paper";
                    t."PVS Unchanged Reprint" := tx."PVS Unchanged Reprint";
                    t.modify(false);
                end;
            until tx.NEXT = 0;
    end;

    local procedure m5107()
    var
        t: Record 5107;
        tx: Record "PTE Sales Header ArchiveEXT";
    begin
        if tx.FindSet() then
            repeat
                if t.Get(tx."Document Type", tx."No.", tx."Doc. No. Occurrence", tx."Version No.") then begin
                    t."PVS Calc. Status" := tx."PVS Calc. Status";
                    t."PVS Price Method" := tx."PVS Price Method";
                    t."PVS Order Type Code" := tx."PVS Order Type Code";
                    t."PVS Status Code" := tx."PVS Status Code";
                    t."PVS Deadline" := tx."PVS Deadline";
                    t."PVS Person Responsible" := tx."PVS Person Responsible";
                    t."PVS Manual Responsible" := tx."PVS Manual Responsible";
                    t."PVS Coordinator" := tx."PVS Coordinator";
                    t.modify(false);
                end;
            until tx.NEXT = 0;
    end;

    local procedure m5108()
    var
        t: Record 5108;
        tx: Record "PTE Sales Line ArchiveEXT";
    begin
        if tx.FindSet() then
            repeat
                if t.Get(tx."Document Type", tx."Document No.", tx."Doc. No. Occurrence", tx."Version No.", tx."Line No.") then begin
                    t."PVS Qty. Order" := tx."PVS Qty. Order";
                    t."PVS Unit" := tx."PVS Unit";
                    t."PVS Sales Price" := tx."PVS Sales Price";
                    t."PVS Production Order" := tx."PVS Production Order";
                    t."PVS Page Unit" := tx."PVS Page Unit";
                    t."PVS Pages" := tx."PVS Pages";
                    t."PVS Format Code" := tx."PVS Format Code";
                    t."PVS Colors Front" := tx."PVS Colors Front";
                    t."PVS Colors Back" := tx."PVS Colors Back";
                    t."PVS Paper" := tx."PVS Paper";
                    t."PVS Unchanged Reprint" := tx."PVS Unchanged Reprint";
                    t."PVS Production Qty." := tx."PVS Production Qty.";
                    t.modify(false);
                end;
            until tx.NEXT = 0;
    end;

    local procedure m5109()
    var
        t: Record 5109;
        tx: Record "PTE Purchase Header ArchiveEXT";
    begin
        if tx.FindSet() then
            repeat
                if t.Get(tx."Document Type", tx."No.", tx."Doc. No. Occurrence", tx."Version No.") then begin
                    t."PVS Control Amount Incl. VAT" := tx."PVS Control Amount Incl. VAT";
                    t."PVS Status" := tx."PVS Status";
                    t."PVS Status Code" := tx."PVS Status Code";
                    t."PVS Deadline" := tx."PVS Deadline";
                    t."PVS Person Responsible" := tx."PVS Person Responsible";
                    t."PVS Manual Responsible" := tx."PVS Manual Responsible";
                    t."PVS Coordinator" := tx."PVS Coordinator";
                    t."PVS Expected Receipt Time" := tx."PVS Expected Receipt Time";
                    t.modify(false);
                end;
            until tx.NEXT = 0;
    end;

    local procedure m5110()
    var
        t: Record 5110;
        tx: Record "PTE Purchase Line ArchiveEXT";
    begin
        if tx.FindSet() then
            repeat
                if t.Get(tx."Document Type", tx."Document No.", tx."Doc. No. Occurrence", tx."Version No.", tx."Line No.") then begin
                    t."PVS Production Order" := tx."PVS Production Order";
                    t."PVS Page Unit" := tx."PVS Page Unit";
                    t."PVS Pages" := tx."PVS Pages";
                    t."PVS Format Code" := tx."PVS Format Code";
                    t."PVS Colors Front" := tx."PVS Colors Front";
                    t."PVS Colors Back" := tx."PVS Colors Back";
                    t."PVS Paper" := tx."PVS Paper";
                    t."PVS Unchanged Reprint" := tx."PVS Unchanged Reprint";
                    t.modify(false);
                end;
            until tx.NEXT = 0;
    end;
}