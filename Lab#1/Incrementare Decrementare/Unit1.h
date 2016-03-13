//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TButton *upButton;
        TButton *downButton;
        TButton *exitButton;
        TEdit *textBox;
        TLabel *Label1;
        TLabel *status;
        TLabel *Label3;
        TLabel *Label2;
        void __fastcall upButtonClick(TObject *Sender);
        void __fastcall downButtonClick(TObject *Sender);
        void __fastcall exitButtonClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
