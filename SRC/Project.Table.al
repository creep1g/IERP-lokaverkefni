

table 50121 Project
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Customer No"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(2; Project; Text[250])
        {
            NotBlank = true;
        }

        field(3; "Resource Type"; Text[250])
        {
            NotBlank = true;
        }

        field(4; "Product Number"; Code[30])
        {
            DataClassification = ToBeClassified;
        }

        field(5; Quantity; Text[250])
        {
            NotBlank = true;
        }

        field(6; Price; Text[250])
        {
            NotBlank = true;
        }

        field(7; Discount; Text[250])
        {
        }
    }
}