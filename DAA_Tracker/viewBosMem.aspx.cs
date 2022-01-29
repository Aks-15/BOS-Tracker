using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;

namespace DAA_Tracker
{
    public partial class viewBosMem : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlDataAdapter DA = new SqlDataAdapter("select bId,CONVERT(VARCHAR(10), Date, 103) AS Date  from Bosmembers", con);
                SqlCommandBuilder BLDR1 = new SqlCommandBuilder(DA);
                DataSet ds = new DataSet();
                DA.Fill(ds,"Bosmembers");
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Date";
                DropDownList1.DataValueField = "bId";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("Select"));
                BindGrid();
            }
            
        }
        static int bid;
        protected void DropDownListmem_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.Equals("Select"))
            {
                BindGrid();
                DataTable ds = new DataTable();
                ds = null;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else {
                bid = int.Parse(DropDownList1.SelectedValue);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select CONVERT(VARCHAR(10), Date, 103) AS Date, Place, Chairman, Members_of_the_Department, Vice_Chancellor_Nominee, Subject_Expert, Representative_from_industry, Meritorious_Alumnus, Student_Representative, Name from Bosmembers where bId=" + bid, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "Bosmembers");
                GridViewMem.DataSource = ds;
                GridViewMem.DataBind();
                SqlDataAdapter da1 = new SqlDataAdapter("select bId, Name from Bosmembers where bId=" + bid, con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "Bosmembers");
                GridView1.DataSource = ds;
                GridView1.DataBind();
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
        protected void DownloadFile(object sender, EventArgs e)
        {
            //int id = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Name, Data, ContentType from Bosmembers where bId="+bid;
                    //cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["Data"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["Name"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}