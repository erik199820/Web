using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace WebShopTest
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Check_Click(object sender, EventArgs e)
        {
            string mengetext = "";
            string artikeltext = "";
            string einzeltext = "";
            string gesamttext = "";

            if (textBoxMenge1 != null)
            {
                mengetext = textBoxMenge1.Text;
            }
            if (textBoxArtikel1 != null)
            {
                artikeltext = textBoxArtikel1.Text;
            }
            if (textBox1EinzelPreis1 != null)
            {
                einzeltext = textBox1EinzelPreis1.Text;
            }
            if (textBox1GesamtPreis1 != null)
            {
                gesamttext = textBox1GesamtPreis1.Text;
            }
            try
            {
                int menge = Convert.ToInt32(mengetext);
                if (menge > 0)
                {
                    textBoxMenge1.BackColor = Color.Green;
                }
                else
                {
                    textBoxMenge1.BackColor = Color.Red;
                }
            }
            catch (Exception)
            {
                textBoxMenge1.BackColor = Color.Red;
            }
            if (artikeltext.Length < 128 && artikeltext.Length > 0)
            {
                textBoxArtikel1.BackColor = Color.Green;
            }
            else
            {
                textBoxArtikel1.BackColor = Color.Red;
            }
            try
            {
                double einzelpr = Convert.ToDouble(einzeltext);
                if (einzelpr > 0)
                {
                    textBox1EinzelPreis1.BackColor = Color.Green;
                }
                else
                {
                    textBox1EinzelPreis1.BackColor = Color.Red;
                }
            }
            catch
            {
                textBox1EinzelPreis1.BackColor = Color.Red;
            }
            try
            {
                int menge = Convert.ToInt32(mengetext);
                double einzelpr = Convert.ToDouble(einzeltext);
                double gesamtpr = Convert.ToDouble(gesamttext);
                if(gesamtpr == (menge * einzelpr))
                {
                    textBox1GesamtPreis1.BackColor = Color.Green;
                    Gesamt.Text = gesamtpr.ToString();
                }
                else
                {
                    textBox1GesamtPreis1.BackColor = Color.Red;
                }
            }
            catch
            {
                textBox1GesamtPreis1.BackColor = Color.Red;
            }
        }
    }
}