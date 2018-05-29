using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class creativereg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void createdrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = createdrop.Text;
    }
    protected void createradio_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = createradio.Text;
    }
    protected void createsavebutton_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            string fileextention=System.IO.Path.GetExtension(FileUpload1.FileName);
            if(fileextention.ToLower()!=".pdf" && fileextention.ToLower()!=".doc" && fileextention.ToLower()!=".docx")
            {
                Label1.Text="Only PDF,DOC or DOCX  file is supportable";
            }
            else
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/creative_resume/") + FileUpload1.FileName.ToString());
            }
        }
        string path1 = "~/creative_resume/" + FileUpload1.FileName.ToString();
        bool r = creative_reg.savedata("insert into creative values('" + TextBox1.Text + "','" + createnametext.Text + "','" + createaddtext.Text + "','" + createemailtext.Text + "','" + createphonetext.Text + "','" + TextBox2.Text + "','" + createpantext.Text + "','" + path1 + "','" + createremutext.Text + "')");
        if (r == true)
        {
            Response.Write("Succesfully Created");
            createdrop.SelectedItem.Text = "";
            createnametext.Text = "";
            createaddtext.Text = "";
            createemailtext.Text = "";
            createphonetext.Text = "";
            createpantext.Text = "";
            createremutext.Text = "";
        }
    }
}