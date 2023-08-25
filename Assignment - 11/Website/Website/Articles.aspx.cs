using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class Articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("server =DESKTOP-PE7BHIE;database=ContentDB; trusted_connection = true");
                SqlCommand cmd = new SqlCommand("select * from Articles", con);
                con.Open();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds);
                GvTbl.DataSource = ds;
                GvTbl.DataBind();
                
            }

            catch (Exception ex)
            {
                LblTxt.Text = "Error" + ex.Message;

            }
            finally { }
        }
    }
}
