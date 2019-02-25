using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for missedcall
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class missedcall : System.Web.Services.WebService {
    SqlConnection con;
    SqlCommand cmd;
    
    public missedcall () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld(String name,String number) {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["workerportal"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into MiscallData values('" + name + "','" + number + "')", con);
        if (cmd.ExecuteNonQuery() != 0)
        {
            return "1";
        }
        else
        {
            return "0";
        }
    }
    
}
