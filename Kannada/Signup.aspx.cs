using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Kannada
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where Username ='"+ Username.Text +"'";
            try
            {
                SqlCommand comm = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already exists!");
                }

            }
            catch(Exception ex){
                Response.Write(ex.ToString());
            }
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();
            string insert = "insert into UserData (Name,Username,Password) values (@name,@uname,@pwd)";
            SqlCommand comm = new SqlCommand(insert, conn);
                comm.Parameters.AddWithValue("@name", Name.Text);
                comm.Parameters.AddWithValue("@uname",Username.Text);
                comm.Parameters.AddWithValue("@pwd",Password.Text);
                comm.ExecuteNonQuery();
                Response.Write("Registration Successful");
                Response.Redirect("Login.aspx");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}