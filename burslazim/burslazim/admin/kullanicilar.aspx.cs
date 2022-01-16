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
    public partial class kullanicilar : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["kullaniciid"];
                islem = Request.QueryString["islem"];
            }
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From dbo.kullanici", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            oku.Close();

            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From dbo.kullanici where kullaniciid=@p1", baglanti);
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                baglanti.Close();
            }

            DataList1.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataList1.Visible = false;
        }
    }
}