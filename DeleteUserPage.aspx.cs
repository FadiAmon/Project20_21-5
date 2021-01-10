using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project2021.zpages
{
    public partial class DeleteUserPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string ins = "Delete [Students] where IDN ('" + TextBox1.Text + "')";
            SqlCommand cmd = new SqlCommand("Delete From Students Where IDN = @id", con);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = TextBox1.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            msg.ForeColor = System.Drawing.Color.Green;
            msg.Text = "Student was deleted successfully!";
 
        }
    }
}