using System;
using System.Collections.Generic;

using System.Text;

//using System;
using System.Security;
using System.Security.Permissions;
using System.Security.AccessControl;
using System.Globalization;
using System.Data;
using System.Data.Common;
using System.Data.OleDb;
using System.IO;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Reflection;
using System.Diagnostics.CodeAnalysis;
using System.Collections;


namespace RemoteMonitor
{
     public class SqlHelper
    {

         static string ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G://Remote Station Monitor//RemoteMonitor//RemoteMonitor//goras.mdb;Persist Security Info=false";
        static OleDbConnection con = new OleDbConnection(ConnectionString);
        static private OleDbCommand oleDbCmd = new OleDbCommand();


        public static int GetMax(string sql, Object[] paraArray)
        {
            int maxVal = 0;
            object obj = SqlHelper.populateData(sql, paraArray);

            if (obj != null && !(obj.GetType() == typeof(DBNull)))
            {
               maxVal = Convert.ToInt32(obj);
            }
            return maxVal;
        }

       
        static public int ExecuteNonQuery12(string procName)
        {
            con.Open();
            oleDbCmd.Connection = con;
            oleDbCmd.CommandText = procName;
            
            int temp = oleDbCmd.ExecuteNonQuery();
            if (temp > 0)
            {            
               // MessageBox.Show("Operation Successfull !");
            }
            else
            {
               // MessageBox.Show("Operation Failed !");
            }
            con.Close();
            return temp;
        }

        static public int ExecuteNonQuery(string procName, Object[] paraArray)
        {
            con.Open();

            OleDbCommand oleDbCmd = con.CreateCommand();
            oleDbCmd.CommandText = procName;
            if (null != paraArray)
            {
                for (int i = 0; i < paraArray.Length; i++)
                {
                    OleDbParameter p1 = new OleDbParameter();
                    p1.Value = paraArray[i];
                    oleDbCmd.Parameters.Add(p1);
                }
            }

            int temp = oleDbCmd.ExecuteNonQuery();
            if (temp > 0)
            {
                // MessageBox.Show("Operation Successfull !");
            }
            else
            {
                // MessageBox.Show("Operation Failed !");
            }
            con.Close();
            return temp;
        }

        static public void fillDataGrid(String query,DataGridView mydatagrid ,int columnCount) {
            mydatagrid.DataSource = null;
            mydatagrid.Rows.Clear();
            mydatagrid.Refresh();

            OleDbDataAdapter dAdapter = new OleDbDataAdapter(query, ConnectionString);
            OleDbCommandBuilder cBuilder = new OleDbCommandBuilder(dAdapter);
           

            DataTable dataTable = new DataTable();
            DataSet ds = new DataSet();
            
            dAdapter.Fill(dataTable);
            
            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                Object[] grid = new Object[columnCount];
                for (int j = 0; j < columnCount;j++)
                {
                    grid[j] = dataTable.Rows[i][j];
                }
                mydatagrid.Rows.Add(grid);
            }
            
        }
        static public void fillDataGrid(String query, DataGridView mydatagrid, int columnCount, object[] paraArray)
        {
            mydatagrid.DataSource = null;
            mydatagrid.Rows.Clear();
            mydatagrid.Refresh();

            OleDbCommand oleDbCmd = con.CreateCommand();
            oleDbCmd.CommandText = query;
            if (null != paraArray)
            {
                for (int i = 0; i < paraArray.Length; i++)
                {
                    OleDbParameter p1 = new OleDbParameter();
                    p1.Value = paraArray[i];
                    oleDbCmd.Parameters.Add(p1);
                }
            }


            OleDbDataAdapter dAdapter = new OleDbDataAdapter(oleDbCmd);
            OleDbCommandBuilder cBuilder = new OleDbCommandBuilder(dAdapter);
           
            DataTable dataTable = new DataTable();
            DataSet ds = new DataSet();

            dAdapter.Fill(dataTable);

            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                Object[] grid = new Object[columnCount];
                for (int j = 0; j < columnCount; j++)
                {
                    grid[j] = dataTable.Rows[i][j];
                }
                mydatagrid.Rows.Add(grid);
            }

        }
        static public void fillComboList(String query, object[] paraArray, ComboBox combo)
        {

            OleDbCommand oleDbCmd = con.CreateCommand();
            oleDbCmd.CommandText = query;
            if (null != paraArray)
            {
                for (int i = 0; i < paraArray.Length; i++)
                {
                    OleDbParameter p1 = new OleDbParameter();
                    p1.Value = paraArray[i];
                    oleDbCmd.Parameters.Add(p1);
                }
            }

            OleDbDataAdapter dAdapter = new OleDbDataAdapter(oleDbCmd);
            OleDbCommandBuilder cBuilder = new OleDbCommandBuilder(dAdapter);

            DataTable dataTable = new DataTable();
            DataSet ds = new DataSet();

            dAdapter.Fill(dataTable);
            combo.Items.Clear();
            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                combo.Items.Add(dataTable.Rows[i][0]);
            }

        }
        static public void fillComboList(String query, ComboBox combo)
        {

            OleDbDataAdapter dAdapter = new OleDbDataAdapter(query, ConnectionString);
            OleDbCommandBuilder cBuilder = new OleDbCommandBuilder(dAdapter);

            DataTable dataTable = new DataTable();
            DataSet ds = new DataSet();

            dAdapter.Fill(dataTable);
            combo.Items.Clear();
            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                combo.Items.Add(dataTable.Rows[i][0]);
            }

        }

        static public void fillComboList(String query, ListBox combo)
        {

            OleDbDataAdapter dAdapter = new OleDbDataAdapter(query, ConnectionString);
            OleDbCommandBuilder cBuilder = new OleDbCommandBuilder(dAdapter);

            DataTable dataTable = new DataTable();
            DataSet ds = new DataSet();

            dAdapter.Fill(dataTable);
            combo.Items.Clear();
            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                combo.Items.Add(dataTable.Rows[i][0]);
            }

        }
        



        static public int getCount(string query)
        {
            con.Open();
            OleDbCommand command = con.CreateCommand();
            command.CommandText = query;
            int val = (int)command.ExecuteScalar();
            con.Close();
            return val;
        }

        static public int getCount(string query, object[] paraArray)
        {
            con.Open();
            OleDbCommand command = con.CreateCommand();
            command.CommandText = query;

           
            if (paraArray != null)
            {
                for (int i = 0; i < paraArray.Length; i++)
                {
                    OleDbParameter p1 = new OleDbParameter();
                    p1.Value = paraArray[i];
                    command.Parameters.Add(p1);
                }
            }

            int val = (int)command.ExecuteScalar();
            con.Close();
            return val;
        }

        public static DateTime getCurentDataTime(){
            DateTime today = DateTime.Now;
            DateTime starting_day = new DateTime(today.Year, today.Month, today.Day);

            return starting_day;
        }

        public static DateTime getFormattedDataTime(DateTime today)
        {
          
            DateTime starting_day = new DateTime(today.Year, today.Month, today.Day);

            return starting_day;
        }

        public static object populateData(string query, Object[] paraArray)
        {

            object obj = null;
            con.Open();
           
            OleDbCommand cmd = con.CreateCommand();
            cmd.CommandText = query;
            if (paraArray != null)
            {
                for (int i = 0; i < paraArray.Length; i++)
                {
                    OleDbParameter p1 = new OleDbParameter();
                    p1.Value = paraArray[i];
                    cmd.Parameters.Add(p1);
                }
            }
            OleDbDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
                obj = reader.GetValue(0);
            reader.Close();

            con.Close();
            return obj;
        }

        public static int populateIntData(string query, Object[] paraArray)
        {

            int obj = 0;
            con.Open();

            OleDbCommand cmd = con.CreateCommand();
            cmd.CommandText = query;
            if (paraArray != null)
            {
                for (int i = 0; i < paraArray.Length; i++)
                {
                    OleDbParameter p1 = new OleDbParameter();
                    p1.Value = paraArray[i];
                    cmd.Parameters.Add(p1);
                }
            }
            OleDbDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                object obj1 = reader.GetValue(0);

                if (obj1 != null && !(obj1.GetType() == typeof(DBNull)))
                {

                    obj = Convert.ToInt32(reader.GetValue(0));
                }

               
               
            }
            reader.Close();

            con.Close();
            return obj;
        }
        

        public static List<object> populateData(string query, Object[] paraArray, int noofcolumns)
        {

            List<object> lst = new List<object>();
            
                
            con.Open();

            OleDbCommand cmd = con.CreateCommand();
            cmd.CommandText = query;
            if (paraArray != null)
            {
                for (int i = 0; i < paraArray.Length; i++)
                {
                    OleDbParameter p1 = new OleDbParameter();
                    p1.Value = paraArray[i];
                    cmd.Parameters.Add(p1);
                }
            }
            OleDbDataReader reader = cmd.ExecuteReader();
           
            while (reader.Read())
            {
                object[] obj = new object[noofcolumns];
                for (int j = 0; j < noofcolumns; j++)
                {
                    obj[j] = reader.GetValue(j);
                }
                lst.Add(obj);
            }
            reader.Close();

            con.Close();
            return lst;
        }

         

        public static void setGLName(string glcodeValue, ComboBox glcombo)
        {
            if (null == glcodeValue || glcodeValue.Trim().Length == 0) return;
            string query = "Select `Name` from GLMaster where GLCode=" + glcodeValue;

            object obj = SqlHelper.populateData(query, null);

            if (obj != null && !(obj.GetType() == typeof(DBNull)))
            {

                glcombo.Text = Convert.ToString(obj);
            }
            else
            {
                glcombo.Text = "";
            }

        }

        public static void setGLNCode(string glnameValue, ComboBox glcombo)
        {
            if (null == glnameValue || glnameValue.Trim().Length == 0) return;
            string query = "Select GLCode from GLMaster where `Name` ='" + glnameValue + "'";

            object obj = SqlHelper.populateData(query, null);

            if (obj != null && !(obj.GetType() == typeof(DBNull)))
            {

                glcombo.Text = Convert.ToString(obj);
            }
            else
            {
                glcombo.Text = "";
            }

        }


        public static void setGLName(string glcodeValue, TextBox glcombo)
        {
            if (null == glcodeValue || glcodeValue.Trim().Length == 0) return;
            string query = "Select `Name` from GLMaster where GLCode=" + glcodeValue;

            object obj = SqlHelper.populateData(query, null);

            if (obj != null && !(obj.GetType() == typeof(DBNull)))
            {

                glcombo.Text = Convert.ToString(obj);
            }
            else
            {
                glcombo.Text = "";
            }

        }

        public static void setGLNCode(string glnameValue, TextBox glcombo)
        {
            if (null == glnameValue || glnameValue.Trim().Length == 0) return;
            string query = "Select GLCode from GLMaster where `Name` ='" + glnameValue + "'";

            object obj = SqlHelper.populateData(query, null);

            if (obj != null && !(obj.GetType() == typeof(DBNull)))
            {

                glcombo.Text = Convert.ToString(obj);
            }
            else
            {
                glcombo.Text = "";
            }

        }

        public static string mFindGlName(string glcodeValue)
        {

            string query = "Select `Name` from GLMaster where GLCode=" + glcodeValue;

            object obj = SqlHelper.populateData(query, null);

            if (obj != null && !(obj.GetType() == typeof(DBNull)))
            {

                return Convert.ToString(obj);
            }
            else
            {
               return  "";
            }
        
        }
        public static DataTable GetReportData(string query, Object[] paraArray)
        {
            DataTable DatTab = new DataTable();
            try
            {         
                con.Open();
                if (true)
                {
                    con.Close();
                    OleDbCommand cmd = con.CreateCommand();
                    cmd.CommandText = query;
                    if (paraArray != null)
                    {
                        for (int i = 0; i < paraArray.Length; i++)
                        {
                            OleDbParameter p1 = new OleDbParameter();
                            p1.Value = paraArray[i];
                            cmd.Parameters.Add(p1);
                        }
                    }

                    OleDbDataAdapter adap = new OleDbDataAdapter(cmd);
                    adap.Fill(DatTab);

                }

                else
                {



                }
                con.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return DatTab;
        }
    }
}
