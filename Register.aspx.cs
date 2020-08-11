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
  public partial class WebForm4 : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      con.Open(); 
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString.ToString());

    protected void register_button_Click(object sender, EventArgs e)
    {
      
      Page.Validate();

      if (Page.IsValid == true)
      {
          string s = "insert into admin values ('"+txtname.Text+"','"+txtuser.Text+"','"+txtadd.Text+"','"+txtemail.Text+"','"+txtpass.Text+"')";
          SqlCommand cmd = new SqlCommand(s, con);
          cmd.ExecuteNonQuery();
          con.Close();
          Response.Redirect("login.aspx");
          
        }
      }
    }
   /* public string encryption(String password)
    {
      MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
      byte[] encrypt;
      UTF8Encoding encode = new UTF8Encoding();
      //encrypt the given password string into Encrypted data  
      encrypt = md5.ComputeHash(encode.GetBytes(password));
      StringBuilder encryptdata = new StringBuilder();
      //Create a new string by using the encrypted data  
      for (int i = 0; i < encrypt.Length; i++)
      {
        encryptdata.Append(encrypt[i].ToString());
      }
      return encryptdata.ToString();
    }*/
  }

