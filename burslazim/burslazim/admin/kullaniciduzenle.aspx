<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullaniciduzenle.aspx.cs" Inherits="burslazim.admin.kullaniciduzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>BursLazım</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header">
            <div class="wrap">
                <div class="logo">
                    <a href="index.html">
                        <img src="../images/Logo2.jpg" alt="" /></a>
                </div>
                <div class="con-right">

                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="wrap">
                <ul id="nav">
                    <li><a class="hsubs" href="kullanicilar.aspx">Kullanıcılar</a></li>
                    <li><a class="hsubs" href="bursilanlari.aspx">Burs İlanları</a></li>
                    <li><a class="hsubs" href="basvurular.aspx">Başvurular</a></li>
                    <li><a class="hsubs" href="adminlist.aspx">Admin Listesi</a></li>

                </ul>
            </div>
        </div>

        <div class="content">
            <div class="wrap">
                <div class="wrapper">
                    <div class="con-top">
                        <strong>Kullanıcı Düzenle<br />
                        </strong>
<table class="auto-style1">
    <tr>
        <td class="auto-style3"><strong>Kullanıcı Adı</strong></td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Şifre</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Ad</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Soyad</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Height="155px" TextMode="MultiLine" Width="232px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Bölum</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Okul</strong></td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Cinsiyet</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Sınıf</td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">GANO</td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <strong>
            <asp:Button ID="Button1" runat="server" Text="Güncelle" Width="93px" CssClass="auto-style1" OnClick="Button1_Click" />
            </strong>
        </td>
    </tr>
</table>
                    </div>

                    <div class="con-bot">

                        <div class="clear"></div>
                    </div>

                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="wrap">
            </div>
        </div>

    </form>
</body>
</html>
