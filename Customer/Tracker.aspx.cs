using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Customer_Tracker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow rows=GridView1.SelectedRow;
            DataTable dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Latitude");
            dt.Columns.Add("Longitude");
            dt.Columns.Add("Description");
            DataRow row = dt.NewRow();
            row["Name"] = rows.Cells[0].Text;
            row["Latitude"] = rows.Cells[1].Text;
            row["Longitude"] = rows.Cells[2].Text;
            row["Description"] = rows.Cells[0].Text;
            dt.Rows.Add(row);
            rptMarkers.DataSource = dt;
            rptMarkers.DataBind();
    }
}