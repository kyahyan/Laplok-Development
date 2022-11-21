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


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Response.IsClientConnected == true)
            {
                Response.Redirect("~/ourproduct#product_information");
            }
            Response.End();


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (Response.IsClientConnected == true)
            {
                Response.Redirect("~/ourproduct#product_information");
            }
            Response.End();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (Response.IsClientConnected == true)
            {
                Response.Redirect("~/howlaplok");
            }
            Response.End();
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            if (Response.IsClientConnected == true)
            {
                Response.Redirect("~/faq#");
            }
            Response.End();
        }
    }
}