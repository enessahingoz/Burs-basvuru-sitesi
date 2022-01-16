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
    public partial class destek : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            id = Session["kullaniciadi"].ToString();
            SqlCommand komut1 = new SqlCommand("select * from dbo.kullanici where kullaniciadi=@p1", baglanti);
            komut1.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku1 = komut1.ExecuteReader();
            DataList1.DataSource = oku1;
            DataList1.DataBind();
            Session["kullaniciadi"].ToString();
            oku1.Close();
        }
    }
}