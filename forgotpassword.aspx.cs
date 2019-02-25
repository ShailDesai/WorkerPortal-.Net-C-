using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class forgotpassword : System.Web.UI.Page
{
    DLL dobj = new DLL();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
    }
    protected void sbtforgotpass_Click(object sender, EventArgs e)
    {
        SqlParameter uid = new SqlParameter("@Username",txtusername.Text );
        SqlParameter que = new SqlParameter("@Question_id",DropDownList1.SelectedValue);
        SqlParameter ans = new SqlParameter("@Answer",txtanswer.Text );

        SqlParameter[] ddata = new SqlParameter[3] { uid, que, ans };
        DataTable dt = dobj.RetrieveInfo("forgotpassword", ddata);
       


        if (dt.Rows.Count > 0)
        {
            foreach (DataRow temp in dt.Rows)
            {
                Label3.Visible = true;
                Label3.Text = "your password has been mail to your mail id ";
                    
                MailMessage mail = new MailMessage();
                SmtpClient smtp = new SmtpClient()
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    //UseDefaultCredentials = true,
                    Credentials = new NetworkCredential("crmsoftsys@gmail.com", "dhruti123"),
                    EnableSsl = true
                };
                MailAddress esender = new MailAddress("crmsoftsys@gmail.com");
                mail.From = esender; 
                MailAddress erec = new MailAddress(temp["email_id"].ToString());
                mail.To.Add(erec);

                mail.Body = "Your Password For Username '" + txtusername.Text + "' is '" + temp["password"].ToString() + "'";
                mail.Subject = "ForGot Password";
                smtp.Send(mail);
                //Response.Redirect("~/Login.aspx");

            }
        }
        else
        {
            Label3.Visible = true;
            Label3.Text = "invalid info";
        }
    }
}

