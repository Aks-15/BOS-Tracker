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
    public partial class deptmem : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                int n = 1;
                SqlDataAdapter DA1 = new SqlDataAdapter("select MembersofMCA from department where Id=" + n, con);
                SqlCommandBuilder BLDR1 = new SqlCommandBuilder(DA1);
                DataSet DS1 = new DataSet();
                DA1.Fill(DS1, "department");
                string dm = DS1.Tables[0].Rows[0][0].ToString();
                string[] m = dm.Split('-');
                string depmem = "";
                for (int i = 0; i < m.Length; i++)
                {
                    depmem = depmem + m[i].ToString();
                }
                TextBox1.Text = depmem;
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string dept = TextBox1.Text;
            string[] d = dept.Split(',');
            string newdept = "";
            for (int i = 0; i < d.Length-1; i++)
            {
                newdept = newdept + d[i].ToString() + ",-";
            }
            for (int j = d.Length - 1; j == d.Length - 1; j++)
            {
                newdept = newdept + d[j].ToString();
            }
            con.Open();
            SqlDataAdapter DA = new SqlDataAdapter("update department set MembersofMCA='"+newdept+"' where Id="+1, con);
            SqlCommandBuilder BLDR = new SqlCommandBuilder(DA);
            DataSet DS1 = new DataSet();
            DA.Fill(DS1, "department");
            Response.Write("<script>alert('Department members updated successfully')</script>");      
        }
        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("BOSHome.aspx");
        }
    }
}