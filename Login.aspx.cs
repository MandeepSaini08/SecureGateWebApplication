using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace website
{
  public partial class WebForm3 : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString.ToString());
    protected void login_button_Click(object sender, EventArgs e)
    {
        con.Open();
        Page.Validate();

        if (Page.IsValid == true)
        {
          string s = "select * from admin where username=@username and password=@password";
          SqlCommand cmd = new SqlCommand(s, con);
          cmd.Parameters.AddWithValue("@username", txtuser.Text.Trim());
          cmd.Parameters.AddWithValue("@password", txtpass.Text.Trim());
          SqlDataAdapter da = new SqlDataAdapter(cmd);
          DataTable dt = new DataTable();
          da.Fill(dt);
          con.Close();
          if (dt.Rows.Count > 0)
          {
            Session["username"] = txtuser.Text.Trim();
            Response.Redirect("dashboard.aspx");
          }
          else
          {
            Response.Redirect("login.aspx");
          }
        }
      }
  

  protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
 
  
  }
}

