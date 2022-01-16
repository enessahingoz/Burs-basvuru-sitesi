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
    public partial class register : System.Web.UI.Page
    
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
                baglanti.Open();
                Panel1.Visible = false;
                Panel2.Visible = true;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("insert into dbo.kullanici (kullaniciadi, sifre, ad, soyad,mail,bolum, okul, cinsiyet,sinif,GANO) values (@p1,@p2, @p3, @p4, @p5, @p6, @p7, @p8,@p9,@p10) ", baglanti);
            komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut1.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut1.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut1.Parameters.AddWithValue("@p5", TextBox5.Text);
            komut1.Parameters.AddWithValue("@p6", TextBox6.Text);
            komut1.Parameters.AddWithValue("@p7", TextBox7.Text);
            komut1.Parameters.AddWithValue("@p8", TextBox8.Text);
            komut1.Parameters.AddWithValue("@p9", TextBox9.Text);
            komut1.Parameters.AddWithValue("@p10", TextBox10.Text);
            komut1.ExecuteNonQuery();
            
            baglanti.Close();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible=false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SqlCommand komut = new SqlCommand("select * from dbo.kullanici where kullaniciadi=@p1 and sifre=@p2",baglanti);
            komut.Parameters.AddWithValue("@p1",TextBox11.Text);
            komut.Parameters.AddWithValue("@p2", TextBox12.Text);
            SqlDataReader dr=komut.ExecuteReader(); 
            if (dr.Read())
            {
                Session["kullaniciadi"]=dr["kullaniciadi"].ToString();
                Response.Redirect("anasayfa.aspx");
            }
            else
            {
                Response.Write("Kullanıcı Bilgileriniz Hatalı.");
            }
        }
    }
}