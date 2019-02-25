using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class changepassword : System.Web.UI.Page
{
    getset getsetobj = new getset();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["UserInfo"] == null) ;
            {
                Response.Redirect("../Login.aspx");
            }
            
            Label5.Visible = false;
            txtUserName.Text = Session["UserInfo"].ToString();
            txtUserName.Enabled = false;
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {



        SqlParameter un = new SqlParameter("@username", txtUserName.Text);
        SqlParameter opw = new SqlParameter("@oldpassword", txtOldPassword.Text);
        SqlParameter npw = new SqlParameter("@newpassword", txtNewPassword.Text);


        SqlParameter[] ddata = new SqlParameter[3] { un, opw, npw };

        try
        {
            int x = bobj.insert("ChangePassword", ddata);

            if (x > 0)
            {
                Label5.Visible = true;

                Label5.Text = "Successfully Updated";
                Response.Redirect("~/Logout.aspx");
            }
        }
        catch (Exception ex)
        {
            Label5.Visible = true;
            Label5.Text = ex.Message.ToString();
        }
    }
}