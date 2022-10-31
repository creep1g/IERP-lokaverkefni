codeunit 50120 Functions
{

    procedure getFirst()
    var
        proj: Record Project;
        hdr: Record "Sales Header";
    begin
        if proj.FindFirst() then
            CreateSalesHeader(hdr);
        AddDataToSalesHeader(proj, hdr);
        CreateSalesLines(proj, hdr);
    end;

    procedure CreateSalesHeader(var Hdr: Record "Sales Header")
    begin
        Hdr.Init();
        Hdr."No." := GetNextDocumentNumber();
        Hdr."Document Type" := Hdr."Document Type"::Invoice;
        Hdr.Insert();
    end;


    procedure AddDataToSalesHeader(Proj: Record Project; var Hdr: Record "Sales Header")
    var
    begin
        Hdr.Validate("Sell-to Customer No.", Proj."Customer No");
        Hdr.Modify();
    end;

    procedure CreateSalesLines(Proj: Record Project; var Hdr: Record "Sales Header")
    var
        Lines: Record "Sales Line";
    begin
        Lines.SetFilter(Lines."Document Type", 'Invoice');
        Lines.SetFilter(Lines."Document No.", Hdr."No.");
        if Lines.FindFirst() then
            Lines.Validate("Document Type", Hdr."Document Type");
        Lines.Validate("Document No.", Hdr."No.");
        Lines.Validate("Item Reference No.", Proj."Product Number");
        Lines.Validate(Quantity, Proj.Quantity);
        Lines.Validate("Unit Price", Proj.Price);
        Lines.Validate("Line Discount %", Proj.Discount);
        // if Lines.FindFirst() then
        Lines.Insert();

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