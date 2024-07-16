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
    public partial class admin_doctor_info : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlDataAdapter sda = new SqlDataAdapter("select [doctor_id],[doctor_name],[doctor_number],[doctor_gender],[doctor_age],[doctor_exp] from doctor_info;", con);
                DataTable dtbl = new DataTable();
                sda.Fill(dtbl);

                CoursesGridView.DataSource = dtbl;
                CoursesGridView.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

      


        protected void CoursesGridView_RowCommand (object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "upd")
            {

                Response.Redirect("~/admin_update_doctor_info.aspx?doctor_id="+ e.CommandArgument.ToString().Trim()+"");

            }
            else if(e.CommandName == "del")
            {

                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("Delete  doctor_info where doctor_id = @doctor_id", con);
                    cmd.Parameters.AddWithValue("@doctor_id", e.CommandArgument);

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
}