codeunit 50101 TestOverload
{
    Subtype = Test;

    [Test]
    [HandlerFunctions('HandleMessageFromB')]
    procedure TestOverloadedCalculateClassification()
    var
        Item: Record Item;
    begin
        item.CalculateClassification(false, 'waldo');
    end;

    [MessageHandler]
    procedure HandleMessageFromB(Message: Text[1024])
    begin
        if not Message.Contains('Extension B') then error('wrong message');
    end;
}
