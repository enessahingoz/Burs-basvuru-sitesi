using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using burslazim;

namespace burslazim
{
    public partial class adminPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
        }

      
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from dbo.admin where name=@p1 and password=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session["name"] = dr["name"].ToString();
                Response.Redirect("admin/kullanicilar.aspx");
            }
            else
            {
                Response.Write("Kullanıcı Bilgileriniz Hatalı.");
            }
        }
    }
}