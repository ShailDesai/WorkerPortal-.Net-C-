using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    BLL bobj= new BLL();
    DLL dobj= new DLL();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label12.Visible = false;
        txtdate.Text = DateTime.Now.ToShortDateString();
        SqlParameter rid = new SqlParameter("@maxid", SqlDbType.Int);
        txtreqid.Text = dobj.max("Requirmentmaxid", rid).ToString();
    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
         

        SqlParameter rid = new SqlParameter("@reqid", txtreqid.Text);
        SqlParameter dt = new SqlParameter("@date", txtdate.Text);
        SqlParameter daf = new SqlParameter("@rdateto", txtdatefrom.Text);
        SqlParameter dat = new SqlParameter("@rdatefrom", txtdateto.Text);
        SqlParameter wid = new SqlParameter("@workerid",DropDownList2.SelectedValue);
        SqlParameter tw = new SqlParameter("@totalworker", txttotalworker.Text);
        SqlParameter wg = new SqlParameter("@wages",txtwages.Text);
        SqlParameter ta = new SqlParameter("@totalamount", txttotalamt.Text);
        SqlParameter cid = new SqlParameter("@cityid", DropDownList1.SelectedValue);

        SqlParameter[] ddata = new SqlParameter[9] { rid, dt, daf, dat, wid, tw, wg, ta, cid };

        try
        {
            int x = bobj.insert("Requirmentpro", ddata);

            if (x > 0)
            {
                Label12.Visible = true;

                Label12.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            Label12.Visible = true;
            Label12.Text = ex.Message.ToString();
        }
    }
    protected void txtdateto_TextChanged(object sender, EventArgs e)
    {
        DateTime dt1, dt2;
        dt1 = Convert.ToDateTime(txtdatefrom.Text);
        dt2 = Convert.ToDateTime(txtdateto.Text);
        int x = dt2.Subtract(dt1).Days;
        if (x < 0)
        {
            MessageBox.Show("date to should be after date from");
            txtdateto.Text = null;
            txtdateto.Focus();
        }
    }
}
    
