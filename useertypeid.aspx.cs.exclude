using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class useertypeid : System.Web.UI.Page
{
    BLL bobj = new BLL();
    getset getsetobj = new getset();
    DLL DOBJ = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
        SqlParameter cid = new SqlParameter("@maxid", SqlDbType.Int);
        txtusertypeid.Text = DOBJ.max("Usertypeidmaxid", cid).ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        getsetobj.Usertypeid = txtusertypeid.Text;
        getsetobj.Usertypename = txtusertypename.Text;

        SqlParameter utypeid = new SqlParameter("@usertypeid", getsetobj.Usertypeid);
        SqlParameter utypename = new SqlParameter("@usertype_name", getsetobj.Usertypename);

        SqlParameter[] ddata = new SqlParameter[2] {utypeid, utypename };

        try
        {
            int x = bobj.insert("usertypemst", ddata);

            if (x > 0)
            {
                Label4.Visible = true;

                Label4.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            Label4.Visible = true;
            Label4.Text = ex.Message.ToString();
        }
    }
    }
