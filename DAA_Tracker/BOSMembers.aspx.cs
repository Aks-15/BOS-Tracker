using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Globalization;

namespace DAA_Tracker
{
    public partial class BOSMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30");
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
                txtMd.Text = depmem;
            }
        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            string date = txtdate.Text;          
            string p = txtplace.Text;
            string cm = txtCm.Text;
            string mod = txtMd.Text;
            string vcn = txtVcn.Text;
            string se = txtSe.Text;
            string rfi = txtRfi.Text;
            string ma = txtMa.Text;
            string sr = txtSr.Text;
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Hp\Documents\DAA.mdf;Integrated Security=True;Connect Timeout=30"))
                    {
                        string query = "insert into Bosmembers values (@Date, @Place, @Chariman, @Members_of_the_Department, @Vice_Chancellor_Nominee, @Subject_Expert, @Representative_from_industry, @Meritorious_Alumnus, @Student_Representative, @Name, @ContentType, @Data)";
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@Date",date /*date.ToString("dd/MM/yyyy")*/);                       
                            cmd.Parameters.AddWithValue("@Place", p);
                            cmd.Parameters.AddWithValue("@Chariman", cm);
                            cmd.Parameters.AddWithValue("@Members_of_the_Department", mod);
                            cmd.Parameters.AddWithValue("@Vice_Chancellor_Nominee", vcn);
                            cmd.Parameters.AddWithValue("@Subject_Expert", se);
                            cmd.Parameters.AddWithValue("@Representative_from_industry", rfi);
                            cmd.Parameters.AddWithValue("@Meritorious_Alumnus", ma);
                            cmd.Parameters.AddWithValue("@Student_Representative", sr);
                            cmd.Parameters.AddWithValue("@Name", filename);
                            cmd.Parameters.AddWithValue("@ContentType", contentType);
                            cmd.Parameters.AddWithValue("@Data", bytes);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }

                //string message = "BOS Members inserted successfully";
                //string script = "window.onload = function(){ alert('";
                //script += message;
                //script += "');";
                //script += "window.location ='";
                //script += Request.Url.AbsoluteUri;
                //script += "'; }";
                //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                Response.Write("<script>alert('BOS Members inserted successfully')</script>");
                Response.AddHeader("refresh", "0;Bosmeeting.aspx");
            }
           
        }
 
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtdate.Text = "";
            txtplace.Text = "";
            txtCm.Text = "";
            txtVcn.Text = "";
            txtSe.Text = "";
            txtRfi.Text = "";
            txtMa.Text = "";
            txtSr.Text = "";
        }

    }
}