using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class techreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void techdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Text = techdrop.Text;
    }
    protected void techradio_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox4.Text = techradio.Text;
    }
    protected void techsavebutton_Click(object sender, EventArgs e)
    {
        if (FileUpload4.HasFile)
        {
            string fileextention4 = System.IO.Path.GetExtension(FileUpload4.FileName);
            if (fileextention4.ToLower() != ".pdf" && fileextention4.ToLower() != ".doc" && fileextention4.ToLower() != ".docx")
            {
                Label1.Text = "Only PDF,DOC or DOCX  file is supportable";
            }
            else
            {
                FileUpload4.PostedFile.SaveAs(Server.MapPath("~/tech_resume/") + FileUpload4.FileName.ToString());
            }
        }
        string path4 = "~/tech_resume/" + FileUpload4.FileName.ToString();
        bool r = tech_reg.savedata("insert into technitian values('" + TextBox3.Text + "','" + technametext.Text + "','" + techaddtext.Text + "','" + techemailtext.Text + "','" + techphonetext.Text + "','" + TextBox4.Text + "','" + techpantext.Text + "','" + path4 + "','" + techremutext.Text + "')");
        if (r == true)
        {
            Response.Write("Succesfully Registered");
            technametext.Text = "";
            techaddtext.Text = "";
            techemailtext.Text = "";
            techphonetext.Text = "";
            techpantext.Text = "";
            techremutext.Text = "";
        }
    }
}