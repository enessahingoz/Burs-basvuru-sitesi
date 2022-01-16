<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bursbilgi.aspx.cs" Inherits="burslazim.burslar.bursbilgi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>BursLazım</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <style type="text/css">
        .auto-style1 {
            font-size: 100%;
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

                <div class="clear">
                    <asp:DataList ID="DataList2" runat="server">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="~/images/kullanici.png" Width="35px" />
                            <strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("ad") %>' style="color: #FFFFFF; font-size: large"></asp:Label>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("soyad") %>' style="color: #FFFFFF; font-size: large"></asp:Label>
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
                <li><a href="../anasayfa.aspx">Anasayfa</a></li>
                <li><a class="hsubs" href="../burslar1.aspx">Burslar</a>
                </li>
                <li><a class="hsubs" href="../profil.aspx">Profil Bilgilerim</a></li>
                <li></li>
            </ul>
        </div>
    </div>


    <div class="content">
        <div class="wrap">
            <div class="wrapper">

                <div class="about">
                    <div align="center">
                        <div align="center">
                            &nbsp;</div>
                        <!'image'>
                        <div class="about">
                            
                                <asp:DataList ID="DataList1" runat="server" Width="938px">
                                    <ItemTemplate>
                                       
                                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("resim") %>' />
                                         
                                          <h3> <asp:Label ID="Label1" runat="server" Text='<%# Eval("bursAd") %>'></asp:Label> <span class="auto-style1">Bursu</span></h3>
                                        <div class="clear"></div>
                                        <span class="doller">Burs Miktarı</span>
                                           <h4><asp:Label ID="Label2" runat="server" Text='<%# Eval("bursMiktar") %>'></asp:Label></h4>
                                        <div class="clear">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                                         <span class="doller">Başvuru Başlangıç Tarihi</span>
                                           <h4><asp:Label ID="Label3" runat="server" Text='<%# Eval("basvuruBaslangic") %>'></asp:Label></h4>
                                        <div class="clear">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                                        <span class="doller">Başvuru Bitiş Tarihi</span>
                                           <h4><asp:Label ID="Label4" runat="server" Text='<%# Eval("basvuruBitis") %>'></asp:Label></h4>
                                        <div class="clear">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                                        <span class="doller">Başvuru Koşulları</span>
                                           <h4><asp:Label ID="Label5" runat="server" Text='<%# Eval("basvuruKosul") %>'></asp:Label></h4>
                                         <div class="clear">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                                        <span class="doller">Cinsiyet</span>
                                           <h4><asp:Label ID="Label6" runat="server" Text='<%# Eval("cinsiyet") %>'></asp:Label></h4>
                                         <div class="clear">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                                        <span class="doller">Okul</span>
                                           <h4><asp:Label ID="Label7" runat="server" Text='<%# Eval("okul") %>'></asp:Label></h4>
                                         <div class="clear">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>

                                    </ItemTemplate>
                                </asp:DataList>
                            
                           
                        </div>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Başvuru Yap" />
                </div>


                
            </div>

        </div>

    </div>
         <div class="about"></div>
         
         <div class="clear"></div>
         <div class="clear"></div>
    <div class="footer-bottom">
        <div class="wrap">
        </div>
    </div>
    </form>
</body>
</html>
