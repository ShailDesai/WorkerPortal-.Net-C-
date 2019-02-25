using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    BLL bobj = new BLL();
    getset getsetobj = new getset();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Visible = false;

    }
    protected void sbtbutton_Click(object sender, EventArgs e)
    {
         getsetobj.R_id = Convert.ToInt16(txtrid.Text);
        getsetobj.Rdate = Convert.ToDateTime(txtrdate.Text);
        getsetobj.User_id = Convert.ToInt16(txtuserid.Text);
        getsetobj.Ratinggrade = txtrgrade.Text;

        SqlParameter rid = new SqlParameter("@rid", getsetobj.R_id);
        SqlParameter rdate = new SqlParameter("@rdate", getsetobj.Rdate);
        SqlParameter ruid = new SqlParameter("@userid", getsetobj.User_id);
        SqlParameter rgrade = new SqlParameter("@ratinggrade", getsetobj.Ratinggrade);
        SqlParameter[] ddata = new SqlParameter[4] { rid,rdate,ruid,rgrade };

        try
        {
            int x = bobj.insert("RatingTabel", ddata);

            if (x > 0)
            {
                Label6.Visible = true;

                Label6.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            Label6.Visible = true;
            Label6.Text = ex.Message.ToString();
        }
    }
    }
