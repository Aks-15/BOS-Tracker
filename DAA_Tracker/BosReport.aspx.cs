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
    public partial class BosReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
        protected string date;
        protected string place;
        protected string agenda_name;
        protected string chairman;
        protected string mem_dep;
        protected string vcn;
        protected string se;
        protected string rfi;
        protected string ma;
        protected string sr;
        protected string agenda_details;
        protected void Page_Load(object sender, EventArgs e)
        {           
                int bid = 0;
                if (!string.IsNullOrEmpty(Request["data"]))
                {
                    bid = int.Parse(Request["data"]);
                }

                SqlDataAdapter da1 = new SqlDataAdapter("select CONVERT(VARCHAR(10), Date, 103) AS Date, Place, Chairman, Members_of_the_Department, Vice_Chancellor_Nominee, Subject_Expert, Representative_from_industry, Meritorious_Alumnus, Student_Representative, Name from Bosmembers where bId=" + bid, con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "Bosmembers");

                SqlDataAdapter da = new SqlDataAdapter("select Agenda_name,Agenda_details,Discussion_Suggestions,Resolution,Action_taken from Agenda where bId=" + bid, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "Agenda");

                date = ds1.Tables[0].Rows[0][0].ToString();
                place = ds1.Tables[0].Rows[0][1].ToString();
                chairman = ds1.Tables[0].Rows[0][2].ToString();
                mem_dep = ds1.Tables[0].Rows[0][3].ToString();
                vcn = ds1.Tables[0].Rows[0][4].ToString();
                se = ds1.Tables[0].Rows[0][5].ToString();
                rfi = ds1.Tables[0].Rows[0][6].ToString();
                ma = ds1.Tables[0].Rows[0][7].ToString();
                sr = ds1.Tables[0].Rows[0][8].ToString();
                //finding length

                DataTable table = ds.Tables["Agenda"];
                string expression = "Agenda_name IS NOT NULL AND Agenda_name <> ''";
                DataRow[] foundRows = table.Select(expression);
                int rowCount = foundRows.Length;

                int count = 1;
                string ag_n = "";
                for (int i = 0; i < rowCount; i++)
                {
                    ag_n = ag_n + count + "." + ds.Tables[0].Rows[i][0].ToString() + "</br>";
                    count++;

                }
                agenda_name = ag_n;
              
                int c = 1;
                string ag = "";
                for (int j = 0; j < rowCount; j++)
                {
                    ag = ag + "<u><i>Agenda </i></u>" + c + ":" + "</br>" + "<b>Agenda Details:</b>" + "</br>" + ds.Tables[0].Rows[j][1].ToString() + "</br>" + "<b>Discussion/Suggestions:</b>" + "</br>" + ds.Tables[0].Rows[j][2].ToString() + "</br>" + "<b>Resolution:</b>" + "</br>" + ds.Tables[0].Rows[j][3].ToString() + "</br>" + "<b>Action Taken:</b>" + "</br>" + ds.Tables[0].Rows[j][4].ToString() + "</br>" + "</br>";
                    c++;
                }
                agenda_details = ag;
                Response.Write("<script>window.print()</script>");
        }
    }
}
