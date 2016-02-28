#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"

#pragma package(smart_init)
#pragma resource "*.dfm"

TForm1 *Form1;

__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
        status->Caption = "";
}

void __fastcall TForm1::upButtonClick(TObject *Sender)
{
        textBox->Text = textBox->Text.ToInt() + 1;
        status->Caption = "Incrementare";
}

void __fastcall TForm1::downButtonClick(TObject *Sender)
{
        textBox->Text = textBox->Text.ToInt() - 1;
        status->Caption = "Decrementare";
}

void __fastcall TForm1::exitButtonClick(TObject *Sender)
{
        Close();
}
 