using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for DLL
/// </summary>
public class DLL
{
  
    SqlCommand cmd;
   
	public DLL()
	{	
	}
     public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["workerportal"].ConnectionString);
    int effectedrow = 0;
    public int ExecuteNonQuery(string storedPro, SqlParameter[] paramCollection)
    {
        con.Close();
        SqlCommand cmd = new SqlCommand(storedPro);
        con.Open();
        cmd.Connection = this.con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(paramCollection);
        effectedrow = cmd.ExecuteNonQuery();
        return effectedrow;
    }
    public int Check(string storedPro, SqlParameter[] paramCollection)
    {
        con.Close();
        SqlCommand cmd = new SqlCommand(storedPro);
        con.Open();
        cmd.Connection = this.con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(paramCollection);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
            return 1;
        else
            return 0;
         
    }
    public DataTable RetrieveInfo(string sp, SqlParameter[] ddata)
    {

    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
        try
        {
            cmd=new SqlCommand();
            cmd = new SqlCommand(sp,con);
            cmd.Parameters.AddRange(ddata);
            cmd.CommandType = CommandType.StoredProcedure;
            da.SelectCommand =cmd;
            da.Fill(dt);
        }
        catch(Exception)
        {
           // MessageBox.Show(x.GetBaseException().ToString,"error",
                //MessageBox.OK,messageBoxIcon.Error);
        }
        finally
        {
            cmd.Dispose();
            con.Close();
        }
        return dt;
    }
    public DataTable RetrieveAll(string sp)
    {

        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        try
        {
            cmd = new SqlCommand();
            cmd = new SqlCommand(sp, con);
//            cmd.Parameters.AddRange(ddata);
            cmd.CommandType = CommandType.StoredProcedure;
            da.SelectCommand = cmd;
            da.Fill(dt);
        }
        catch (Exception)
        {
            // MessageBox.Show(x.GetBaseException().ToString,"error",
            //MessageBox.OK,messageBoxIcon.Error);
        }
        finally
        {
            cmd.Dispose();
            con.Close();
        }
        return dt;
    }

    public int max(string sp, SqlParameter pdata)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand(sp);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(pdata);
        cmd.Connection = this.con;
        pdata.Direction = ParameterDirection.Output;
        cmd.ExecuteScalar();
        int x = Convert.ToInt16( cmd.Parameters[0].Value);

        return x;
    }
    public object search(string str)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        object sc = cmd.ExecuteScalar();
        return sc;
    }
    public int update(string str)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        int x = cmd.ExecuteNonQuery();
        return x;
    }

    public int Check(string storedPro)
    {
        con.Close();
        SqlCommand cmd = new SqlCommand(storedPro);
        con.Open();
        cmd.Connection = this.con;
        cmd.CommandType = CommandType.Text;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
            return 1;
        else
            return 0;
    }
}