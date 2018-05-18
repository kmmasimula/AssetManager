using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
using System.Configuration;

namespace AssuPrototype2
{
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            string username = txtUsername.Text;
            string password = txtPassword.Text;

            con.Open();

            string query = "SELECT * FROM Users where UserName= '" + username + "' AND Password = '" + password + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Incorrect Credentials')</script>");
            }
            con.Close();
        }
    }
}