<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="burslar1.aspx.cs" Inherits="burslazim.burslar1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>BursLazım</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
     <style type="text/css">
         .auto-style2 {
             width: 962px;
             float: left;
             text-align:;
             margin-left: 0;
             margin-right: 0px;
             margin-top: 0;
             margin-bottom: 20px;
         }
         .auto-style4 {
             width: 100%;
         }
         .auto-style5 {
             color: #A2365A;
             font-size: large;
         }
         .auto-style7 {
             color: #555555;
             font-size: medium;
         }
         .auto-style8 {
             padding: 20px 0;
             text-align: center;
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
                    <li><a href="anasayfa.aspx">Anasayfa</a></li>
                    <li><a class="hsubs" href="burslar1.aspx">Burslar</a></li>
                    <li><a href="profil.aspx">Profil Bilgilerim</a></li>
                </ul>
            </div>
        </div>


    <div class="content">
        <div class="wrap">
            <div class="wrapper">
                <div class="auto-style8">
                    <b>Aşağıda bulunan burs ilanlarından kendinize uygun olanını seçip hemen başvuruda bulunabilirsiniz.</b>
                </div>
                <div class="con-bot">
                    <div class="auto-style2">
                        <div height="auto">
                            &nbsp;<asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                                <ItemTemplate>
                                    <div class="txt-center">
                                        <table class="auto-style4">
                                            <tr>
                                                <td>
                                                   <a href="burslar/bursbilgi.aspx?bursid=<%#Eval("bursid") %>"> <asp:Image ID="Image1" runat="server" Height="169px" ImageUrl='<%# Eval("resim") %>' Width="280px" /></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                
                                                <td><strong>
                                                   <a href="burslar/bursbilgi.aspx?bursid=<%#Eval("bursid") %>"> <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("bursAd") %>'></asp:Label></a>
                                                   <a href="burslar/bursbilgi.aspx?bursid=<%#Eval("bursid") %>"> </strong><span class="auto-style5"><strong>Bursu</strong></span></td></a>
                                            </tr>
                                            <tr>
                                                <td><strong>
                                                    <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text='<%# Eval("aciklama") %>'></asp:Label>
                                                    </strong></td>
                                            </tr>
                                            <tr>
                                                <td><span class="auto-style7"><strong>Başvuru Tarihleri: </strong></span><strong><br />
                                                    <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text='<%# Eval("basvuruBaslangic") %>'></asp:Label>
                                                    </strong><span class="auto-style7"><strong>-</strong></span><strong><asp:Label ID="Label8" runat="server" CssClass="auto-style7" Text='<%# Eval("basvuruBitis") %>'></asp:Label>
                                                    </strong></td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="left-text">
                        </div>
                    </div>
                    <div class="clear"></div>
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
