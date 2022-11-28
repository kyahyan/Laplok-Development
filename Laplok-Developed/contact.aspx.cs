using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Security.Policy;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laplok_Developed
{
    public partial class contact : System.Web.UI.Page
    {
        private string APP_Email = ConfigurationManager.AppSettings["APP_Email"];
        private string APP_Password = ConfigurationManager.AppSettings["APP_Password"];
        protected void Page_Load(object sender, EventArgs e)
        {


              Page.MaintainScrollPositionOnPostBack = true;
           

        }

        private void sendEmail() {

            string fullName = fullnameText.Text.Trim();
            string email = textEmail.Text.Trim();
            string phone = phoneFormat.Text.Trim();
            string company = textCompany.Text.Trim();
            string message = textMessage.Text.Trim();

            SmtpClient smtpclient = new SmtpClient();
            smtpclient.DeliveryMethod = SmtpDeliveryMethod.Network;

            smtpclient.EnableSsl = true;
            smtpclient.Host = "smtp.gmail.com";
            smtpclient.Port = 587;

            //For contact-us@laplok.com
            System.Net.NetworkCredential credential_main = new System.Net.NetworkCredential(APP_Email, APP_Password);
            smtpclient.UseDefaultCredentials = false;
            smtpclient.Credentials = credential_main;

            // Email Context
            MailMessage mail = new MailMessage();
            mail.To.Add(new MailAddress(APP_Email));
            mail.From = new MailAddress(email); // Bug: returns null value when the button is clicked while accessing contact page.
            mail.Subject = "From LapLok.com Contact Form";
            mail.Body = string.Format("<html><head><title></title></head><body>" +
                "Full Name: <b>{0}</b>" +
                "<br/>Email Address: <b>{1}</b>" +
                "<br/>Phone: <b>{2}</b>" +
                "<br/>Company Name: <b>{3}</b>" +
                "<br/><br/>Message:<br/><b>{4}</b>",
                fullName, email, phone, company, message);
            mail.IsBodyHtml = true;

            try
            {

                submitBtn.Attributes.Add("onclick", "this.disabled=true;" + submitBtn.Page.ClientScript.GetPostBackEventReference(submitBtn, String.Empty));
                smtpclient.Send(mail);
                //If successfully sent
                if (Page.IsPostBack)
                {
                    submitBtn.Attributes.Add("onclick", "this.disabled=false;" + submitBtn.Page.ClientScript.GetPostBackEventReference(submitBtn, String.Empty));
                    fullnameText.Text = String.Empty;
                    textEmail.Text = String.Empty;
                    phoneFormat.Text = String.Empty;
                    textCompany.Text = String.Empty;
                    textMessage.Text = String.Empty;
                    AlertSuccessContact.Visible = true;
                    submitBtn.Enabled = true;
                  
                }
              

            }
            catch (Exception ex)
            {

                Console.WriteLine("ERROR!!!!" + ex.Message);

            }


        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
           
            sendEmail();

        }

        protected void phoneFormat_TextChanged(object sender, EventArgs e)
        {

        }
    }
}