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
    public partial class profil : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Session["kullaniciadi"].ToString();
            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                
                SqlCommand komut1 = new SqlCommand("select * from dbo.kullanici where kullaniciadi=@p1", baglanti);
                komut1.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku1 = komut1.ExecuteReader();
                while (oku1.Read())
                {
                    Label3.Text = oku1[0].ToString();
                    TextBox2.Text = oku1[1].ToString();
                    TextBox3.Text = oku1[2].ToString();
                    TextBox4.Text = oku1[3].ToString();
                    TextBox5.Text = oku1[4].ToString();
                    TextBox6.Text = oku1[5].ToString();
                    TextBox7.Text = oku1[6].ToString();
                    TextBox8.Text = oku1[7].ToString();
                    TextBox9.Text = oku1[8].ToString();
                    TextBox10.Text = oku1[9].ToString();
                }
                Session["kullaniciadi"].ToString();
                oku1.Close();

                SqlCommand komut2 = new SqlCommand("select kullaniciadi, durum,bursAd from dbo.basvurular inner join dbo.bursbilgi on dbo.basvurular.bursid=dbo.bursbilgi.bursid where kullaniciadi=@p1", baglanti);
                komut2.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku2 = komut2.ExecuteReader();
                DataList2.DataSource = oku2;
                DataList2.DataBind();
                oku2.Close();

                baglanti.Close();
                Panel1.Visible=false;
                Panel2.Visible=false;
                Panel3.Visible = false;
            }
            
        }

        
        protected void Button3_Click(object sender, EventArgs e)
        {

            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("update dbo.kullanici set sifre=@p1, ad=@p2, soyad=@p3, mail=@p4, bolum=@p5, okul=@p6, cinsiyet=@p7, sinif=@p8,GANO=@p10 where kullaniciadi=@p9", baglanti);
            komut1.Parameters.AddWithValue("@p1", TextBox2.Text);
            komut1.Parameters.AddWithValue("@p2", TextBox3.Text);
            komut1.Parameters.AddWithValue("@p3", TextBox4.Text);
            komut1.Parameters.AddWithValue("@p4", TextBox5.Text);
            komut1.Parameters.AddWithValue("@p5", TextBox6.Text);
            komut1.Parameters.AddWithValue("@p6", TextBox7.Text);
            komut1.Parameters.AddWithValue("@p7", TextBox8.Text);
            komut1.Parameters.AddWithValue("@p8", TextBox9.Text);
            komut1.Parameters.AddWithValue("@p10", TextBox10.Text);

            komut1.Parameters.AddWithValue("@p9", id);
            komut1.ExecuteNonQuery();
            baglanti.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
    }
}