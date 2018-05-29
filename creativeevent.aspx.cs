using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class creativeevent : System.Web.UI.Page
{
    public void creativeper()
    {
        DataSet fetch1 = creative_reg.fetchdata("select Name from creative where Catagory='" + creativecatdrop.SelectedItem.Text + "'");
        if (fetch1.Tables[0].Rows.Count > 0)
        {
            creativeperdrop.DataTextField = fetch1.Tables[0].Columns["Name"].ToString();
            creativeperdrop.DataSource = fetch1.Tables[0];
            creativeperdrop.DataBind();
        }
        /*SqlConnection conn1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn1.Open();
        SqlCommand qry1 = new SqlCommand("select Name from creative where Catagory='" + creativecatdrop.SelectedItem.Text + "'", conn1);
        SqlDataReader dr = qry1.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                creativeperdrop.Items.Add(dr[0].ToString());
            }
            dr.Close();
        }
        conn1.Close();*/
    }
    public void creativecat()
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand qry = new SqlCommand("SELECT DISTINCT Catagory FROM creative", conn);
        SqlDataReader dr = qry.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                creativecatdrop.Items.Add(dr[0].ToString());
            }
            dr.Close();
        }
        conn.Close();
    }
   
    public void creativeremu()
    {
        SqlConnection conn2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn2.Open();
        SqlCommand qry2 = new SqlCommand("select Remunaration from creative where Name='" + creativeperdrop.SelectedItem.Text + "'", conn2);
        SqlDataReader dr = qry2.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                remutext.Text = dr[0].ToString();
            }
            dr.Close();
        }
        conn2.Close();
    }
    public void creativeid()
    {
        SqlConnection conn3 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn3.Open();
        SqlCommand qry3 = new SqlCommand("select CreativeID from creative where Name='" + creativeperdrop.SelectedItem.Text + "'", conn3);
        SqlDataReader dr = qry3.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                creativeidtext.Text = dr[0].ToString();
            }
            dr.Close();
        }
        conn3.Close();
    }
    protected void creativecatdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = creativecatdrop.Text;
        creativeper();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            creativecat();
        }
    }

    protected void creativeperdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = creativeperdrop.Text;
        creativeid();
        creativeremu();
        pan();
        creativebookbutton.Enabled = true;
        string str = creativeidtext.Text;
        SqlDataSource.SelectCommand = "select Address,Emailid,Phoneno,Sex,PanNo,Remunaration from creative where CreativeID='" + str + "'";
    }
    protected void creativenextbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("artistevent.aspx");
    }
    public void pan()
    {
        SqlConnection conn3 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn3.Open();
        SqlCommand qry3 = new SqlCommand("select PanNO from creative where Name='" + creativeperdrop.SelectedItem.Text + "'", conn3);
        SqlDataReader dr = qry3.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                creativepantext.Text = dr[0].ToString();
            }
            dr.Close();
        }
        conn3.Close();
    }
    protected void creativebookbutton_Click(object sender, EventArgs e)
    {
        creativenextbutton.Visible = true;
        creativebookbutton.Enabled = false;
        bool r = costing_cat.savedata("insert into costing values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + creativeidtext.Text + "','" + creativepantext.Text + "','" + remutext.Text + "')");
        if (r == true)
        {
            Response.Write("Succesfully Booked");
        }
        TextBox1.Text = "";
        TextBox2.Text = "";
        creativeidtext.Text = "";
        creativepantext.Text = "";
        remutext.Text = "";
    }
}
