#include <vcl.h>
#include <stdio.h>
#include <time.h>
#pragma hdrstop

#include "Unit1.h"
#include "dos.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

TForm1 *Form1;

struct date d;
struct time t;

int width;
int height;
int x;
int y;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner) : TForm(Owner)
{
        stopButton->Enabled = false;
        srand(time(NULL));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
        char buf[20];
        getdate(&d);
        gettime(&t);
        sprintf(buf,"%02d-%02d-%4d %02d:%02d:%02d",d.da_day,d.da_mon,d.da_year,t.ti_hour,t.ti_min,t.ti_sec);
        timebox->Text=(AnsiString)buf;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::startButtonClick(TObject *Sender)
{
        paintBox->Repaint();
        paintBox->Canvas->Pen->Color = clRed;
        width = Form1->paintBox->Width;
        height = Form1->paintBox->Height;
        x = 0;
        Form1->paintBox->Canvas->MoveTo(0, height / 2.0);
        stopButton->Enabled = true;
        startButton->Enabled = false;
        Timer2->Enabled = true;        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::paintBoxPaint(TObject *Sender)
{
        paintBox->Canvas->Pen->Color = clBlack;
        paintBox->Canvas->Brush->Color = clBlack;
        paintBox->Canvas->Brush->Style = bsCross;
        paintBox->Canvas->Rectangle(0, 0, paintBox->Width, paintBox->Height);        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::stopButtonClick(TObject *Sender)
{
        Timer2->Enabled = false;
        startButton->Enabled = true;
        stopButton->Enabled = false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::exitButtonClick(TObject *Sender)
{
        Close();
}
//---------------------------------------------------------------------------
void DrawLine()
{
        y = (height / 2.0) + (rand() % 61 - 30);
        Form1->paintBox->Canvas->LineTo(++x, y);
        Form1->Panel2->Height = y;
}
void __fastcall TForm1::Timer2Timer(TObject *Sender)
{
        if(x == width)
                stopButtonClick(Sender);
        DrawLine();
}
//---------------------------------------------------------------------------
