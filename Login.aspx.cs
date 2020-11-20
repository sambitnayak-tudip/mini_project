using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MiniProject
{
    public partial class Login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet dataSet = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
             con.ConnectionString = (@"Data Source=DESKTOP-TT09CGA;Initial Catalog=Employee;Integrated Security=True");
            try
            {
                con.Open();
                cmd.CommandText = ("SELECT * FROM USERDETAILS WHERE EMAIL='" + RadTextBoxEmail.Text + "'AND PASSWORD='" + RadTextBoxPwd.Text + "'");

                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(dataSet, "USERDETAILS");
                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("wrong credentials");
                }
                con.Close();

            }
            catch (Exception ea)
            {
                Response.Write(ea.Message);
            }


        }
    }
}