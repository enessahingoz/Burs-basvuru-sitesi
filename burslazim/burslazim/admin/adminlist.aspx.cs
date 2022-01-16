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
    public partial class adminlist : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=ENES; Initial Catalog=dbo_bursSite;Integrated Security=True");
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["id"];
                islem = Request.QueryString["islem"];
            }
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From dbo.admin", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            oku.Close();

            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From dbo.admin where id=@p1", baglanti);
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                baglanti.Close();
            }

            DataList1.Visible = false;
            Panel1.Visible=false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            DataList1.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("insert into dbo.admin (name, password) values (@p1,@p2) ", baglanti);
            komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
            
            komut1.ExecuteNonQuery();

            baglanti.Close();
        }
       
        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}