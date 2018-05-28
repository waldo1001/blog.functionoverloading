tableextension 50101 ItemExtension2 extends Item //27
{
    procedure CalculateClassification(RunOriginal: Boolean; pText: Text)
    begin
        if RunOriginal then
            rec.CalculateClassification();

        message('Calculated Classification from Extension B with string %1', pText);
    end;
}