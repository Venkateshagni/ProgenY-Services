using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;
using System.IO;
using System.Threading;
using System.Timers;
using System.Windows.Forms;

namespace AimEnterprises_project
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendEmail(object sender, EventArgs e)
        {
            //calling for creating the email body with html template   
            if (txt_email.Text != "" || txt_name.Text != "")
            {
                string ACKbody = this.createACKEmailBody(txt_name.Text, txt_email.Text, "Hi " + txt_name.Text + ", Thanks for contacting us. We will Get Back to you!");
                string SELFbody = this.createSELFEmailBody(txt_name.Text, txt_email.Text, txt_message.Text);
                this.SendHtmlFormattedAckEmail("Thanks for Contacting", ACKbody);
                this.SendHtmlFormattedSelfEmail("New User! " + txt_name.Text, SELFbody);
                txt_name.Text = "";
                txt_email.Text = "";
                txt_mobile.Text = "";
                txt_message.Text = "";
            }

        }

        private string createACKEmailBody(string userName, string title, string message)
        {
            string body = string.Empty;
            //using streamreader for reading my htmltemplate   
            using (StreamReader reader = new StreamReader(Server.MapPath("~/HtmlTemplateACK.html")))
            {
                body = reader.ReadToEnd();
            }

            body = body.Replace("{UserName}", userName); //replacing the required things  
            body = body.Replace("{Title}", title);
            body = body.Replace("{message}", message);
            return body;

        }

        private void SendHtmlFormattedAckEmail(string subject, string body)
        {
            using (MailMessage mailMessage = new MailMessage())
            {
                mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["UserName"]);
                mailMessage.Subject = subject;
                mailMessage.Body = body;
                mailMessage.IsBodyHtml = true;
                mailMessage.To.Add(new MailAddress(txt_email.Text));

                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]);
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                NetworkCred.UserName = ConfigurationManager.AppSettings["UserName"]; //reading from web.config  
                NetworkCred.Password = ConfigurationManager.AppSettings["Password"]; //reading from web.config  
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = int.Parse(ConfigurationManager.AppSettings["Port"]); //reading from web.config  
                smtp.Send(mailMessage);

            }
        }

        private string createSELFEmailBody(string userName, string title, string message)
        {
            string body = string.Empty;
            //using streamreader for reading my htmltemplate   
            using (StreamReader reader = new StreamReader(Server.MapPath("~/HtmlTemplateSelf.html")))
            {
                body = reader.ReadToEnd();
            }

            body = body.Replace("{UserName}", userName); //replacing the required things  
            body = body.Replace("{Title}", title);
            body = body.Replace("{message}", message + "Mobile Number: " + txt_mobile.Text.ToString());
            return body;

        }

        private void SendHtmlFormattedSelfEmail(string subject, string body)
        {
            using (MailMessage mailMessage2 = new MailMessage())
            {
                mailMessage2.From = new MailAddress(ConfigurationManager.AppSettings["UserName"]);
                mailMessage2.Subject = subject;
                mailMessage2.Body = body;
                mailMessage2.IsBodyHtml = true;
                mailMessage2.To.Add(new MailAddress(ConfigurationManager.AppSettings["UserName"]));

                SmtpClient smtp2 = new SmtpClient();
                smtp2.Host = ConfigurationManager.AppSettings["Host"];
                smtp2.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]);
                System.Net.NetworkCredential NetworkCred2 = new System.Net.NetworkCredential();
                NetworkCred2.UserName = ConfigurationManager.AppSettings["UserName"]; //reading from web.config  
                NetworkCred2.Password = ConfigurationManager.AppSettings["Password"]; //reading from web.config  
                smtp2.UseDefaultCredentials = true;
                smtp2.Credentials = NetworkCred2;
                smtp2.Port = int.Parse(ConfigurationManager.AppSettings["Port"]); //reading from web.config  
                smtp2.Send(mailMessage2);

            }

        }
    }
}
