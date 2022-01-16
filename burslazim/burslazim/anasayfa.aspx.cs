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
    public partial class anasayfa : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {   baglanti.Open(); 
            id = Session["kullaniciadi"].ToString();
            SqlCommand komut = new SqlCommand("Select * From dbo.kullanici where kullaniciadi=@p1 ", baglanti);
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            Session["kullaniciadi"].ToString();
            oku.Close();
        }
    }
}