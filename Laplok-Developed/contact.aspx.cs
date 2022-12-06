using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
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
        private string Sender = ConfigurationManager.AppSettings["Email_Sender"];
        private string Sender_PW = ConfigurationManager.AppSettings["Email_Password"];
        private string Receiver = ConfigurationManager.AppSettings["Email_Receiver"];

        public string SiteKey = ConfigurationManager.AppSettings["APPSETTINGS_SITEKEY"];
        public string SecretKey = ConfigurationManager.AppSettings["APPSETTINGS_SECRETKEY"];
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
            smtpclient.Host = "smtp.office365.com";
            smtpclient.Port = 587;

            //For contact-us@laplok.com
            System.Net.NetworkCredential credential_main = new System.Net.NetworkCredential(Sender, Sender_PW);
            smtpclient.UseDefaultCredentials = false;
            smtpclient.Credentials = credential_main;


           
            // Email Context
            MailMessage mail = new MailMessage();
            mail.To.Add(new MailAddress(Receiver));
            mail.From = new MailAddress(Sender); // Bug: returns null value when the button is clicked while accessing contact page.
            mail.Subject = "From LapLok.com Contact Form";
            mail.Body = string.Format("<html><head><title></title></head><body>" +
                "<b>Full Name:</b> {0}" +
                "<br/><b>Email Address:</b> {1}" +
                "<br/><b>Phone:</b> {2}</b>" +
                "<br/><b>Company Name:</b> {3}" +
                "<br/><br/><b>Message:</b> {4} </body></html>", fullName, email, phone, company, message);
            mail.IsBodyHtml = true;

            try
            {

             
                smtpclient.Send(mail);
                //If successfully sent

                if (Page.IsPostBack)
                {         
                 fullnameText.Text = String.Empty;
                 textEmail.Text = String.Empty;
                 phoneFormat.Text = String.Empty;
                 textCompany.Text = String.Empty;
                 textMessage.Text = String.Empty;
                 AlertSuccessContact.Visible = true;

                 Response.AddHeader("REFRESH", "3;URL=" + HttpContext.Current.Request.Url.AbsolutePath);
                  
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
            //this.submitBtn.Enabled = false;
            //submitBtn.Text = "Please wait...";


        }

        protected void phoneFormat_TextChanged(object sender, EventArgs e)
        {
          
        }



   
    }
}