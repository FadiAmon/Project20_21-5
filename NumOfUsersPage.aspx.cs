using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace project2021.zpages
{
    public partial class NumOfUsersPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string maincon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);

            System.Data.SqlClient.SqlConnection sqlConnection = new System.Data.SqlClient.SqlConnection(maincon);

            sqlConnection.Open();
            System.Data.SqlClient.SqlCommand sqlCommand = new System.Data.SqlClient.SqlCommand("SELECT COUNT(*) FROM Students");
            sqlCommand.Connection = sqlConnection;

            int RecordCount = Convert.ToInt32(sqlCommand.ExecuteScalar());
            msg.Text = RecordCount.ToString();

            System.Data.SqlClient.SqlCommand sqlCommandz = new System.Data.SqlClient.SqlCommand("SELECT COUNT(*) FROM Teachers");
            sqlCommand.Connection = sqlConnection;

            int RecordCountz = Convert.ToInt32(sqlCommand.ExecuteScalar());
            msg0.Text = RecordCountz.ToString();

        }
    }
}