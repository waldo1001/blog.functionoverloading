codeunit 50100 "Test Overload"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', false, false)]
    local procedure TestOverLoad()
    var
        Item: Record Item;
    begin
        item.CalculateClassification(true, 'waldo');
    end;
}