using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DAA_Tracker
{
    public partial class viewBosMem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        private void BindGrid()
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select CONVERT(VARCHAR(10), Date, 103) AS Date, Place, Chairman, Members_of_the_Department, Vice_Chancellor_Nominee, Subject_Expert, Representative_from_industry, Meritorious_Alumnus, Student_Representative, Name from Bosmembers";
                    cmd.Connection = con;
                    con.Open();
                    GridViewMem.DataSource = cmd.ExecuteReader();
                    GridViewMem.DataBind();
                    con.Close();
                }
            }
        }

        //protected void DownloadFile(object sender, EventArgs e)
        //{
        //    int id = int.Parse((sender as LinkButton).CommandArgument);
        //    byte[] bytes;
        //    string fileName, contentType;
        //    using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30"))
        //    {
        //        using (SqlCommand cmd = new SqlCommand())
        //        {
        //            cmd.CommandText = "select Name, Data, ContentType from Bosmembers where Id=@Id";
        //            cmd.Parameters.AddWithValue("@Id", id);
        //            cmd.Connection = con;
        //            con.Open();
        //            using (SqlDataReader sdr = cmd.ExecuteReader())
        //            {
        //                sdr.Read();
        //                bytes = (byte[])sdr["Data"];
        //                contentType = sdr["ContentType"].ToString();
        //                fileName = sdr["Name"].ToString();
        //            }
        //            con.Close();
        //        }
        //    }
        //    Response.Clear();
        //    Response.Buffer = true;
        //    Response.Charset = "";
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    Response.ContentType = contentType;
        //    Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
        //    Response.BinaryWrite(bytes);
        //    Response.Flush();
        //    Response.End();
        //}
    }
}