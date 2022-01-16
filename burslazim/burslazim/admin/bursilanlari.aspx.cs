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
    public partial class bursilanlari : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        string id = "";
        string islem1 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id=Request.QueryString["bursid"];
                islem1 = Request.QueryString["islem"];
            }

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From dbo.bursbilgi ", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            oku.Close();


            //silme işlemi

            if (islem1 == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From dbo.bursbilgi where bursid=@p1", baglanti);
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                baglanti.Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {   
            FileUpload1.SaveAs(Server.MapPath("../images/" + FileUpload1.FileName));

            SqlCommand komut1 = new SqlCommand("insert into dbo.bursbilgi (bursAd, bursMiktar, basvuruBaslangic, basvuruBitis, basvuruKosul, cinsiyet, okul, aciklama, resim) values (@p1,@p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9) ", baglanti);
            komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut1.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut1.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut1.Parameters.AddWithValue("@p5", TextBox5.Text);
            komut1.Parameters.AddWithValue("@p6", TextBox6.Text);
            komut1.Parameters.AddWithValue("@p7", TextBox7.Text);
            komut1.Parameters.AddWithValue("@p8", TextBox8.Text);
            komut1.Parameters.AddWithValue("@p9","~/images/" + FileUpload1.FileName);
            komut1.ExecuteNonQuery();
            baglanti.Close();
        }



    }
}