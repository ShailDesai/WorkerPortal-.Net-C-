using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Company_CompanyLogin : System.Web.UI.Page
{
    BLL bobj = new BLL();
 DLL dobj = new DLL(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlParameter cid = new SqlParameter("@cid",TextBox1.Text );
        SqlParameter cname = new SqlParameter("@companyname",TextBox2.Text );
        SqlParameter cloc = new SqlParameter("@clocation", DropDownList1.SelectedValue);
        SqlParameter cp = new SqlParameter("@password", TextBox4.Text);
        SqlParameter[] ddata = new SqlParameter[4] {cid,cname,cloc,cp };

        try
        {
            int x = bobj.insert("Companyinsert", ddata);

            if (x > 0)
            {
                Label5.Visible = true;

                Label5.Text = "Successfully Inserted";
                Response.Redirect("~/Company/payment.aspx");
            }
        }
        catch (Exception ex)
        {
            Label5.Visible = true;
            Label5.Text = ex.Message.ToString();
        }
    }
   
}
