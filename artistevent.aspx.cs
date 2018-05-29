using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class artistevent : System.Web.UI.Page
{
    public void artistcat()
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand qry = new SqlCommand("SELECT DISTINCT ArtistType FROM artist", conn);
        SqlDataReader dr = qry.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                artistcatdrop.Items.Add(dr[0].ToString());
            }
            dr.Close();
        }
        conn.Close();
    }
    public void artistper()
    {
        DataSet fetch1 = creative_reg.fetchdata("select Name from artist where ArtistType='" + artistcatdrop.SelectedItem.Text + "'");
        if (fetch1.Tables[0].Rows.Count > 0)
        {
            artistperdrop.DataTextField = fetch1.Tables[0].Columns["Name"].ToString();
            artistperdrop.DataSource = fetch1.Tables[0];
            artistperdrop.DataBind();
        }
    }
    public void artistremu()
    {
        SqlConnection conn2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn2.Open();
        SqlCommand qry2 = new SqlCommand("select Remunaration from artist where Name='" + artistperdrop.SelectedItem.Text + "'", conn2);
        SqlDataReader dr = qry2.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                artistremutext.Text = dr[0].ToString();
            }
            dr.Close();
        }
        conn2.Close();
    }
    public void artistid()
    {
        SqlConnection conn3 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn3.Open();
        SqlCommand qry3 = new SqlCommand("select ArtistID from artist where Name='" + artistperdrop.SelectedItem.Text + "'", conn3);
        SqlDataReader dr = qry3.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                artistidtext.Text = dr[0].ToString();
            }
            dr.Close();
        }
        conn3.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
         artistcat();
        }
    }
    protected void artistcatdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        artistper();
        TextBox1.Text=artistcatdrop.Text;
    }
    protected void artistperdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        artistremu();
        artistid();
        photo();
        pan();
        artistbookbutton.Enabled = true;
        TextBox2.Text=artistperdrop.Text;
        string str = artistidtext.Text;
        SqlDataSource1.SelectCommand = "select Address,EmailID,PhoneNo,Sex,PancardNo,Resume,Remunaration from artist where ArtistID='" + str + "'";
    }
    protected void creativenextbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("technicianevent.aspx");
    }
    public void photo()
    {
        SqlConnection conn3 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn3.Open();
        SqlCommand qry3 = new SqlCommand("select Portfolio from artist where Name='" + artistperdrop.SelectedItem.Text + "'", conn3);
        SqlDataReader dr = qry3.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string img = dr[0].ToString();
                Image1.ImageUrl = img;
            }
            dr.Close();
        }
        conn3.Close();
    }
    public void pan()
    {
        SqlConnection conn3 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn3.Open();
        SqlCommand qry3 = new SqlCommand("select PancardNO from artist where Name='" + artistperdrop.SelectedItem.Text + "'", conn3);
        SqlDataReader dr = qry3.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                artistpantext.Text = dr[0].ToString();
            }
            dr.Close();
        }
        conn3.Close();
    }
    protected void artistbookbutton_Click(object sender, EventArgs e)
    {
        artistnextbutton.Visible = true;
        artistbookbutton.Enabled = false;
        bool r = costing_cat.savedata("insert into costing values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + artistidtext.Text + "','" + artistpantext.Text + "','" + artistremutext.Text + "')");
        if (r == true)
        {
            Response.Write("Succesfully Booked");
        }
        TextBox1.Text = "";
        TextBox2.Text = "";
        artistidtext.Text = "";
        artistpantext.Text = "";
        artistremutext.Text = "";
    }
}