using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PM
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid = TextBox1.Text.ToString();
            string userpsw = TextBox2.Text.ToString();
            string str;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            conn.Open();
            str = string.Format("select * from employee where eid={0} and password={1}", userid, userpsw);
            SqlCommand sqlCommand = new SqlCommand(str, conn);
            if (sqlCommand.ExecuteScalar() != null)
            {
                Session.Add("userid", userid);
                Response.Redirect("management.aspx", true);
            }
            else
            {
                Label1.Text = "登陆失败，请重新输入！";
            }
        }
    }
}