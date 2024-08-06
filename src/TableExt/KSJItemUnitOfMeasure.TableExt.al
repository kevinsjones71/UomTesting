tableextension 50100 ItemUnitOfMeasureExt extends 5404
{
    fields
    {
        field(50101; "Default Location"; Code[10])

        {
            TableRelation = Location.Code;
            Caption = 'Default Location';
            ToolTip = 'Specifies the location that is default for this Unit of Measure';
        }
    }
}