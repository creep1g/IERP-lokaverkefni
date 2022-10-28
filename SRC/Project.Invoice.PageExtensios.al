pageextension 50125 "Project Invoice" extends "Sales Invoice"
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
                end;
            }
        }

    }
}