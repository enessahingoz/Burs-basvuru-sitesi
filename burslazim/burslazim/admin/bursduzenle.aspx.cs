using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using burslazim;

namespace burslazim.admin
{
    public partial class bursduzenle : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        string id;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["bursid"];
            
            if (Page.IsPostBack == false) { 
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From dbo.bursbilgi where bursid=@p1 ", baglanti);
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
                TextBox5.Text = dr[5].ToString();
                TextBox6.Text = dr[6].ToString();
                TextBox7.Text = dr[7].ToString();
            }
            baglanti.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("update dbo.bursbilgi set bursAd=@p1, bursMiktar=@p2, basvuruBaslangic=@p3, basvuruBitis=@p4, basvuruKosul=@p5, cinsiyet=@p6, okul=@p7, aciklama=@p8 where bursid=@p9", baglanti);
            komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut1.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut1.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut1.Parameters.AddWithValue("@p5", TextBox5.Text);
            komut1.Parameters.AddWithValue("@p6", TextBox6.Text);
            komut1.Parameters.AddWithValue("@p7", TextBox7.Text);
            komut1.Parameters.AddWithValue("@p8", TextBox8.Text);
            komut1.Parameters.AddWithValue("@p9", id);
            komut1.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}