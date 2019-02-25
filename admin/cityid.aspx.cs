using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
     BLL bobj = new BLL();
     DLL DOBJ = new DLL();
    getset getsetobj = new getset();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
        SqlParameter cid = new SqlParameter("@maxid", SqlDbType.Int);
        txtcityid.Text = DOBJ.max("CityMaxId", cid).ToString();
       
    }
    protected void sbtbutton_Click(object sender, EventArgs e)
    {
         getsetobj.City_id = Convert.ToInt16(txtcityid.Text);
        getsetobj.Cityname = txtcityname.Text;
        getsetobj.State_id = Convert.ToInt16(DropDownList1.Text);
       


        SqlParameter cid = new SqlParameter("@city_id", getsetobj.City_id);
        SqlParameter cname = new SqlParameter("@cityname", getsetobj.Cityname);
        SqlParameter sid = new SqlParameter("@state_id", getsetobj.State_id);
       

        SqlParameter[] ddata = new SqlParameter[3] {cid, cname,sid };

        try
        {
            int x = bobj.insert("CityInsert", ddata);

            if (x > 0)
            {
                Label5.Visible = true;

                Label5.Text = "Successfully Inserted";

                DataTable DT = new DataTable();
                DT = DOBJ.RetrieveAll("CitySelect");
                //DataSet DS = new DataSet();
                GridView1.DataSource = DT;
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Label5.Visible = true;
            Label5.Text = ex.Message.ToString();
        }
    }
    }
