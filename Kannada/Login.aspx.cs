using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Kannada
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where Username ='" + Username.Text + "' and Password ='"+Password.Text+"'";
            try
            {
                SqlCommand comm = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                Session["user"] = null;
                if (temp == 1)
                {
                    Session["user"] = Username.Text;
                    Response.Redirect("home.cshtml");
                    //Response.Redirect("Sample.aspx");
                }
                else
                {
                    Response.Write("Wrong username or password");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            conn.Close();
        }
    }
}