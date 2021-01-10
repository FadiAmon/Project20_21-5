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
    public partial class GradesPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string maincon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);
            string sqlq = "select IDN, GRD from [dbo].[Students]";

            
            SqlCommand sqlcom = new SqlCommand(sqlq, sqlcon);
            sqlcon.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcom);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            StringBuilder str = new StringBuilder();
            str.Append("<center>");
            str.Append("<h1>Grades</h1>");
            str.Append("<hr/>");
            str.Append("<table border=1>");
            str.Append("<tr>");
            foreach (DataColumn dc in dt.Columns)
            {
                str.Append("<th>");
                str.Append(dc.ColumnName.ToUpper());
                str.Append("</th>");
            }
            str.Append("</tr>");

            foreach (DataRow dr in dt.Rows)
            {
                str.Append("<tr>");
                foreach (DataColumn dc in dt.Columns)
                {
                    str.Append("<th>");
                    str.Append(dr[dc.ColumnName].ToString());
                    str.Append("</th>");
                }
                str.Append("</tr>");
            }
            str.Append("</table>");
            str.Append("</center>");
            Panel1.Controls.Add(new Label { Text = str.ToString() });
            sqlcon.Close();
        }
    }
}