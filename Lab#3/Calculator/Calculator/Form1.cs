using System;
using System.Windows.Forms;

namespace Calculator
{
    public partial class Calc : Form
    {
        public Calc()
        {
            InitializeComponent();
            Functions.Calculator = this;
            
            buttonBackspace.Click += new EventHandler(Functions.Backspace);
            buttonMultiply.Click += new EventHandler(Functions.Multiply);
            textBox.TextChanged += new EventHandler(Functions.TextBoxChanged);
            buttonDivide.Click += new EventHandler(Functions.Divide);
            buttonEqual.Click += new EventHandler(Functions.Equal);
            buttonMinus.Click += new EventHandler(Functions.Subtract);
            buttonSqrt.Click += new EventHandler(Functions.SquareRoot);
            buttonSign.Click += new EventHandler(Functions.ChangeSign);
            buttonPlus.Click += new EventHandler(Functions.Add);
            buttonPow.Click += new EventHandler(Functions.Exponent);
            buttonDot.Click += new EventHandler(Functions.Dot);
            buttonC.Click += new EventHandler(Functions.Clear);

            num0.Click += new EventHandler(Functions.num0Click);
            num1.Click += new EventHandler(Functions.num1Click);
            num2.Click += new EventHandler(Functions.num2Click);
            num3.Click += new EventHandler(Functions.num3Click);
            num4.Click += new EventHandler(Functions.num4Click);
            num5.Click += new EventHandler(Functions.num5Click);
            num6.Click += new EventHandler(Functions.num6Click);
            num7.Click += new EventHandler(Functions.num7Click);
            num8.Click += new EventHandler(Functions.num8Click);
            num9.Click += new EventHandler(Functions.num9Click);
        }
    }
}

