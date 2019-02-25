using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class USER_Default : System.Web.UI.Page
{
    DLL dobj = new DLL();
    BLL bobj = new BLL();
    int marks = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label12.Visible= false;
        Label10.Text = DateTime.Now.ToShortDateString();
        if (!Page.IsPostBack)
        {

            DataTable dt = dobj.RetrieveAll("SelectQuesiton");
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow temp in dt.Rows)
                {
                    Q1.Text = temp["que1"].ToString();
                    Q2.Text = temp["que2"].ToString();
                    Q3.Text = temp["que3"].ToString();
                    Q4.Text = temp["que4"].ToString();
                    Q5.Text = temp["que5"].ToString();

                }
            }
            else
            {

                Label3.Text = "invalid info";
            }


            Label8.Text = Session["UserInfo"].ToString();

            dt = new DataTable();
            SqlParameter un = new SqlParameter("@username", Label8.Text);

            SqlParameter[] pdata = new SqlParameter[1] { un };
            dt = dobj.RetrieveInfo("FetchCustomerId",pdata);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow temp in dt.Rows)
                {
                    if (string.Compare(temp["username"].ToString(), Label8.Text) == 0)
                    {
                        Label9.Text = temp["user_id"].ToString();
                    }
                }
            }




        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
            marks = marks + 10;
        else if (RadioButtonList1.SelectedIndex == 1)
            marks = marks + 7;
        else if (RadioButtonList1.SelectedIndex == 2)
            marks = marks + 5;
        else
            marks = marks = 3;
        txtmarks.Text = marks.ToString();
    }
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList2.SelectedIndex == 0)
            marks = marks + 10;
        else if (RadioButtonList2.SelectedIndex == 1)
            marks = marks + 7;
        else if (RadioButtonList2.SelectedIndex == 2)
            marks = marks + 5;
        else
            marks = marks = 3;
        txtmarks.Text = marks.ToString();
    }
    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList3.SelectedIndex == 0)
            marks = marks + 10;
        else if (RadioButtonList3.SelectedIndex == 1)
            marks = marks + 7;
        else if (RadioButtonList3.SelectedIndex == 2)
            marks = marks + 5;
        else
            marks = marks = 3;
        txtmarks.Text = marks.ToString();
    }
    protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList4.SelectedIndex == 0)
            marks = marks + 10;
        else if (RadioButtonList4.SelectedIndex == 1)
            marks = marks + 7;
        else if (RadioButtonList4.SelectedIndex == 2)
            marks = marks + 5;
        else
            marks = marks = 3;
        txtmarks.Text = marks.ToString();
    }
    protected void RadioButtonList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList5.SelectedIndex == 0)
            marks = marks + 10;
        else if (RadioButtonList5.SelectedIndex == 1)
            marks = marks + 7;
        else if (RadioButtonList5.SelectedIndex == 2)
            marks = marks + 5;
        else
            marks = marks = 3;
        txtmarks.Text = marks.ToString();
    }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {   
        SqlParameter rid = new SqlParameter("@rid", txtrid.Text);
        SqlParameter rdate = new SqlParameter("@rdate", Label10.Text);
        SqlParameter cid = new SqlParameter("@Customerid",Label9.Text);
        SqlParameter tm = new SqlParameter("@TotalMarks",txtmarks.Text);
        SqlParameter gr = new SqlParameter("@Grade", TextBox1.Text);
        SqlParameter wid = new SqlParameter("@Workerid",DropDownList2.SelectedValue);
        SqlParameter[] ddata = new SqlParameter[6] { rid,rdate,cid,tm,gr,wid };

         try
        {
            int x = bobj.insert("RatingTabledata", ddata);

            if (x > 0)
            {
                Label12.Visible = true;

                Label12.Text = " Feedback Successfully ";
               // Response.Redirect("~/Logout.aspx");
            }
        }
        catch (Exception ex)
        {
            Label12.Visible = true;
            Label12.Text = ex.Message.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (marks > 35)
            TextBox1.Text = "A".ToString();
        else if (marks > 25)
            TextBox1.Text = "B".ToString();
        else if (marks > 13)
            TextBox1.Text = "C".ToString();
        else
            TextBox1.Text = "D".ToString();

            
    }
 }
   
