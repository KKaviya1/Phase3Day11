using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPages
{
    public partial class custom_validator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(!Page.IsPostBack)
                { LblMsg.Visible = false; }
        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int number = int.Parse(args.Value);
            args.IsValid = number %2==1
;
        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            if (!Page.IsValid)
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Your Lucky Even Number is: " + TxtEvenNum.Text;


            }
        }
    }
}