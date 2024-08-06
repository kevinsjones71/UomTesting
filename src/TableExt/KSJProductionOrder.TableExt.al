tableextension 50103 ProductionOrderExt extends 5405
{
    fields
    {
        field(50100; "Production UOM"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Production UOM';
            TableRelation = "Item Unit of Measure".code where("Item No." = field("Source No."));
        }
    }
}