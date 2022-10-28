page 50122 "Project List"
{
    PageType = List;

    UsageCategory = Lists;

    SourceTable = Project;

    layout
    {
        area(content)
        {
            repeater("Project Table")
            {

                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the the identification number of our customer';
                }
                field(Project; Rec.Project)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }
                field(Disconunt; Rec.Discount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Delete All")
            {
                ApplicationArea = All;
                Image = Delete;
                trigger OnAction()
                var
                    MgtSetup: Record Project;

                begin
                    MgtSetup.DeleteAll;
                    MgtSetup.Init;

                end;

            }
        }
    }


}