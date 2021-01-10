using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project2021
{
    public partial class register : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Text.Text == "S" || Text.Text =="s" || Text.Text =="Student" )
            {

            
            string check = "select count(*) from [Students] where IDN ='" + idtxt.Text + "' ";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 0)
            {
                int zero = 0;
                string ins = "Insert into [Students](FN,LN,IDN,PASS,GRD) values('" + fntxt.Text + "','" + lntxt.Text + "','" + idtxt.Text + "','" + passtxt.Text + "','" + zero + "' )";

                //////////////////////////////////////// inserting
                SqlCommand comm = new SqlCommand(ins, con);
                con.Open();
                comm.ExecuteNonQuery();
                con.Close();
                Response.Redirect("login.aspx");
            }
            else
            {
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Your ID number Already exists";
                //Response.Redirect("login.aspx"); 
            }

            }


    else if (Text.Text=="T" || Text.Text =="Teacher" || Text.Text =="t")
            {

                string check = "select count(*) from [Teachers] where IDN ='" + idtxt.Text + "' ";
                SqlCommand com = new SqlCommand(check, con);
                con.Open();
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                con.Close();
                if (temp == 0)
                {
                    string ins = "Insert into [Teachers](FN,LN,IDN,PASS) values('" + fntxt.Text + "','" + lntxt.Text + "','" + idtxt.Text + "','" + passtxt.Text + "' )";

                    SqlCommand comm = new SqlCommand(ins, con);
                    con.Open();
                    comm.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("login.aspx");
                }
                else
                {
                    msg.ForeColor = System.Drawing.Color.Red;
                    msg.Text = "Your ID number Already exists";
                    //Response.Redirect("login.aspx"); 
                }

            }





        }
        }
    }
