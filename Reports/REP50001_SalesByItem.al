report 50001 "Item Sales"
{
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Item Sales';
    ApplicationArea = All;
    RDLCLayout = 'SalesByItem.rdl';

    dataset
    {
        dataitem(DataItemName; Item)
        {
            RequestFilterFields = "No.", "Date Filter";
            column(No; "No.")
            {
                Caption = 'No.';
                IncludeCaption = true;
            }
            column(Name; Description)
            {
                Caption = 'Description';
                IncludeCaption = true;
            }
            column(COGSAmount; "COGS (LCY)")
            {
                Caption = 'COGS (LCY)';
                IncludeCaption = true;
            }
            column(SalesAmount; "Sales (LCY)")
            {
                Caption = 'Sales (LCY)';
                IncludeCaption = true;
            }
            column(ProfitAmount; "Sales (LCY)" - "COGS (LCY)")
            {
                Caption = 'Profit Amount';
            }
        }
    }

    labels
    {
        SalesByItemsCap = 'Sales By Item';
        ProfitCap = 'Profit Amount';
    }



}