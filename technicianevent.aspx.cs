using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class technicianevent : System.Web.UI.Page
{ 
     public void techcat()
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    conn.Open();
    SqlCommand qry = new SqlCommand("SELECT DISTINCT Catagory FROM technitian", conn);
    SqlDataReader dr = qry.ExecuteReader();
    if (dr.HasRows)
    {
        while (dr.Read())
        {
            techcatdrop.Items.Add(dr[0].ToString());
        }
        dr.Close();
    }
    conn.Close();
}
     public void techper()
     {
         DataSet fetch1 = tech_reg.fetchdata("select Name from technitian where Catagory ='" + techcatdrop.SelectedItem.Text + "'");
         if (fetch1.Tables[0].Rows.Count > 0)
         {
             techperdrop.DataTextField = fetch1.Tables[0].Columns["Name"].ToString();
             techperdrop.DataSource = fetch1.Tables[0];
            techperdrop.DataBind();
         }
     }
     public void techid()
     {
         SqlConnection conn3 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
         conn3.Open();
         SqlCommand qry3 = new SqlCommand("select TechnitianID from Technitian where Name='" + techperdrop.SelectedItem.Text + "'", conn3);
         SqlDataReader dr = qry3.ExecuteReader();
         if (dr.HasRows)
         {
             while (dr.Read())
             {
              techidtext.Text = dr[0].ToString();
             }
             dr.Close();
         }
         conn3.Close();
     }
     public void techremu()
     {
         SqlConnection conn2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
         conn2.Open();
         SqlCommand qry2 = new SqlCommand("select Remunaration from technitian where Name='" + techperdrop.SelectedItem.Text + "'", conn2);
         SqlDataReader dr = qry2.ExecuteReader();
         if (dr.HasRows)
         {
             while (dr.Read())
             {
                 techremutext.Text = dr[0].ToString();
             }
             dr.Close();
         }
         conn2.Close();
     }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            techcat();
        }
    }
    protected void techcatdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        techper();
        TextBox1.Text = techcatdrop.Text;

    }
    protected void techperdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        techid();
        techremu();
        pan();
        techbookbutton.Enabled = true;
        TextBox2.Text = techperdrop.Text;
        string str = techidtext.Text;
        SqlDataSource1.SelectCommand = "select Address,Emailid,Phone,Sex,PanNo,Resume,Remunaration from technitian where TechnitianID='" + str + "'";
    }
    public void pan()
    {
        SqlConnection conn3 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn3.Open();
        SqlCommand qry3 = new SqlCommand("select PanNO from technitian where Name='" + techperdrop.SelectedItem.Text + "'", conn3);
        SqlDataReader dr = qry3.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                techpantext.Text = dr[0].ToString();
            }
            dr.Close();
        }
        conn3.Close();
    }
    protected void techbookbutton_Click(object sender, EventArgs e)
    {
        technextbutton.Visible = true;
        techbookbutton.Enabled = false;
        bool r = costing_cat.savedata("insert into costing values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + techidtext.Text + "','" + techpantext.Text + "','" + techremutext.Text + "')");
        if (r == true)
        {
            Response.Write("Succesfully Booked");
        }
        TextBox1.Text = "";
        TextBox2.Text = "";
        techidtext.Text = "";
        techpantext.Text = "";
        techremutext.Text = "";
    }
    protected void technextbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("equipmentevent.aspx");
    }
}