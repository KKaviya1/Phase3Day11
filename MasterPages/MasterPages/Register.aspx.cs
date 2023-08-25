//using System;
//using System.Collections.Generic;
//using System.Data.SqlClient;
//using System.Data;
//using System.Configuration;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace MasterPages
//{
//    public partial class Register : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }
//        protected void BtnRegister_Click(object sender, EventArgs e)
//        {
//            try
//            {
//                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CustsDbConnectionString"].ToString());
//                SqlCommand cmd = new SqlCommand();
//                cmd.Connection=con;
//                cmd.CommandText ="insert into customer values(@id,@name,@city,@odLimit");
//                con.Open();
//                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
//                DataSet ds = new DataSet();
//                dataAdapter.Fill(ds);
//                gvEmps.DataSource = ds;
//                gvEmps.DataBind();
//                LblMsg.Text = "Number of Customers are: " + ds.Tables[0].Rows.Count;
//            }

//            catch (Exception ex)
//            {
//                LblMsg.Text = "Error" + ex.Message;

//            }
//            finally { }
//        }
//    }
//    }
//}



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;

namespace MasterPages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Page.IsPostBack)
            {
                Lbl.Visible = false;
            }
        }
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            Lbl.Visible = true;
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CustsDbConnectionString"].ToString());
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into Customer values (@id,@name,@city,@odLimit)";
                cmd.Parameters.AddWithValue("@id", int.Parse(TxtId.Text));
                cmd.Parameters.AddWithValue("@name", TxtName.Text);
                cmd.Parameters.AddWithValue("@city", TxtCity.Text);
                cmd.Parameters.AddWithValue("@odLimit", double.Parse(TxtOd.Text));
                con.Open();
                cmd.ExecuteNonQuery();
                Lbl.Text = "Registration Success";
            }

            catch (Exception ex)
            {
                Lbl.Text = "Error" + ex.Message;
            }
        }
    }
}