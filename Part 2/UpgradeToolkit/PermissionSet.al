permissionset 99999 "PTE Cloud Upgrade"
{
    Assignable = true;
    Caption = 'PrintVis Cloud Upgrade';

    Permissions =
        tabledata "PTE Upgrade Table Status" = RIMD,
        tabledata "PVS Upgrade Progress" = RIMD,
        tabledata "PVS Cloud Upgrade Setup" = RIMD,
        tabledata "PTE Salesperson/PurchaserEXT" = RIMD,
        tabledata "PTE LocationEXT" = RIMD,
        tabledata "PTE G/L AccountEXT" = RIMD,
        tabledata "PTE G/L EntryEXT" = RIMD,
        tabledata "PTE CustomerEXT" = RIMD,
        tabledata "PTE VendorEXT" = RIMD,
        tabledata "PTE ItemEXT" = RIMD,
        tabledata "PTE Item Ledger EntryEXT" = RIMD,
        tabledata "PTE Sales HeaderEXT" = RIMD,
        tabledata "PTE Sales LineEXT" = RIMD,
        tabledata "PTE Purchase HeaderEXT" = RIMD,
        tabledata "PTE Purchase LineEXT" = RIMD,
        tabledata "PTE User Time RegisterEXT" = RIMD,
        tabledata "PTE Gen. Journal LineEXT" = RIMD,
        tabledata "PTE Item Journal LineEXT" = RIMD,
        tabledata "PTE Sales Shipment HeaderEXT" = RIMD,
        tabledata "PTE Sales Shipment LineEXT" = RIMD,
        tabledata "PTE Sales Invoice HeaderEXT" = RIMD,
        tabledata "PTE Sales Invoice LineEXT" = RIMD,
        tabledata "PTE Sales Cr.Memo HeaderEXT" = RIMD,
        tabledata "PTE Sales Cr.Memo LineEXT" = RIMD,
        tabledata "PTE Purch. Rcpt. LineEXT" = RIMD,
        tabledata "PTE Purch. Inv. LineEXT" = RIMD,
        tabledata "PTE Purch. Cr. Memo LineEXT" = RIMD,
        tabledata "PTE Order AddressEXT" = RIMD,
        tabledata "PTE Requisition LineEXT" = RIMD,
        tabledata "PTE Gen. Product PostGroup EXT" = RIMD,
        tabledata "PTE Extended Text HeaderEXT" = RIMD,
        tabledata "PTE VAT Posting SetupEXT" = RIMD,
        tabledata "PTE Mini Customer TemplateEXT" = RIMD,
        tabledata "PTE Item TemplateEXT" = RIMD,
        tabledata "PTE ContactEXT" = RIMD,
        tabledata "PTE Interaction Log EntryEXT" = RIMD,
        tabledata "PTE To-doEXT" = RIMD,
        tabledata "PTE Sales Header ArchiveEXT" = RIMD,
        tabledata "PTE Sales Line ArchiveEXT" = RIMD,
        tabledata "PTE Purchase Header ArchiveEXT" = RIMD,
        tabledata "PTE Purchase Line ArchiveEXT" = RIMD,
        tabledata "PTE Item VariantEXT" = RIMD,
        tabledata "PTE Return Shipment LineEXT" = RIMD,
        tabledata "PTE Return Receipt LineEXT" = RIMD,
        tabledata "PTE Warehouse EntryEXT" = RIMD,
        tabledata "PTE Whse. Worksheet LineEXT" = RIMD,
        tabledata "PTE Internal Movement LineEXT" = RIMD;
}