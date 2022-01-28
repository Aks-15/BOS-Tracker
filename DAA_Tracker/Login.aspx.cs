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
    public partial class Login : System.Web.UI.Page
    {
        static string duser,dpwd,huser,hpwd;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlDataAdapter DA = new SqlDataAdapter("SELECT Name,Password FROM login WHERE Name='HOD'", con);
                SqlCommandBuilder BLDR = new SqlCommandBuilder(DA);
                DataSet DS = new DataSet();
                DA.Fill(DS);

                huser = DS.Tables[0].Rows[0][0].ToString();
                hpwd = DS.Tables[0].Rows[0][1].ToString();

                SqlDataAdapter DA1 = new SqlDataAdapter("SELECT Name,Password FROM login WHERE Name='DEAN'", con);
                SqlCommandBuilder BLDR1 = new SqlCommandBuilder(DA1);
                DataSet DS1 = new DataSet();
                DA1.Fill(DS1);
                duser = DS1.Tables[0].Rows[0][0].ToString();
                dpwd = DS1.Tables[0].Rows[0][1].ToString();


            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
           if(txtuser.Text == huser && txtpwd.Text == hpwd || txtuser.Text == duser && txtpwd.Text == dpwd)
            {
                Response.Redirect("BOSHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login Failed!! Please try again')</script>");
                txtuser.Text = "";
                txtpwd.Text = "";
            }
        }
    }
}