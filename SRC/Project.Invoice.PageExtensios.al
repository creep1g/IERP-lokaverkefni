pageextension 50125 "Project Invoice" extends "Sales Invoice List"
{
    layout
    {

    }
    actions
    {
        addfirst(Processing)
        {
            action("Import XML")
            {
                ApplicationArea = All;
                Image = XMLFile;
                trigger OnAction()
                begin
                    XmlPort.Run(50124, false, true);
                    Func.getFirst();
                end;
            }
        }

    }

    var
        Func: CodeUnit Functions;
}