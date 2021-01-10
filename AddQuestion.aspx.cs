using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project2021.zpages
{
    public partial class AddQuestion : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "Insert into [Questions](Question,Answer1,Answer2,Answer3,Answer4,qnum) values('" + q.Text + "','" + a1.Text + "','" + a2.Text + "','" + a3.Text + "','" + a4.Text + "','"+qn.Text+"' )";
            SqlCommand comm = new SqlCommand(ins, con);
            con.Open();
            comm.ExecuteNonQuery();
            con.Close();
            msg.ForeColor = System.Drawing.Color.Green;
            msg.Text = "Question added successfully!";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}