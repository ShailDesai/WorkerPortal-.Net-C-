using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class uodate_profile : System.Web.UI.Page
{
     getset getsetobj = new getset();
    BLL bobj = new BLL();
    protected void Page_Load(object sender, EventArgs e)
    {
         Label12.Visible = false;
         txtUserName.Text = Session["UserInfo"].ToString();
         txtUserName.Enabled = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
              string temp = null;
        if (FileUpload1.HasFile)
        {
            temp = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(temp));
        }

        SqlParameter usid = new SqlParameter("@username", txtUserName.Text);
        SqlParameter add1 = new SqlParameter("@address1", txtadd1.Text);
        SqlParameter add2 = new SqlParameter("@address2", txtadd2.Text);
        SqlParameter sid = new SqlParameter("@stateid", DropDownList1.SelectedValue);
        SqlParameter cid = new SqlParameter("@cityid", DropDownList2.SelectedValue);
        SqlParameter pid= new SqlParameter("@pincode", txtpincode.Text);
        SqlParameter conid = new SqlParameter("@contact_no", txtcontactno.Text);
        SqlParameter qid = new SqlParameter("@question", DropDownList3.SelectedValue);
        SqlParameter ansid = new SqlParameter("@answer", txtans.Text);
        SqlParameter img = new SqlParameter("@image",temp);

        SqlParameter[] ddata = new SqlParameter[10] {usid,add1,add2,sid,cid,pid,conid,qid,ansid,img};

        try
        {
            int x = bobj.insert("UpdateProfile", ddata);

            if (x > 0)
            {
                Label12.Visible = true;

                Label12.Text = "Successfully Updated";
               // Response.Redirect("http://localhost:29195/USER/UserProfile.aspx");
            }
        }
        catch (Exception ex)
        {
            Label12.Visible = true;
            Label12.Text = ex.Message.ToString();
        }
    }
    }
    
