using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-V2TA2EC\\SQLEXPRESS;Initial Catalog=Badr_News_DataBase;Integrated Security=True");
        SqlCommand cm = new SqlCommand("select * from Users where username=@username and password =@password", con);
        cm.Parameters.Add("@username", txtUN.Text);
        cm.Parameters.Add("@password", txtPW.Text);

        SqlDataAdapter da = new SqlDataAdapter(cm);

        DataSet ds = new DataSet();
        da.Fill(ds, "Users");

        if (ds.Tables["Users"].Rows.Count == 0)
        {
            Response.Write("invailed username or email");
        }
        else
        {
            Session["un"] = txtUN.Text;
            Response.Redirect("Admin_Settings.aspx");
        }

    }
}