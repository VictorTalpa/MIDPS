//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TButton *startButton;
        TButton *stopButton;
        TButton *zeroButton;
        TButton *exitButton;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TEdit *textbox1;
        TEdit *textbox2;
        TTimer *Timer1;
        TTimer *Timer2;
        void __fastcall exitButtonClick(TObject *Sender);
        void __fastcall Timer1Timer(TObject *Sender);
        void __fastcall startButtonClick(TObject *Sender);
        void __fastcall stopButtonClick(TObject *Sender);
        void __fastcall zeroButtonClick(TObject *Sender);
        void __fastcall Timer2Timer(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
