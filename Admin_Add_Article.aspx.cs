using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Add_Article : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null) { Response.Redirect("Index.aspx"); }
            
    }

    protected void btnAddArticle_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-V2TA2EC\\SQLEXPRESS;Initial Catalog=Badr_News_DataBase;Integrated Security=True");
        con.Open();
        SqlCommand cm = new SqlCommand("insert into Articles(title ,sub_title , details , image ) values (@title ,@sub_title, @details , @image)", con);
        cm.Parameters.Add("@title", txtTitle.Text);
        cm.Parameters.Add("@sub_title", txtSub_title.Text);
        cm.Parameters.Add("@details", txtDetails.Text);
        string strImg = System.IO.Path.GetFileName(File1.PostedFile.FileName);
        cm.Parameters.Add("@image", strImg);
        cm.ExecuteNonQuery();
        con.Close();

        File1.PostedFile.SaveAs(Server.MapPath("images//") + strImg);

        Response.Redirect("Admin_Settings.aspx");


    }
}