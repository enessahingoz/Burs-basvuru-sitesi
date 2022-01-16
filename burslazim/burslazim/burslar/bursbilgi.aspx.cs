using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using burslazim;

namespace burslazim.burslar
{
    public partial class bursbilgi : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        string bursid;
        string kullaniciid;
        protected void Page_Load(object sender, EventArgs e)
        {
            bursid = Request.QueryString["bursid"];

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From dbo.bursbilgi where bursid=@p1 ", baglanti);
            komut.Parameters.AddWithValue("@p1", bursid);
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            oku.Close();
            SqlCommand komut1 = new SqlCommand("select * from dbo.kullanici where kullaniciadi=@p4", baglanti);
            kullaniciid = Session["kullaniciadi"].ToString();
            komut1.Parameters.AddWithValue("@p4", kullaniciid);
            SqlDataReader oku1 = komut1.ExecuteReader();
            DataList2.DataSource = oku1;
            DataList2.DataBind();
            Session["kullaniciadi"].ToString();
            oku1.Close();
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("insert into dbo.basvurular (bursid, kullaniciadi ) values (@p1,@p2) ", baglanti);
            kullaniciid = Session["kullaniciadi"].ToString();
            bursid = Request.QueryString["bursid"];
            komut1.Parameters.AddWithValue("@p1", bursid);
            komut1.Parameters.AddWithValue("@p2", kullaniciid);
            komut1.ExecuteNonQuery();

            baglanti.Close();

        }
    }
}
