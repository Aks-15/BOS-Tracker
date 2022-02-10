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
    public partial class ChangePwd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            txtuname.Text = Session["uname"].ToString();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string un = txtuname.Text;
            string pwd = txtpwd.Text;
            SqlDataAdapter da = new SqlDataAdapter("select * from login", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "login");
            string st = ds.Tables[0].Rows[0][1].ToString();
            string st2 = ds.Tables[0].Rows[1][1].ToString();

            string n1 = ds.Tables[0].Rows[0][0].ToString();
            int no1 = int.Parse(n1);

            string n2 = ds.Tables[0].Rows[1][0].ToString();
            int no2 = int.Parse(n2);
            if (st == un)
            {
                SqlDataAdapter da1 = new SqlDataAdapter("update login SET Password='" + pwd + "' where lId="+no1 , con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds, "login");
                Response.Write("<script>alert('Password changed Successfully')</script>");
                Response.AddHeader("refresh", "0;BOSHome.aspx");
            }
            if (st2 == un)
            {
                SqlDataAdapter da2 = new SqlDataAdapter("update login SET Password='" + pwd + "' where lId=" + no2, con);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2, "login");
                Response.Write("<script>alert('Password changed Successfully')</script>");
                Response.AddHeader("refresh", "0;BOSHome.aspx");
            }
            //    SqlDataAdapter da = new SqlDataAdapter("update login set Password='" + pwd + "' where Name='"+un"'", con);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds, "login");
            //    Response.Write("<script>alert('Updated Successfully')</script>");
            //    Response.AddHeader("refresh", "0;BOSHome.aspx");
            //
        }
    }
}