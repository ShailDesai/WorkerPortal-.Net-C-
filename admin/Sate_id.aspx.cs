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
    DLL DOBJ = new DLL();
    getset getsetobj = new getset();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
        SqlParameter sid = new SqlParameter("@maxid", SqlDbType.Int);
        txtstateid.Text = DOBJ.max("Statemaxid", sid).ToString();

    }
    protected void sbtbutton_Click(object sender, EventArgs e)
    {
         getsetobj.State_id = Convert.ToInt16(txtstateid.Text);
        getsetobj.Statename = txtstatename.Text;

        SqlParameter sid = new SqlParameter("@stateid", getsetobj.State_id);
        SqlParameter sname = new SqlParameter("@statename", getsetobj.Statename);

        SqlParameter[] ddata = new SqlParameter[2] { sid, sname };

        try
        {
            int x = bobj.insert("StateInsert", ddata);

            if (x > 0)
            {
                Label4.Visible = true;

                Label4.Text = "Successfully Inserted";

                DataTable DT = new DataTable();
                DT= DOBJ.RetrieveAll("StateSelect");
                //DataSet DS = new DataSet();
                GridView1.DataSource = DT;
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Label4.Visible = true;
            Label4.Text = ex.Message.ToString();
        }
    }
    }
