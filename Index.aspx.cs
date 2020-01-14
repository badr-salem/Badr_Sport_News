using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-V2TA2EC\\SQLEXPRESS;Initial Catalog=Badr_News_DataBase;Integrated Security=True");
        con.Open();

        SqlCommand cm = new SqlCommand("select ID , title , sub_title , image from Articles ORDER BY ID DESC", con);
        SqlDataReader dr = cm.ExecuteReader();
      





        


      while (dr.Read())
        {

            

            s.InnerHtml +=
                "<div class='card col-md-4 pt-3'><img class='card-img-top' src=images/" + dr["image"] + " alt='Card image cap'>" +
                "<div class='card-body'>" +
                "<h5 class='card-title'>" + dr["title"] + "</h5>" +
                "<p class='card-text'>" + dr["sub_title"] + "</p>"+
                " </div>" +
                "<a href = 'Article.aspx?x="+dr["ID"]+"'class='btn btn-outline-primary'>Read more</a> </br>"+
                "</div>";
            
            
          
            
        }


    }
}