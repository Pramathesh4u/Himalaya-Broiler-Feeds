using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Stock.Stock.DBConnection;

namespace Stock
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Code is working";
            ConnectionString con = new ConnectionString();
            try
            {


                SqlCommand com = new SqlCommand(" SELECT user_role FROM tbl_USe ", con.GetOpenConnection());
                com.CommandType = CommandType.Text;

                con.GetOpenConnection();
                SqlDataReader rd = com.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Read();
                 
                    //Response.Redirect("~/Stock/startup/home.aspx");
                    //rd.Dispose();
                }
                else
                {
                    Response.Write("<script>alert('Somthing wrong'  )</script>");
                }

            }
            catch (Exception ex)
            {
                Label1.Visible = true;
                Label1.Text = ex.Message; 
            }


            finally
            {
                con.GetCloseConnection();


            }
            //Response.Redirect("Stock/TestLogin.aspx");
        }
         

        

        
    }
}
