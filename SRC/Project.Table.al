

table 50121 Project
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Customer No"; Integer)
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

        field(5; Quantity; Integer)
        {
            MinValue = 0;
        }

        field(6; Price; Decimal)
        {
            MinValue = 0;
            DecimalPlaces = 2;
        }

        field(7; Discount; Decimal)
        {
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 2;
        }
    }
}