using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class equipmentevent : System.Web.UI.Page
{
    public void equipname()
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand qry = new SqlCommand("SELECT DISTINCT Name FROM equipment", conn);
        SqlDataReader dr = qry.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                equipnamedrop.Items.Add(dr[0].ToString());
            }
            dr.Close();
        }
        conn.Close();
    }
    public void equipmod()
    {
        DataSet fetch1 = equip_reg.fetchdata("select Model from equipment where Name='" + equipnamedrop.SelectedItem.Text + "'");
        if (fetch1.Tables[0].Rows.Count > 0)
        {
            equipmoddrop.DataTextField = fetch1.Tables[0].Columns["Model"].ToString();
            equipmoddrop.DataSource = fetch1.Tables[0];
            equipmoddrop.DataBind();
        }
    }
    protected void equipnamedrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = equipnamedrop.Text;
        equipmod();
    }
    public void equipcost()
    {
        SqlConnection conn4 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn4.Open();
        SqlCommand qry4 = new SqlCommand("select Cost from equipment where Model='" + equipmoddrop.SelectedItem.Text + "'", conn4);
        SqlDataReader dr = qry4.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                equipcosttext.Text = dr[0].ToString();
            }
            dr.Close();
        }
        conn4.Close();
    }
    public void lodgingclass()
    {
        DataSet fetch1 = tech_reg.fetchdata("select Class from lodgingfooding");
        if (fetch1.Tables[0].Rows.Count > 0)
        {
            lodgingdrop.DataTextField = fetch1.Tables[0].Columns["Class"].ToString();
            lodgingdrop.DataSource = fetch1.Tables[0];
            lodgingdrop.DataBind();
        }
    }
    public void lodgingcost()
    {
        SqlConnection conn4 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn4.Open();
        SqlCommand qry4 = new SqlCommand("select Cost from lodgingfooding where Class='" + lodgingdrop.SelectedItem.Text + "'", conn4);
        SqlDataReader dr = qry4.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
               lodgingcosttext.Text = dr[0].ToString();
            }
            dr.Close();
        }
        conn4.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            equipname();
            lodgingclass();
        }
        
    }
    protected void equipmoddrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        equipcost();
        TextBox2.Text = equipmoddrop.Text;
        addequipbutton.Enabled = true;
    }
    protected void lodgingdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        lodgingcost();
        TextBox3.Text = lodgingdrop.Text;
        addlodbutton.Enabled = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        equipfinalcosttext.Text  = ((Convert.ToDecimal(equipcosttext.Text)) * (Convert.ToDecimal(equipnotext.Text))).ToString();
    }
    protected void addequipbutton_Click(object sender, EventArgs e)
    {
        bool r = costing_cat1.savedata("insert into costing1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + equipfinalcosttext.Text  + "')");
        if (r == true)
        {
            Response.Write("Succesfully Equipment Booked");
        }
        finalbutton.Visible = true;
        addequipbutton.Enabled = false;
        TextBox1.Text = "";
        TextBox2.Text = "";
        equipfinalcosttext.Text = "";
    }
    protected void addlodbutton_Click(object sender, EventArgs e)
    {
        bool r = lodging.savedata("insert into lodgingbook values('" + TextBox3.Text + "','" + lodgingcosttext.Text + "')");
        if (r == true)
        {
            Response.Write("Succesfully Lodging & Fooding Booked");
        }
        addlodbutton.Enabled = false;
        TextBox3.Text = "";
        lodgingcosttext.Text = "";
    }
    protected void finalbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("finalbudgetsheet.aspx");
    }
}