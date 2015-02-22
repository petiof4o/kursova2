using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var items = new Dictionary<string,double>
            {
                {"Хляб", 1.10},
                {"Картофи", 1.35},
                {"Лютеница", 3.10}
            };

            drop1.DataSource = items.Keys;
            drop2.DataSource = items.Keys;
            drop1.DataBind();
            drop2.DataBind();
        }

        protected void but1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(text1.Text) && !string.IsNullOrEmpty(text2.Text))
            {
                CalculateRow(text1, text2, text3);
            }
            if (!string.IsNullOrEmpty(text4.Text) && !string.IsNullOrEmpty(text5.Text))
            { 
                CalculateRow(text4, text5, text6); 
            }

            var sum = (string.IsNullOrEmpty(text3.Text) ? 0 : double.Parse(text3.Text))
                + (string.IsNullOrEmpty(text6.Text) ? 0 : double.Parse(text6.Text));

            total.Text = sum.ToString("0.00");
        }

        private void CalculateRow(TextBox quantityField, TextBox priceField, TextBox totalField)
        {
            var quantity = int.Parse(quantityField.Text);
            var price = double.Parse(priceField.Text);

            totalField.Text = (quantity * price).ToString("0.00");
        }
    }
}