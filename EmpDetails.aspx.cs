using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace MiniProject
{
    public partial class EmpDetails : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (RadNumericTextBoxEmpID.Text == string.Empty || RadNumericTextBoxEmpID.Text == "0")
            {
                //Response.Write("EmployeeID cannot be empty or Zero");
            }
           
            else if (RadTextBoxFN.Text == string.Empty)
            {
               // Response.Write("Employee First Name can't be empty");

            }
            else if (RadTextBoxLN.Text == string.Empty)
            {
               // Response.Write("Employee Last Name can't be empty");
            }
            else if (RadTextBoxCity.Text == string.Empty)
            {
                //Response.Write("City can't be empty");
            }
            else if (RadTextBoxState.Text == string.Empty)
            {
               // Response.Write("State can't be empty");
            }
            else if (RadNumericTextBoxZip.Text == string.Empty)
            {
               // Response.Write("Zip cannot be empty or Zero");
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TT09CGA;Initial Catalog=Employee;Integrated Security=True");
                try
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("INSERT INTO EmployeeInfo(EmpID,FirstName, LastName, City, State, Zip) VALUES(@EmpID,@FirstName, @LastName,@City, @State, @Zip)", con);
                    cmd.Parameters.AddWithValue("@EmpID", RadNumericTextBoxEmpID.Text);
                    cmd.Parameters.AddWithValue("@FirstName", RadTextBoxFN.Text);
                    cmd.Parameters.AddWithValue("@LastName", RadTextBoxLN.Text);
                    cmd.Parameters.AddWithValue("@City", RadTextBoxCity.Text);
                    cmd.Parameters.AddWithValue("@State", RadTextBoxState.Text);
                    cmd.Parameters.AddWithValue("@Zip", RadNumericTextBoxZip.Text);

                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Redirect("Home.aspx");
                    }

                    con.Close();




                }
               
                catch (Exception ex)

                {
                    Response.Write("Employee is already exist");


                }
            }
        }

        protected void btn_Click1(object sender, EventArgs e)
        {
            RadNumericTextBoxEmpID.Text = "";
            RadTextBoxFN.Text = "";
            RadTextBoxLN.Text = "";
            RadTextBoxCity.Text = "";
            RadTextBoxState.Text = "";
            RadNumericTextBoxZip.Text = "";

        }
        void clear()
        { 
        
        }
        /*void refresh()
{
   Page.Response.Redirect(Page.Request.Url.ToString(), true);

}*/
    }
}