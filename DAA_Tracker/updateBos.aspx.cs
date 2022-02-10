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
    public partial class updateBos : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
        static int bid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request["data"]))
                {
                    bid = int.Parse(Request["data"]);
                }
                SqlDataAdapter da1 = new SqlDataAdapter("select CONVERT(VARCHAR(10), Date, 103) AS Date, Place, Chairman, Members_of_the_Department, Vice_Chancellor_Nominee, Subject_Expert, Representative_from_industry, Meritorious_Alumnus, Student_Representative, Name from Bosmembers where bId=" + bid, con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "Bosmembers");
                txtdate.Text = ds1.Tables[0].Rows[0][0].ToString();
                txtplace.Text = ds1.Tables[0].Rows[0][1].ToString();
                txtCm.Text = ds1.Tables[0].Rows[0][2].ToString();
                txtMd.Text = ds1.Tables[0].Rows[0][3].ToString();
                txtVcn.Text = ds1.Tables[0].Rows[0][4].ToString();
                txtSe.Text = ds1.Tables[0].Rows[0][5].ToString();
                txtRfi.Text = ds1.Tables[0].Rows[0][6].ToString();
                txtMa.Text = ds1.Tables[0].Rows[0][7].ToString();
                txtSr.Text = ds1.Tables[0].Rows[0][8].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            txtplace.Text = "";
            txtCm.Text = "";
            txtMd.Text = "";
            txtVcn.Text = "";
            txtSe.Text = "";
            txtRfi.Text = "";
            txtMa.Text = "";
            txtSr.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string date = txtdate.Text;
            string place = txtplace.Text;
            string cm = txtCm.Text;
            string md = txtMd.Text;
            string vcn = txtVcn.Text;
            string se = txtSe.Text;
            string rfi = txtRfi.Text;
            string ma = txtMa.Text;
            string sr = txtSr.Text;            
            SqlDataAdapter da2 = new SqlDataAdapter("UPDATE Bosmembers SET Place='"+place+"',Chairman='"+cm+ "',Members_of_the_Department='"+md+ "',Vice_Chancellor_Nominee='"+vcn+ "',Subject_Expert='"+se+ "',Representative_from_industry='"+rfi+ "',Meritorious_Alumnus='"+ma+ "',Student_Representative='"+sr+"' where bId=" + bid, con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2, "Bosmembers");
            Response.Write("<script>alert('BOS Members Updated successfully')</script>");
            Response.AddHeader("refresh", "0;viewBosMem.aspx");
        }
    }
}