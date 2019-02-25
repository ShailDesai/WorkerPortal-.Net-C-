using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Default : System.Web.UI.Page
{
    DLL DOBJ = new DLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Todays Date is " + DateTime.Now.ToShortDateString();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}