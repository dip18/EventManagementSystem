using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class budget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool r = desirebudget.savedata("insert into desirebudget values('" + TextBox1.Text + "')");
        if (r == true)
        {
            Response.Redirect("chooseevent.aspx");
        }
    }
}