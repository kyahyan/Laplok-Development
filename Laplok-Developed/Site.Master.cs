using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laplok_Developed
{
    public partial class SiteMaster : MasterPage
    {
        private string APP_Email = ConfigurationManager.AppSettings["APP_Email"];
        private string APP_Password = ConfigurationManager.AppSettings["APP_Password"];

        private string APP_Email2 = ConfigurationManager.AppSettings["APP_Email2"];
        private string APP_Password2 = ConfigurationManager.AppSettings["APP_Password2"];
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
        }
        private void sendEmail()
        {

            string emailadd = emailAddress.Text.Trim();
          
            SmtpClient smtpclient = new SmtpClient();
            smtpclient.DeliveryMethod = SmtpDeliveryMethod.Network;

            smtpclient.EnableSsl = true;
            smtpclient.Host = "smtp.gmail.com";
            smtpclient.Port = 587;

            //For contact-us@laplok.com
            System.Net.NetworkCredential credential_main = new System.Net.NetworkCredential(APP_Email, APP_Password);
            smtpclient.UseDefaultCredentials = false;
            smtpclient.Credentials = credential_main;

            MailMessage mail = new MailMessage();
            mail.To.Add(new MailAddress(APP_Email));
            mail.From = new MailAddress(emailadd); // Bug: returns null value when the button is clicked while accessing contact page.
            mail.Subject = "New Email Subscriber";
            mail.Body = string.Format("<html><head><title></title></head><body> You have received an email from <b>{0}</b>." +
                " <br/> {0}",
                emailadd);
            mail.IsBodyHtml = true;

            try
            {
                subscribeBtn.Attributes.Add("onclick", "this.disabled=true;" + subscribeBtn.Page.ClientScript.GetPostBackEventReference(subscribeBtn, String.Empty));
                smtpclient.Send(mail);
                if (Page.IsPostBack)
                {
                    emailAddress.Text = String.Empty;
                    AlertSuccessSite.Visible = true;
                    subscribeBtn.Enabled = true;
                    subscribeBtn.Attributes.Add("onclick", "this.disabled=false;" + subscribeBtn.Page.ClientScript.GetPostBackEventReference(subscribeBtn, String.Empty));

                }
            }
            catch (Exception ex)
            {

                Console.WriteLine("ERROR!!!!" + ex.Message);

            }


        }

        protected void subscribeBtn_Click(object sender, EventArgs e)
        {
            
            sendEmail();
        }
    }
}