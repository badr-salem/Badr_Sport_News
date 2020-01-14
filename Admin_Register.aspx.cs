using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null) { Response.Redirect("Index.aspx"); }

    }

    protected void btnReg_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        Response.Redirect("Admin_Settings.aspx");
    }
}