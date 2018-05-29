using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class artistreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void artistdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Text = artistdrop.Text;
    }
    protected void artistradio_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox4.Text = artistradio.Text;
    }
    protected void artistavebutton_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
        {
            string fileextention1 = System.IO.Path.GetExtension(FileUpload2.FileName);
            if (fileextention1.ToLower() != ".jpeg" && fileextention1.ToLower() != ".jpg")
            {
                Label1.Text = "Only JPEG,JPG file is supportable";
            }
            else
            {
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/artist_portfolio/") + FileUpload2.FileName.ToString());
            }
        }
        if (FileUpload3.HasFile)
        {
            string fileextention2 = System.IO.Path.GetExtension(FileUpload3.FileName);
            if (fileextention2.ToLower() != ".pdf" && fileextention2.ToLower() != ".doc" && fileextention2.ToLower() != ".docx")
            {
                Label1.Text = "Only PDF,DOC or DOCX  file is supportable";
            }
            else
            {
                FileUpload3.PostedFile.SaveAs(Server.MapPath("~/artist_resume/") + FileUpload3.FileName.ToString());
            }
        }
        string path2 = "~/artist_portfolio/" + FileUpload2.FileName.ToString();
        string path3 = "~/artist_resume/" + FileUpload3.FileName.ToString();
        bool r = artist_reg.savedata("insert into artist values('" + TextBox3.Text + "','" + artistnametext.Text + "','" + artistaddtext.Text + "','" + artistemailtext.Text + "','" + artistphonetext.Text + "','" + TextBox4.Text + "','" + artistpantext.Text + "','" + path2 + "','" + path3 + "','" + artistremutext.Text + "')");
        if (r == true)
        {
            Response.Write("Succesfully Registered");
            artistdrop.SelectedItem.Text = "";
            artistnametext.Text = "";
            artistaddtext.Text = "";
            artistemailtext.Text = "";
            artistphonetext.Text = "";
            artistpantext.Text = "";
            artistremutext.Text = "";
        }
    }
}