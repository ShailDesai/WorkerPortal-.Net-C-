using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    BLL bobj = new BLL();
    getset getsetobj = new getset();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label11.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        getsetobj.Rating_id = Convert.ToInt16(txtratingid.Text);
        getsetobj.Que1 = txtq1.Text;
        getsetobj.Que2 = txtq2.Text;
        getsetobj.Que3 = txtq3.Text;
        getsetobj.Que4 = txtq4.Text;
        getsetobj.Que5 = txtq5.Text;
        getsetobj.Totalmarks = Convert.ToInt16(txttotalmarks.Text);
        getsetobj.Customer_id= Convert.ToInt16(txtcustomerid.Text);
        getsetobj.Worker_id = Convert.ToInt16(txtworkerid.Text);

        SqlParameter rtid = new SqlParameter("@ratingid", getsetobj.Rating_id);
        SqlParameter rtq1 = new SqlParameter("@q1", getsetobj.Que1);
        SqlParameter rtq2 = new SqlParameter("@q2", getsetobj.Que2);
        SqlParameter rtq3 = new SqlParameter("@q3", getsetobj.Que3);
        SqlParameter rtq4 = new SqlParameter("@q4", getsetobj.Que4);
        SqlParameter rtq5 = new SqlParameter("@q5", getsetobj.Que5);
        SqlParameter rttm = new SqlParameter("@totalmarks", getsetobj.Totalmarks);
        SqlParameter rtcid = new SqlParameter("@customerid", getsetobj.Customer_id);
        SqlParameter rtwid = new SqlParameter("@workerid", getsetobj.Worker_id);

        SqlParameter[] ddata = new SqlParameter[9] { rtid,rtq1,rtq2,rtq3,rtq4,rtq5,rttm,rtcid,rtwid };

        try
        {
            int x = bobj.insert("RatingQuestions", ddata);

            if (x > 0)
            {
                Label11.Visible = true;

                Label11.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            Label11.Visible = true;
            Label11.Text = ex.Message.ToString();
        }
    }
}