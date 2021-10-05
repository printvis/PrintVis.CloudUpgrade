codeunit 99996 "PTE Test Upgrade"
{
    Subtype = Test;
    [Test]
    procedure TestConversion()
    var
        Cust: Record Customer;
        CustPTE: Record "PTE CustomerEXT";
        Conversion: Codeunit "PTE Cloud Upgrade Mgt.";
    begin
        // [Given]
        Cust.FindSet();
        repeat
            CustPTE."No." := Cust."No.";
            CustPTE."PVS Optional Field 1" := '1';
            CustPTE.Insert();
        until Cust.Next() = 0;

        // [When]
        Conversion.MigrateInterimExtensionTables();

        // [Then]
        Cust.FindSet();
        repeat
            CustPTE.Get(Cust."No.");
            Cust.TestField("PVS Optional Field 1", CustPTE."PVS Optional Field 1");
        until Cust.Next() = 0;
    end;
}