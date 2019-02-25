using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Usertypemst : System.Web.UI.Page
{
    BLL bobj = new BLL();
    getset getsetobj = new getset();
    DLL DOBJ = new DLL();


    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
        SqlParameter uid = new SqlParameter("@maxid", SqlDbType.Int);
        txttypeid.Text = DOBJ.max("usertypemstmaxid", uid).ToString();

    }
    protected void btnsbt_Click(object sender, EventArgs e)
    {
      //  getsetobj.usertypeid = Convert.ToInt16(txttypeid.Text);
       // getsetobj.usertypename = txtuname.Text;

        SqlParameter uid = new SqlParameter("@usertypeid", txttypeid.Text);
        SqlParameter uname = new SqlParameter("@usertypename", txtuname.Text);

        SqlParameter[] ddata = new SqlParameter[2] { uid, uname };
         try
        {
            int x = bobj.insert("Usertypemstinsert", ddata);

            if (x > 0)
            {
                Label5.Visible = true;

                Label5.Text = "Successfully Inserted";

               // DataTable DT = new DataTable();
                //DT= DOBJ.RetrieveAll("StateSelect");
                //DataSet DS = new DataSet();
                //GridView1.DataSource = DT;
                //GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Label5.Visible = true;
            Label5.Text = ex.Message.ToString();
        }
    }
    }


    
