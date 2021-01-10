using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project2021
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [Students] where IDN ='" + IDNtext.Text + "' and PASS='" + passtxt.Text + "'   ";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                
                Response.Redirect("HomePage.aspx");  // 
            }
            else
            {
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Your ID number or Password are wrong";
            }
        }
    }
}