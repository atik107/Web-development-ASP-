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
    public partial class admin_update_doctor_info : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            String doctor_idd = Request.QueryString["doctor_id"];

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Select * from doctor_info where doctor_id = @DoctorID", con);
                cmd.Parameters.AddWithValue("@DoctorID", doctor_idd);
                SqlDataReader sdr = cmd.ExecuteReader();
                

                if (sdr.HasRows)
                {
                    sdr.Read();

                    TextBox1.Text = sdr.GetValue(0).ToString();
                    TextBox2.Text = sdr.GetValue(1).ToString();
                    TextBox3.Text = sdr.GetValue(2).ToString();
                    TextBox4.Text = sdr.GetValue(3).ToString();
                    TextBox5.Text = sdr.GetValue(4).ToString();
                    TextBox6.Text = sdr.GetValue(5).ToString();    
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE doctor_info SET doctor_id=@doctor_id, doctor_name=@doctor_name, doctor_number=@doctor_number, doctor_gender=@doctor_gender, doctor_age=@doctor_age, doctor_exp=@doctor_exp WHERE doctor_id=@doctor_id", con);

         
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