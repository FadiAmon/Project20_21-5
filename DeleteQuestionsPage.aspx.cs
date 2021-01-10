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
    public partial class EditQuestionsPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           SqlCommand SqlComm = new SqlCommand("UPDATE Questions ('Question', 'Answer1', 'Answer2' , 'Answer3' , 'Answer4') VALUES (@DataDesc, @DataDate, @DataQty) WHERE DataID = @DataID", con);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ins = "Delete [Questions] where qnum ('" + qn.Text + "')";
            SqlCommand cmd = new SqlCommand("Delete From Questions Where qnum = @id", con);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = qn.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            msg.ForeColor = System.Drawing.Color.Green;
            msg.Text = "Question was deleted successfully!";
        }
    }
}
