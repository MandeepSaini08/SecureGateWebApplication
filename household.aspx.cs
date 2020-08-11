using System;
using System.Text;
using System.Security.Cryptography;
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
  public partial class WebForm5 : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      con.Open();
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString.ToString());
  } 
}
