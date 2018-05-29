using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class entrysearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void viewentrybutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("budget.aspx");
    }
    protected void newentrybutton_Click1(object sender, EventArgs e)
    {
        Response.Redirect("chooseentry.aspx");
    }
}