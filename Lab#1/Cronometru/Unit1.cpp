#include <vcl.h>
#include <iostream>
#include <sstream>
#pragma hdrstop

#include "Unit1.h"
#include "dos.h"

#pragma package(smart_init)
#pragma resource "*.dfm"

using namespace std;

TForm1 *Form1;

void PrintTime();

struct date d;
struct time t;

struct countdown
{
        int minutes;
        int seconds;
        int zecimals;
};

countdown myTime;

__fastcall TForm1::TForm1(TComponent* Owner) : TForm(Owner)
{
        myTime.minutes = 0;
        myTime.seconds = 0;
        myTime.zecimals = 0;
        PrintTime();
        Timer2->Enabled = false;
        stopButton->Enabled = false;
}

void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
        char buf[20];
        getdate(&d);
        gettime(&t);
        sprintf(buf,"%02d-%02d-%4d %02d:%02d:%02d",d.da_day,d.da_mon,d.da_year,t.ti_hour,t.ti_min,t.ti_sec);
        textbox1->Text=(AnsiString)buf;
}

void PrintTime()
{
        stringstream timeFormat;
        timeFormat << "        ";
        timeFormat << ((myTime.minutes < 10) ? "0" : "") << myTime.minutes << " min  ";
        timeFormat << ((myTime.seconds < 10) ? "0" : "") << myTime.seconds << " sec  ";
        timeFormat << /*((myTime.zecimals < 10) ? "0" : "") <<*/ myTime.zecimals << " zec";
        string temp = timeFormat.str();
        Form1->textbox2->Text = (AnsiString)temp.c_str();
}

void __fastcall TForm1::exitButtonClick(TObject *Sender)
{
        Close();
}

void __fastcall TForm1::startButtonClick(TObject *Sender)
{
        Timer2->Enabled = true;
        startButton->Enabled = false;
        zeroButton->Enabled = false;
        stopButton->Enabled = true;
}

void __fastcall TForm1::stopButtonClick(TObject *Sender)
{
        Timer2->Enabled = false;
        startButton->Enabled = true;
        zeroButton->Enabled = true;
        stopButton->Enabled = false;
}

void __fastcall TForm1::zeroButtonClick(TObject *Sender)
{
        myTime.minutes = 0;
        myTime.seconds = 0;
        myTime.zecimals = 0;
        PrintTime();
}

void __fastcall TForm1::Timer2Timer(TObject *Sender)
{
        if(myTime.zecimals == 9)
        {
                myTime.zecimals = 0;
                if(myTime.seconds == 59)
                {
                        myTime.seconds = 0;
                        myTime.minutes++;
                }
                else myTime.seconds++;
        }
        else myTime.zecimals++;
        PrintTime();
}

