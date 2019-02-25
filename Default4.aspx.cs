using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;

public partial class Default4 : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dt.Columns.Add("no");
            dt.Columns.Add("name");

            Session["DATA"] = dt;
            griddata();
        }
    }
    void griddata()
    {
        GridView1.DataSource = (DataTable)Session["DATA"];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dt = (DataTable)Session["DATA"];
        dr = dt.NewRow();
        dr["no"] = TextBox1.Text;
        dr["name"] = TextBox2.Text;
        dt.Rows.Add(dr);
        Session.Remove("DATA");
        Session["DATA"] = dt;
        griddata();
        DialogResult msg= MessageBox.Show("dO YOU WANT TO CONNTINUE", "cONFIRMATION", MessageBoxButtons.OKCancel);
        if (msg == DialogResult.OK)
        {
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox1.Focus();
        }

        


    }
}