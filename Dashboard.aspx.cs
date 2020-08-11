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
using System.Net.Sockets;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;



namespace website
{
  public partial class WebForm1 : System.Web.UI.Page
  {
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
      con.Open();
      String s = "select * from admin where username=@p1";
      SqlCommand cmd = new SqlCommand(s, con);
      cmd.Parameters.AddWithValue("@p1", Session["username"].ToString());
      SqlDataAdapter da = new SqlDataAdapter(cmd);
      DataTable dt = new DataTable();
      da.Fill(dt);
      if(dt.Rows.Count > 0)
      {
        Labeladd.Text = dt.Rows[0]["address"].ToString();
      }
      else
      {
        Labeladd.Text = "No value";
      }
    }
  }
}
