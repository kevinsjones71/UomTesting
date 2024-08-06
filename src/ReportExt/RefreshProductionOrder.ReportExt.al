reportextension 50100 RefreshProdOrderExt extends "Refresh Production Order"
{

    var
        Prodlines: record "Prod. Order Line";
        ProdOrder: Record "Production Order";
        ProdUOM: Code[20];
        UnitCost: Decimal;
        UOM: Record "Item Unit of Measure";

    trigger OnPostReport()
    begin
        ProdOrder.Get((3), "Production Order"."No.");
        ProdUOM := ProdOrder."Production UOM";
        Prodlines.Get((3), (ProdOrder."No."), (10000));
        Prodlines."Unit of Measure Code" := ProdUOM;
        Prodlines.Modify(true);
        UOM.Get((Prodlines."Item No."), (ProdOrder."Production UOM"));
        Prodlines.Get((3), (ProdOrder."No."), (10000));
        Prodlines.Validate("Unit of Measure Code");
        Prodlines.get((3), (ProdOrder."No."), (10000));
        Prodlines."Unit Cost" := Prodlines."Unit Cost" * UOM."Qty. per Unit of Measure";
        Prodlines.Modify(true);
        Prodlines.get((3), (ProdOrder."No."), (10000));
        Prodlines."Cost Amount" := Prodlines."Unit Cost" * Prodlines.Quantity;
        Prodlines.Modify(true);
        Prodlines.get((3), (ProdOrder."No."), (10000));
    end;
}