using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Article : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-V2TA2EC\\SQLEXPRESS;Initial Catalog=Badr_News_DataBase;Integrated Security=True");
            con.Open();

            SqlCommand cm = new SqlCommand("select * from Articles where ID=" + Request.Params["x"], con);
            SqlDataReader dr = cm.ExecuteReader();

            while (dr.Read())
            {
                s.InnerHtml += "<div class = 'row'>" +
                       "<div class='col-4'></div>" +
                       "<div class='col-4'> <h2><b>" + dr["title"] + "</b></h2></div>" +
                       "<div class='col-4'></div>" +
                "</div>";


                s.InnerHtml += "<div class = 'row'>" +
                       "<div class='col-4'></div>" +
                       "<div class='col-4'><img class='img-thumbnail pd-3' src=images/" + dr["image"] + "></div>" +
                       "<div class='col-4'></div>" +
                "</div> </br></br>";


                s.InnerHtml += "<div class='row'>" +
                    "<div class='col-10' style='text-align: left !important;'>" + dr["details"] + "</div>" +
                    "<div class='col-2'> </div>" +
                    "</div>";

            }

            con.Close();
            con.Open();

            SqlCommand cm2 = new SqlCommand("select * from Comments where article_id="+Request.Params["x"]+"ORDER BY ID DESC;", con);
            SqlDataReader dr2 = cm2.ExecuteReader();

            while (dr2.Read())
            {
                comments.InnerHtml += "<b>" + dr2["name"] + " : </b>" + dr2["comment"] + "<hr><br />";

            }

        }
    }

    protected void btnAddComment_Click(object sender, EventArgs e)
    {


        comments.InnerHtml += "<b>" + txtName.Text + " : </b>" + txtComment.Text + "<br />";

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-V2TA2EC\\SQLEXPRESS;Initial Catalog=Badr_News_DataBase;Integrated Security=True");
        con.Open();

        SqlCommand cm = new SqlCommand("insert into Comments(name , comment , article_id) values(@name , @comment , @article_id)", con);
        cm.Parameters.Add("@name", txtName.Text);
        cm.Parameters.Add("@comment", txtComment.Text);
        cm.Parameters.Add("@article_id", Request.Params["x"]);
        cm.ExecuteNonQuery();
        con.Close();
        txtName.Text = "";
        txtComment.Text = "";
    }
}