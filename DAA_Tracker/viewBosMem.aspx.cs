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
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlDataAdapter DA = new SqlDataAdapter("SELECT Date,Chairman,Members_of_the_Department,Vice_Chancellor_Nominee,Subject_Expert,Representative_from_industry,Meritorious_Alumnus,Student_Representative FROM Bosmembers", con);
            DataSet DS = new DataSet();
            DA.Fill(DS, "Bosmembers");

            GridViewMem.DataSource = DS;
            GridViewMem.DataBind();
        }
    }
}