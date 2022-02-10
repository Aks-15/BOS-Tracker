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
    public partial class bosmeeting : System.Web.UI.Page
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
                SqlDataAdapter DA1 = new SqlDataAdapter("SELECT TOP 1 bId FROM Bosmembers ORDER BY bId DESC;", con);
                SqlCommandBuilder BLDR2 = new SqlCommandBuilder(DA1);
                DataSet ds1 = new DataSet();
                DA.Fill(ds, "Bosmembers");
                DA1.Fill(ds1, "Bosmembers");
                string st = ds1.Tables[0].Rows[0][0].ToString();
                ddlAgendaList.DataSource = ds;
                ddlAgendaList.DataTextField = "Date";
                ddlAgendaList.DataValueField = "bId";
                ddlAgendaList.DataBind();
                ddlAgendaList.Items.Insert(0, new ListItem("Select"));               
                ddlAgendaList.SelectedValue = st;               
            }
        }
        static int bid;
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAgendaName.Text = "";
            txtAgendaDet.Text = "";
            txtDiscus.Text = "";
            txtResoln.Text = "";
            txtActnTakn.Text = "";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            bid=int.Parse(ddlAgendaList.SelectedValue);
            con.Open();
            string aname = txtAgendaName.Text;
            string adet = txtAgendaDet.Text;
            string ds = txtDiscus.Text;
            string r = txtResoln.Text;
            string at = txtActnTakn.Text;
            SqlDataAdapter DA = new SqlDataAdapter("insert into Agenda(bId,Agenda_name,Agenda_details,Discussion_Suggestions,Resolution,Action_taken)values("+ bid +",'"+aname+ "','" + adet + "','" + ds + "','" + r + "','" + at + "')", con);
            SqlCommandBuilder BLDR = new SqlCommandBuilder();
            DataSet DS = new DataSet();
            DA.Fill(DS, "Agenda");
            Response.Write("<script>alert('Agenda added Successfully!!')</script>");
            ddlAgendaList.SelectedValue = bid.ToString();
            txtAgendaName.Text="";
            txtAgendaDet.Text="";
            txtDiscus.Text="";
            txtResoln.Text="";
            txtActnTakn.Text="";
        }
        protected void ddlAgendaList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
        protected void btndone_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewBosMem.aspx");

            //bid = int.Parse(ddlAgendaList.SelectedValue);
            //con.Open();
            //string aname = txtAgendaName.Text;
            //string adet = txtAgendaDet.Text;
            //string ds = txtDiscus.Text;
            //string r = txtResoln.Text;
            //string at = txtActnTakn.Text;
            //SqlDataAdapter DA = new SqlDataAdapter("insert into Agenda(bId,Agenda_name,Agenda_details,Discussion_Suggestions,Resolution,Action_taken)values(" + bid + ",'" + aname + "','" + adet + "','" + ds + "','" + r + "','" + at + "')", con);
            //SqlCommandBuilder BLDR = new SqlCommandBuilder();
            //DataSet DS = new DataSet();
            //DA.Fill(DS, "Agenda");
            //Response.Write("<script>alert('Agenda added Successfully!!')</script>");
            //ddlAgendaList.SelectedValue = bid.ToString();
            //Response.Redirect("viewBosMem.aspx");
            /* txtAgendaName.Text = "";
             txtAgendaDet.Text = "";
             txtDiscus.Text = "";
             txtResoln.Text = "";
             txtActnTakn.Text = "";*/

            //String agenda_det = txtAgendaDet.Text;
            //if (agenda_det == "")
            //    Response.Redirect("viewBosMem.aspx");
            //else
            //    Response.Write("<script>alert('Please click on to Add Agenda first')</script>");                    

        }
    }
}