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
    public partial class BOSMembers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            int n = 1;
            SqlDataAdapter DA1 = new SqlDataAdapter("select MembersofMCA from department where Id="+n,con);
            SqlCommandBuilder BLDR1 = new SqlCommandBuilder(DA1);
            DataSet DS1 = new DataSet();
            DA1.Fill(DS1, "department");
            string dm = DS1.Tables[0].Rows[0][0].ToString();
            string[] m = dm.Split('-');
            string depmem = "";
            for (int i = 0; i < m.Length; i++)
            {
                depmem = depmem + m[i].ToString() +"\n";
            }
            txtMd.Text = depmem;
        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            con.Open();
            string date = txtdate.Text;
            SqlDataAdapter DA = new SqlDataAdapter("insert into date(Date)values('"+date+"')",con);
            SqlCommandBuilder BLDR = new SqlCommandBuilder(DA);
            DataSet DS = new DataSet();
            DA.Fill(DS,"Bosmembers");
            Response.Write("<script>alert('Data inserted Successfully')</script>");
        }

        protected void btnUpdateMd_Click(object sender, EventArgs e)
        {
            Response.Redirect("deptmem.aspx");
        }
    }
}