using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Payment : System.Web.UI.Page
{
    BLL bobj = new BLL();
    DLL dobj = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Visible = false;
        paydate.Text = DateTime.Now.ToShortDateString();
    }
    protected void Btnsbt_Click(object sender, EventArgs e)
    {
        SqlParameter pid = new SqlParameter("@paymentid", payid.Text);
        SqlParameter pdt = new SqlParameter("@paymentdate", paydate.Text);
        SqlParameter cn = new SqlParameter("@companyname", txtcmpname.Text);
        SqlParameter tow = new SqlParameter("@typeofworker", DropDownList1.Text);
        SqlParameter trw = new SqlParameter("@totalreqworker", reqwrk.Text);
        SqlParameter tw = new SqlParameter("@totalpay",paywage.Text);   
        SqlParameter ct = new SqlParameter("@companyaccount", TextBox1.Text);
        SqlParameter tt = new SqlParameter("@transferto", Transfertotxt.Text);

       

        SqlParameter[] ddata = new SqlParameter[8] { pid,pdt,cn,tow,trw,tw,ct,tt};

        try
        {
            int x = bobj.insert("PaymentInsert", ddata);

            if (x > 0)
            {
                Label8.Visible = true;

                Label8.Text = "Successfully Inserted";
                Session["req"] = reqwrk.Text;
                int a = dobj.update("update bankinfo set amount = amount + "+paywage.Text+" where accontno=120410116025");
                int b = dobj.update("update bankinfo set amount = amount - " + paywage.Text + " where accontno="+TextBox1.Text+"");
                Response.Redirect("view.aspx");
            }
        }
        catch (Exception ex)
        {
            Label8.Visible = true;
            Label8.Text = ex.Message.ToString();
        }
    }

    protected void reqwrk_TextChanged(object sender, EventArgs e)
    {
        paywage.Text = (Convert.ToInt16(reqwrk.Text) * 10).ToString();
    }
}

    