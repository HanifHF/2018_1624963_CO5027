using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace _1624963_CO5027
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Send email using a mail server client that requires login credentials and a secure connection

            //Create  mail client and message with to and from address, and set message subject and body

            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("hfkiddo@gmail.com", "hfkiddo@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtBody.Text;

            //settings specific to the mail service, e.g server location, port number and that ssl is required
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            //create credentials - e.g username and password for the account
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("hfkiddo@gmail.com", "hanif7267993");
            smtpClient.Credentials = credentials;
            msg = new MailMessage("hfkiddo@gmail.com", "hfkiddo@gmail.com");

            try
            {
                smtpClient.Send(msg);
                litResult.Text =  "<p> Success, mail sent using SMTP with scre connection and credentials </p>";
            }
            catch(Exception ex)
            { 
                //display the full error to the user
                litResult.Text = "<p> Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
            
        }

        protected void txtBody_TextChanged(object sender, EventArgs e)
        {

        }
    }
}