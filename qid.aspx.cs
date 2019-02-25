using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class qid : System.Web.UI.Page
{
    BLL bobj = new BLL();
    getset getsetobj = new getset();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
    }
    protected void sbtbutton_Click(object sender, EventArgs e)
    {
        getsetobj.Question_id = Convert.ToInt16(txtqid.Text);
        getsetobj.Qquestion = txtqname.Text;
      


        SqlParameter qid = new SqlParameter("@qid", getsetobj.Question_id);
        SqlParameter qque = new SqlParameter("@qquestion", getsetobj.Qquestion);
      

        SqlParameter[] ddata = new SqlParameter[2] { qid, qque };

        try
        {
            int x = bobj.insert("QuestionInsert", ddata);

            if (x > 0)
            {
                Label5.Visible = true;

                Label5.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            Label5.Visible = true;
            Label5.Text = ex.Message.ToString();
        }
    }
}