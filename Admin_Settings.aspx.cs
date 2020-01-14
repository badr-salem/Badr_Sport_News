using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Settings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null) { Response.Redirect("Index.aspx"); }

    }

    protected void btnAddUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Register.aspx");

    }

    protected void btnAddArticle_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Add_Article.aspx");
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Edit_Articles.aspx");
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");

    }
}