using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class finalpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["final"] != null)
            {
                costtext.Text = Convert.ToString(Session["final"]);
            }
        }
        SqlDataSource1.SelectCommand = "select * from finalbooking";
    }
    protected void finalbutton_Click(object sender, EventArgs e)
    {
        bool r = finalbooking.savedata("insert into finalbooking values('" + emailtext.Text + "','" + costtext.Text + "','" + DateTime.Now + "')");
        if (r == true)
        {
            Label1.Text = "Thank You!!!!!!You Have Succesfully Booked Your Event";
            finalbutton.Enabled = false;
            gotohomebutton.Enabled = true;
        }
    }
    protected void gotohomebutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}