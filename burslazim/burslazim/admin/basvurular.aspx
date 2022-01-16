<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="basvurular.aspx.cs" Inherits="burslazim.admin.basvurular" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>BursLazım</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <style type="text/css">
        .auto-style1 {
            width: 99%;
        }
        .auto-style2 {
            width: 323px;
        }
        .auto-style3 {
            width: 342px;
            text-align: right;
        }
        .auto-style8 {
            width: 220px;
        }
        .auto-style10 {
            width: 240px;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style15 {
            width: 234px;
        }
        .auto-style21 {
            width: 85px;
        }
        .auto-style24 {
            width: 177px;
        }
        .auto-style25 {
            width: 112px;
        }
        .auto-style26 {
            width: 113px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
         <div class="header">
            <div class="wrap">
                <div class="logo"><a href="index.html">
                    <img src="../images/Logo2.jpg" alt="" /></a></div>
                <div class="con-right">

                    <div class="clear">
                    </div>
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
                <div class="auto-style8">
                    &nbsp;</div>
                <div class="con-bot">
                    <div class="auto-style2">
                        <div height="auto">
                            &nbsp;</div>
                        <div class="left-text">
                        </div>
                    </div>
                    <div class="clear">
                         <asp:Panel ID="Panel2" runat="server">
                             <table class="auto-style11">
                                 <tr>
                                     <td class="auto-style15"><strong>Kullanıcı Adı</strong></td>
                                     <td class="auto-style24"><strong>Burs Adı</strong></td>
                                     <td class="auto-style26"><strong>Durum</strong></td>
                                     <td class="auto-style21"><strong>Onayla</strong></td>
                                     <td><strong>Reddet</strong></td>
                                 </tr>
                             </table>
                         </asp:Panel>
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:DataList ID="DataList2" runat="server"  Width="639px" >
                                <ItemTemplate>
                                    <table class="auto-style11">
                                        <tr>
                                            <td class="auto-style15">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("kullaniciAdi") %>'></asp:Label>
                                            </td>
                                            <td class="auto-style24">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("bursAd") %>'></asp:Label>
                                            </td>
                                            <td class="auto-style25">
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("durum") %>'></asp:Label>
                                            </td>
                                            <td>
                                               <a href="basvurular.aspx?basvuruid=<%#Eval("basvuruid") %>&islem=Onaylandi"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/onay.png" Width="30px" />
                                            </td>
                                            <td class="txt-rt">
                                                 <a href="basvurular.aspx?basvuruid=<%#Eval("basvuruid") %>&islem=Reddedildi"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/images/red.png" Width="30px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15">&nbsp;</td>
                                            <td class="auto-style24">&nbsp;</td>
                                            <td class="auto-style25">&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </asp:Panel>
                    </div>
                </div>
                <div class="con-bot">
                    <div class="clear">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style10">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
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
