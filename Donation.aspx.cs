using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Donation : System.Web.UI.Page
{
    BLL bobj = new BLL();
    DLL dobj = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlParameter dn = new SqlParameter("@Dname", TextBox1.Text);
        SqlParameter da = new SqlParameter("@Damt", TextBox2.Text);

        SqlParameter[] ddata = new SqlParameter[2] { dn, da };

        try
        {
            int x = bobj.insert("DonationInsert", ddata);

            if (x > 0)
            {
                Label3.Visible = true;

                Label3.Text = "Successfully Inserted";


            }
        }
        catch (Exception ex)
        {
            Label3.Visible = true;
            Label3.Text = ex.Message.ToString();
        }
    }
}
    
  
