using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class finalbudgetsheet : System.Web.UI.Page
{
    decimal d, d1, d2, d3, y;
    string a, b, c, x;
    protected void Page_Load(object sender, EventArgs e)
    {
        db();
        Bindview1();
        Bindview2();
        Bindview3();
    }
    public void Bindview1()
    {
        DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select Costing from costing", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        a = dt.Compute("SUM(Costing)", "").ToString();
        catcosttext.Text = a;
        d1 = Convert.ToDecimal(a);
    }
    public void Bindview2()
    {
        DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select Costing from costing1", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        b = dt.Compute("SUM(Costing)", "").ToString();
        equipmentcosttext.Text = b;
        d2 = Convert.ToDecimal(b);
    }
    public void Bindview3()
    {
        DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select Costing from lodgingbook", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        c = dt.Compute("SUM(Costing)", "").ToString();
        landfcosttext.Text = c;
        d3 = Convert.ToDecimal(c);
    }
     protected void grandtotalbutton_Click(object sender, EventArgs e)
    {
        d = d1 + d2 + d3;
        string final = Convert.ToString(d);
        finalresulttext.Text = final;
        grandtotalbutton.Enabled = false;
    }
     public void db()
     {
         SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
         conn.Open();
         SqlCommand qry = new SqlCommand("SELECT Budget FROM desirebudget", conn);
         SqlDataReader dr = qry.ExecuteReader();
         if (dr.HasRows)
         {
             while (dr.Read())
             {
                 x = dr[0].ToString();
             }
             dr.Close();
         }
         conn.Close();
         
     }
     protected void confirmbutton_Click(object sender, EventArgs e)
     {
         d = d1 + d2 + d3;
         y = Convert.ToDecimal(x);
         if( d > y )
         {
             Label1.Visible = true;
             Label1.Text = "Sorry!!!Your Budget is exceeded";
             confirmbutton.Enabled = false;
             SqlConnection conn1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
             conn1.Open();
             SqlCommand cmd1 = new SqlCommand("truncate table costing", conn1);
             SqlCommand cmd2 = new SqlCommand("truncate table costing1", conn1);
             SqlCommand cmd3 = new SqlCommand("truncate table lodgingbook", conn1);
             SqlCommand cmd4 = new SqlCommand("truncate table desirebudget", conn1);
             cmd1.ExecuteNonQuery();
             cmd2.ExecuteNonQuery();
             cmd3.ExecuteNonQuery();
             cmd4.ExecuteNonQuery();
             conn1.Close();
         }
         else
         {
          Session["final"] = finalresulttext.Text;
          SqlConnection conn2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
          conn2.Open();
          SqlCommand cmd1 = new SqlCommand("truncate table costing", conn2);
          SqlCommand cmd2 = new SqlCommand("truncate table costing1", conn2);
          SqlCommand cmd3 = new SqlCommand("truncate table lodgingbook", conn2);
          SqlCommand cmd4 = new SqlCommand("truncate table desirebudget", conn2);
          cmd1.ExecuteNonQuery();
          cmd2.ExecuteNonQuery();
          cmd3.ExecuteNonQuery();
          cmd4.ExecuteNonQuery();
          conn2.Close();
          Response.Redirect("finalpage.aspx");
         }
     }

     protected void cancelbutton_Click(object sender, EventArgs e)
     {
         Response.Redirect("chooseevent.aspx");
     }
}