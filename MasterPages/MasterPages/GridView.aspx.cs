﻿using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPages
{
    public partial class GridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                    SqlConnection con = new SqlConnection("server =DESKTOP-PE7BHIE;database=CustsDb; trusted_connection = true");
                    SqlCommand cmd = new SqlCommand("select * from Customer", con);
                    con.Open();
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    dataAdapter.Fill(ds);
                    gvEmps.DataSource = ds;
                    gvEmps.DataBind();
                    LblMsg.Text = "Number of Customers are: " + ds.Tables[0].Rows.Count;
                }

                catch (Exception ex)
                {
                    LblMsg.Text = "Error" + ex.Message;

                }
                finally { }
            }
    }
    }
    