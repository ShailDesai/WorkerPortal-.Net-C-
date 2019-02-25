using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_search : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
       
    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Visible = true;
        Label6.Visible = false;
        Label2.Visible = false;
        Label2.Text = dobj.search("SELECT CITY_ID FROM USERMASTER WHERE USERNAME='" + Session["UserInfo"] + "'").ToString();
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row;
        row = GridView1.SelectedRow;
        TextBox2.Text = row.Cells[1].Text;
        TextBox4.Text = row.Cells[3].Text;
        TextBox3.Text = Session["UserInfo"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlParameter cn = new SqlParameter("@customername", TextBox3.Text);
        SqlParameter wn = new SqlParameter("@workername", TextBox2.Text);
        SqlParameter wm = new SqlParameter("@workermobileno", TextBox4.Text);

        SqlParameter[] ddata = new SqlParameter[3] { cn, wn, wm };

        try
        {
            int x = bobj.insert("bookdatainsert", ddata);

            if (x > 0)
            {
                Label7.Visible = true;

                Label7.Text = "Successfully booked";
            }
        }
        catch (Exception ex)
        {
            Label7.Visible = true;
            Label7.Text = ex.Message.ToString();
        }
    }
}