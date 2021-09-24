PageExtension 50001 pageextension70000001 extends "Customer List"
{
    layout
    {
        addafter("Post Code")
        {
            field("My Custom Little Field"; Rec."My Custom Little Field")
            {
                ApplicationArea = Basic;
            }
        }
    }
}

