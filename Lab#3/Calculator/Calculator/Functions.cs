using System;

namespace Calculator
{
    static public class Functions
    {
        static public double x;
        static public double y;
        static public string operation;

        static public Calc Calculator;

        static public void Add(object Sender, EventArgs e)
        {
            x = Convert.ToDouble(Calculator.textBox.Text);
            Calculator.textBox.Text = "0";
            operation = "plus";
        }

        static public void Subtract(object Sender, EventArgs e)
        {
            x = Convert.ToDouble(Calculator.textBox.Text);
            Calculator.textBox.Text = "0";
            operation = "minus";
        }

        static public void Multiply(object Sender, EventArgs e)
        {
            x = Convert.ToDouble(Calculator.textBox.Text);
            Calculator.textBox.Text = "0";
            operation = "multiply";
        }

        static public void Divide(object Sender, EventArgs e)
        {
            x = Convert.ToDouble(Calculator.textBox.Text);
            Calculator.textBox.Text = "0";
            operation = "divide";
        }

        static public void SquareRoot(object Sender, EventArgs e)
        {
            x = Convert.ToDouble(Calculator.textBox.Text);
            Calculator.textBox.Text = Math.Sqrt(x).ToString();
            if (Calculator.textBox.Text.Length > 9)
                Calculator.textBox.Text = Calculator.textBox.Text.Substring(0, 9);
            operation = "none";
        }

        static public void Exponent(object Sender, EventArgs e)
        {
            x = Convert.ToDouble(Calculator.textBox.Text);
            Calculator.textBox.Text = "0";
            operation = "power";
        }

        static public void Backspace(object Sender, EventArgs e)
        {
            string s = Calculator.textBox.Text;
            if (s.Length > 1)
                s = s.Substring(0, s.Length - 1);
            else
                s = "0";
            Calculator.textBox.Text = s;
        }

        static public void Dot(object Sender, EventArgs e)
        {
            string str = Calculator.textBox.Text;
            int lenght = str.Length;
            bool dot = false;

            foreach(char c in str)
            {
                if (c == '.') dot = true;
            }
            if(!dot)
                Calculator.textBox.AppendText(".");
        }

        static public void ChangeSign(object Sender, EventArgs e)
        {
            Calculator.textBox.Text = (-(Convert.ToDouble(Calculator.textBox.Text))).ToString();
        }

        static public void Clear(object Sender, EventArgs e)
        {
            Calculator.textBox.Text = "0";
        }

        static public void Equal(object Sender, EventArgs e)
        {
            y = Convert.ToDouble(Calculator.textBox.Text);
            switch(operation)
            {
                case "plus":
                {
                    Calculator.textBox.Text = (x + y).ToString();
                    break;
                }

                case "minus":
                {
                    Calculator.textBox.Text = (x - y).ToString();
                    break;
                }

                case "multiply":
                {
                    Calculator.textBox.Text = (x * y).ToString();
                    break;
                }

                case "divide":
                {
                    Calculator.textBox.Text = (x / y).ToString();
                    break;
                }

                case "power":
                {
                    Calculator.textBox.Text = Math.Pow(x, y).ToString();
                    break;
                }
                default: return;
            }
            if (Calculator.textBox.Text.Length > 9)
                Calculator.textBox.Text = Calculator.textBox.Text.Substring(0, 9);
        }

        static public void num0Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "0";
            else Calculator.textBox.AppendText("0");
        }

        static public void num1Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "1";
            else Calculator.textBox.AppendText("1");
        }

        static public void num2Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "2";
            else Calculator.textBox.AppendText("2");
        }

        static public void num3Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "3";
            else Calculator.textBox.AppendText("3");
        }

        static public void num4Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "4";
            else Calculator.textBox.AppendText("4");
        }

        static public void num5Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "5";
            else Calculator.textBox.AppendText("5");
        }

        static public void num6Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "6";
            else Calculator.textBox.AppendText("6");
        }

        static public void num7Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "7";
            else Calculator.textBox.AppendText("7");
        }

        static public void num8Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "8";
            else Calculator.textBox.AppendText("8");
        }

        static public void num9Click(object Sender, EventArgs e)
        {
            if (Calculator.textBox.Text == "0")
                Calculator.textBox.Text = "9";
            else Calculator.textBox.AppendText("9");
        }
    }
}
