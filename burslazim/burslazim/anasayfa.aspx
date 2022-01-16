<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="burslazim.anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>BursLazım</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <style type="text/css">
        .auto-style2 {
            padding: 20px 0;
            margin-left: 0;
        }
        .auto-style3 {
            font-size: large;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <div class="header">
            <div class="wrap">
                <div class="logo"><a href="index.html">
                    <img src="images/Logo2.jpg" alt="" /></a></div>
                <div class="con-right">

                    <div class="auto-style2">
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="~/images/kullanici.png" Width="35px" />
                                <strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("ad") %>'></asp:Label>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("soyad") %>'></asp:Label>
                                </strong>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="wrap">
                <ul id="nav">
                    <li><a href="anasayfa.aspx">Anasayfa</a></li>
                    <li><a class="hsubs" href="burslar1.aspx">Burslar</a></li>
                    <li><a class="hsubs" href="profil.aspx">Profil Bilgilerim</a></li>
                    
                </ul>
            </div>
        </div>

        <div class="content">
            <div class="wrap">
                <div class="wrapper">
                    <div class="con-top">
                        <h3>BursLazim.com'a Hoş Geldin!</h3>
                        <p>Her seviyeden bursa başvuru yapabilir, yüzlerce burs arasından sana en uygun bursu bulabilirsin!</p>
                    </div>

                    <div class="con-bot">
                        <div class="left">
                            <div class="bot-left">
                                <img src="images/menu.jpg" alt="" />
                            </div>
                            <div class="left-text">
                                <h4>Üye Ol ve Bilgilerini Doldur</h4>
                                <p>Üye ol ve kişisel bilgiler alanını eksiksiz doldur.</p>
                            </div>
                        </div>
                        <div class="left">
                            <div class="bot-left">
                                <img src="images/search.jpg" alt="" />
                            </div>
                            <div class="left-text">
                                <h4>Burs Ara ve Başvur</h4>
                                <p>Profiline gir ve ‘’Burs Ara’’ sayfasından sana uygun olan bursları incelemeye başla.</p>
                            </div>
                            <p><a href="burslar1.aspx"><span class="read">Burs Ara</span></a></p>

                        </div>

                        <div class="right">
                            <div class="bot-left">
                                <img src="images/watch.jpg" alt="" />
                            </div>
                            <div class="left-text">

                                <h4>Başvurunun Onayını Bekle</h4>
                                <p>Destekçinin onay vermesini bekle, istersen başka burslara da başvurabilirsin.</p>
                            </div>
                        </div>

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
