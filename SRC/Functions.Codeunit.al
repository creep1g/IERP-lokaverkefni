codeunit 50120 Functions
{
    procedure CreateSalesHeader(): Code[20]
    var
    begin

    end;

    procedure GetNextDocumentNumber(): Code[20]
    var
        SalesHdr: Record "Sales Header";
        NoMgt: Codeunit NoSeriesManagement;
        NextNo: Code[20];
        CurrNo: code[20];

    begin
        //This function returns the next document number for the sales invoice.
        NextNo := '';
        SalesHdr.SetFilter(SalesHdr."Document Type", 'Invoice');
        If SalesHdr.FindLast() then begin
            NextNo := NoMgt.GetNextNo3(SalesHdr.GetNoSeriesCode(), Today, true, false);
            NoMgt.IncrementNoText(NextNo, 1);
        end;
        exit(NextNo);
    end;


    procedure ConvertStringToDecimal(input: Text[250]): Decimal
    begin

    end;

}