using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_questionfeedback : System.Web.UI.Page
{
  BLL bobj =new BLL();
    getset getsetobj= new getset();
    DLL DOBJ = new DLL();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Visible = false;
        SqlParameter rid = new SqlParameter("@maxid", SqlDbType.Int);
        txtrid.Text = DOBJ.max("ratingquemaxid", rid).ToString();

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        getsetobj.Ratingid = Convert.ToInt16(txtrid.Text);
        getsetobj.Que1 = txtque1.Text;
        getsetobj.Que2 = txtque2.Text;
        getsetobj.Que3 = txtque3.Text;
        getsetobj.Que4 = txtque4.Text;
        getsetobj.Que5 = txtque5.Text;

        SqlParameter r1 = new SqlParameter("@id", getsetobj.Ratingid);
        SqlParameter q1 = new SqlParameter("@q1", getsetobj.Que1);
        SqlParameter q2= new SqlParameter("@q2", getsetobj.Que2);
        SqlParameter q3 = new SqlParameter("@q3", getsetobj.Que3);
        SqlParameter q4 = new SqlParameter("@q4", getsetobj.Que4);
        SqlParameter q5 = new SqlParameter("@q5", getsetobj.Que5);

        SqlParameter[] ddata = new SqlParameter[6] {r1, q1, q2, q3, q4, q5 };


        try
        {
            int x = bobj.insert("RatingQuestioninsert", ddata);

            if (x > 0)
            {
                Label8.Visible = true;

                Label8.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            Label8.Visible = true;
            Label8.Text = ex.Message.ToString();
        }
    }






}