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
    public partial class ViewMeetDet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlDataAdapter DA = new SqlDataAdapter("select Year,Prayer_service,Discussion_on_syllabus,Vote_of_thanks from Bosmeeting", con);
            DataSet DS = new DataSet();
            DA.Fill(DS, "Bosmeeting");

            GridViewMeet.DataSource = DS;
            GridViewMeet.DataBind();
        }
    }
}