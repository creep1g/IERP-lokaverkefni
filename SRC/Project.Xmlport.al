xmlport 50124 ProjectXml
{
    Direction = Import;

    schema
    {
        textelement(Flinsley)
        {
            tableelement(Invoice; Project)
            {
                fieldelement(CustomerNo; Invoice."Customer No") { }

                fieldelement(Project; Invoice.Project) { }

                fieldelement(ResourceType; Invoice."Resource Type") { }

                fieldelement(ProductNumber; Invoice."Product Number") { }

                fieldelement(Qty; Invoice.Quantity) { }

                fieldelement(Price; Invoice.Price) { }

                fieldelement(Discount; Invoice.Discount) { }

            }
        }
    }
}