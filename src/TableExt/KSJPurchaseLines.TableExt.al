tableextension 50102 PurchaseLinesExt extends "Purchase Line"
{
    fields
    {
        modify("Unit of Measure Code")
        {
            trigger OnBeforeValidate()
            var
                ItemUnitOfMeasure: Record "Item Unit of Measure";
            begin
                ItemUnitOfMeasure.get(("No."), ("Unit of Measure Code"));
                "Location Code" := ItemUnitOfMeasure."Default Location";
                Quantity := 0;
            end;
        }
        modify("Location Code")
        {
            trigger OnAfterValidate()
            begin
                Quantity := 0;
            end;
        }
    }
}
