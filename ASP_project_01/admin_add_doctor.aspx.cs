using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_project_01
{
    public partial class admin_001 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }
        }





        // To cheak user is already registered or not
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from doctor_info where doctor_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }



        //Add New Doctor
        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO doctor_info (doctor_id,doctor_name,doctor_number,doctor_gender,doctor_age,doctor_exp) values(@doctor_id,@doctor_name,@doctor_number,@doctor_gender,@doctor_age,@doctor_exp)", con);

                cmd.Parameters.AddWithValue("@doctor_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_number", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_gender", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_age", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_exp", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("~/admin_doctor_info.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }






    }
}