using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laplok_Developed
{
    public partial class faq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Navigate(string pageURL) {

            if (Response.IsClientConnected == true)
            {
              Response.Redirect("~/"+pageURL);
            
            }
             Response.End();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {


            Navigate("contact");


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
          

            Navigate("ourproduct#product_information");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Navigate("howlaplok");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            Navigate("faq#");
        }
    }
}