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
    public partial class basvurular : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["basvuruid"];
                islem = Request.QueryString["islem"];
            }
            baglanti.Open();

            SqlCommand komut2 = new SqlCommand("select kullaniciadi, durum,bursAd,basvuruid from dbo.basvurular inner join dbo.bursbilgi on dbo.basvurular.bursid=dbo.bursbilgi.bursid ", baglanti);
           
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
            oku2.Close();

            if (islem == "Reddedildi")
            {
                SqlCommand komutred = new SqlCommand("update dbo.basvurular set durum=@p1 where basvuruid=@p2", baglanti);

                komutred.Parameters.AddWithValue("@p2", id);
                komutred.Parameters.AddWithValue("@p1", islem);
                
                komutred.ExecuteNonQuery();
                baglanti.Close();
            }
            if (islem == "Onaylandi")
            {
                SqlCommand komutonay = new SqlCommand("update dbo.basvurular set durum=@p1 where basvuruid=@p2", baglanti);

                komutonay.Parameters.AddWithValue("@p2", id);
                komutonay.Parameters.AddWithValue("@p1", islem);
                
                komutonay.ExecuteNonQuery();
                baglanti.Close();
            }
        }

     

       
    }
}