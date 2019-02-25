
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for TrackerService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class TrackerService : System.Web.Services.WebService {
    DLL obj = new DLL();
    public TrackerService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld(String vid,String late,String longs) {

        if (obj.Check("select * from tracker where mobileno=" + vid) == 0)
        {
            if (obj.update("insert into tracker values(" + vid + ",'" + late + "','" + longs + "')") == 1)
            {
                return "1";
            }
            else {
                return "0";
            }
        }
        else {
            if (obj.update("update tracker set late='"+late+"',longs='"+longs+"' where mobileno="+vid) == 1)
            {
                return "1";
            }
            else
            {
                return "0";
            }            
        }
      }
    
}
