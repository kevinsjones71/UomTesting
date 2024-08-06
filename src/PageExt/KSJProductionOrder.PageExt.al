pageextension 50102 ReleasedProdOrderExt extends 99000831
{
    layout
    {
        addafter("Source No.")
        {
            field("Production UOM"; Rec."Production UOM")
            {
                ApplicationArea = All;
                Caption = 'Production UOM';
                ToolTip = 'Specifies the Unit of Measure that the items will be produced in';
            }
        }
    }
    actions
    {
        Modify(RefreshProductionOrder)
        {
            trigger OnBeforeAction()
            begin
                rec.Testfield("Production UOM");
            end;
        }
    }
}