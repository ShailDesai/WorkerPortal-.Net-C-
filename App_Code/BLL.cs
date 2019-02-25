using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



public class BLL
{
    DLL dllobj = new DLL();
    public BLL()
    {
    }

    public int insert(string stpro, SqlParameter[] ddata)
    {
int x= dllobj.ExecuteNonQuery(stpro, ddata);
return x;
	}
    public int Login(string stpro, SqlParameter[] ddata)
    {
        int x = dllobj.Check(stpro, ddata);
        return x;
    }
}