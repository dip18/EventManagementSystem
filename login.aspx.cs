using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginbutton_Click(object sender, EventArgs e)
    {
        if (loginidtext.Text == "event2015" && loginpwtext.Text == "1234")
        {
            Response.Redirect("entrysearch.aspx");
        }
        else 
        {
            Label1.Text = "Wrong ID or Password";
            loginidtext.Text = "";
            loginpwtext.Text = "";
        }
        
    }
}