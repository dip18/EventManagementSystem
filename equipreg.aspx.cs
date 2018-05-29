using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class equipreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addbutton_Click(object sender, EventArgs e)
    {
        bool r = equip_reg.savedata("insert into equipment values('" + TextBox1.Text + "','" + modeltext.Text + "','" + pricetext.Text + "')");
        if (r == true)
        {
            Response.Write("Succesfully Inserted");
            equipdrop.SelectedItem.Text = "";
            modeltext.Text = "";
            pricetext.Text = "";
        }
    }

    protected void equipdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = equipdrop.Text;
    }
    protected void canbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("chooseentry.aspx");
    }
}