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
    getset getsetobj = new getset();
    DLL DOBJ = new DLL();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label18.Visible = false;
        SqlParameter uid = new SqlParameter("@maxid", SqlDbType.Int);
        txtuserid.Text = DOBJ.max("usermstmaxid", uid).ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        string temp = null;
        if (FileUpload1.HasFile)
        {
            temp = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(temp));
        }


        getsetobj.User_id = Convert.ToInt16(txtuserid.Text);
        getsetobj.Name = txtname.Text;
        getsetobj.Usertypeid = DropDownList4.SelectedValue;
        getsetobj.Address1 = txtaddress1.Text;
        getsetobj.Address2 = txtaddress2.Text;
        getsetobj.State_id = Convert.ToInt16(DropDownList2.SelectedValue);
        getsetobj.City_id = Convert.ToInt16(DropDownList1.SelectedValue);
        getsetobj.Areaid = Convert.ToInt16(DropDownList5.SelectedValue);
        getsetobj.Pincode = Convert.ToInt32(txtpincode.Text);
        getsetobj.Contact_no = txtcontactno.Text;
        getsetobj.Email_id = txtemailid.Text;
        getsetobj.Username = txtusername.Text;
        getsetobj.Password = txtpassword.Text;
        getsetobj.Image = temp;
        getsetobj.Question_id = Convert.ToInt16(DropDownList3.SelectedValue);
        getsetobj.Answer = txtanswer.Text;
      
        SqlParameter Ruid = new SqlParameter("@userid", getsetobj.User_id);
        SqlParameter Runame = new SqlParameter("@name", getsetobj.Name);
        SqlParameter Rutid = new SqlParameter("@usertypeid", getsetobj.Usertypeid);
        SqlParameter Rua1 = new SqlParameter("@address1", getsetobj.Address1);
        SqlParameter Rua2 = new SqlParameter("@address2", getsetobj.Address2);
        SqlParameter Rusid = new SqlParameter("@stateid", getsetobj.State_id);
        SqlParameter Rucid = new SqlParameter("@cityid", getsetobj.City_id);
        SqlParameter aid = new SqlParameter("@areaid", getsetobj.City_id);

        SqlParameter Rupin = new SqlParameter("@pincode", getsetobj.Pincode);
        SqlParameter Rucno = new SqlParameter("@contact_no", getsetobj.Contact_no);
        SqlParameter Rueid = new SqlParameter("@emailid", getsetobj.Email_id);
        SqlParameter Ruun = new SqlParameter("@username", getsetobj.Username);
        SqlParameter Rupass = new SqlParameter("@password", getsetobj.Password);
        SqlParameter Ruqid = new SqlParameter("@questionid", getsetobj.Question_id);
        SqlParameter Ruans = new SqlParameter("@answer", getsetobj.Answer);
        SqlParameter Rimg = new SqlParameter("@image", getsetobj.Image);

        SqlParameter[] ddata = new SqlParameter[16] { Ruid,Runame,Rutid,Rua1,Rua2,Rusid,Rucid,aid,Rupin,Rucno,Rueid,Ruun,Rupass,Ruqid,Ruans,Rimg };

        try
        {
            int x = bobj.insert("Registration", ddata);

            if (x > 0)
            {
                Label18.Visible = true;

                Label18.Text = "Successfully Inserted";
            }
        }
        catch (Exception ex)
        {
            Label18.Visible = true;
            Label18.Text = ex.Message.ToString();
        }
    }
}