pageextension 50100 KSJItemUnitsOfMeasure extends "Item Units of Measure"
{
    layout
    {
        addafter("Qty. per Unit of Measure")
        {
            field("Default Location"; Rec."Default Location")
            {
                Caption = 'Default Location';
                ApplicationArea = All;
            }
        }
    }
}


