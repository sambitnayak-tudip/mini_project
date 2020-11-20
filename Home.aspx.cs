using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Telerik.Web.UI;
using System.Windows;

namespace MiniProject
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter SqlDataAdapter = new SqlDataAdapter();
        DataSet dataSet = new DataSet();
        public object EmpID { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RadButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpDetails.aspx");
        }

        protected void gridUsers_DeleteCommand(object source, GridCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TT09CGA;Initial Catalog=Employee;Integrated Security=True");
            var EmpID = (int)((GridDataItem)e.Item).GetDataKeyValue("EmpID");
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM EMPLOYEEINFO  WHERE EmpID=@EmpID", con);
            cmd.Parameters.AddWithValue("EmpID", EmpID);
            int i = cmd.ExecuteNonQuery();
            Response.Write("One row deleted");
            con.Close();
        }

        protected void gridUsers_UpdateCommand(object source, GridCommandEventArgs e)
        {

            var editableItem = ((GridEditableItem)e.Item);
            var EmpID = (int)editableItem.GetDataKeyValue("EmpID");
            string FirstName = (editableItem["FirstName"].Controls[0] as TextBox).Text;
            string LastName = (editableItem["LastName"].Controls[0] as TextBox).Text;
            string City = (editableItem["City"].Controls[0] as TextBox).Text;
            string State = (editableItem["State"].Controls[0] as TextBox).Text;
            string Zip = (editableItem["Zip"].Controls[0] as TextBox).Text;

            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TT09CGA;Initial Catalog=Employee;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE EMPLOYEEINFO SET EmpID = '" + EmpID + "', FirstName = '" + FirstName + "', LastName = '" + LastName + "', State = '" + State + "', City = '" + City + "', Zip = '" + Zip + "' WHERE EmpID = '" + EmpID + "'", con);
                int i = cmd.ExecuteNonQuery();
               if(i>0)
                { Response.Write("One row is updated successfully"); }
               
                con.Close();

            }
            catch (Exception ex)
            {
                gridUsers.Controls.Add(new LiteralControl("Unable to update EMPLOYEEINFO Reason: " + ex.Message));
                e.Canceled = true;
            }
        }
    }
}