<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanicilar.aspx.cs" Inherits="burslazim.admin.kullanicilar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BursLazım</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 38px;
        }
        .auto-style4 {
            width: 27px;
        }
        .auto-style9 {
            width: 16px;
            height: 19px;
            text-align: left;
            color: #000000;
        }
        .auto-style10 {
            width: 16px;
            font-size: x-small;
        }
        .auto-style11 {
            height: 19px;
            width: 101px;
            text-align: left;
        }
        .auto-style13 {
            width: 100%;
            margin-left: 0px;
            margin-right: auto;
            margin-top: 0;
            margin-bottom: 0;
        }
        .auto-style14 {
            height: 19px;
            width: 68px;
            text-align: left;
        }
        .auto-style15 {
            width: 68px;
        }
        .auto-style16 {
            height: 19px;
            width: 100px;
            text-align: left;
        }
        .auto-style17 {
            width: 100px;
        }
        .auto-style18 {
            font-size: x-small;
        }
        .auto-style19 {
            width: 35px;
            height: 19px;
            text-align: left;
        }
        .auto-style20 {
            width: 35px;
        }
        .auto-style21 {
            height: 19px;
            width: 99px;
            text-align: left;
        }
        .auto-style22 {
            width: 99px;
        }
        .auto-style23 {
            height: 19px;
            width: 130px;
            text-align: left;
        }
        .auto-style24 {
            width: 130px;
        }
        .auto-style25 {
            margin-left: 41px;
        }
        .auto-style26 {
            color: #000000;
        }
        .auto-style27 {
            clear: both;
            margin-top: 0px;
        }
        .auto-style28 {
            width: 192px;
        }
        .auto-style29 {
            width: 44px;
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
            <div class="auto-style13">
                <div class="wrapper">
                    <div class="con-top">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Kullanıcı Listesi</strong></td>
                                <td class="auto-style29">
                                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                                </td>
                            </tr>
                        </table>
                        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style25" Width="946px">
                            <ItemTemplate>
                                <table class="auto-style1" border="1">
                                    <tr>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style9">
                                            <p class="auto-style26">
                                                <strong>İD</strong></p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style11">
                                            <p class="auto-style26">
                                                <strong>USERNAME</strong></p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style14">
                                            <p class="auto-style26">
                                                <strong>PASS</strong></p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style16">
                                            <p class="auto-style26">
                                                <strong>AD</strong></p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style16">
                                            <p class="auto-style26">
                                                <strong>SOYAD</strong></p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style16">
                                            <p class="auto-style26">
                                                <strong>MAİL</strong></p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style21">
                                            <p class="auto-style26">
                                                <strong>BOLUM</strong></p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style23">
                                            <p class="auto-style26">
                                                <strong>OKUL</strong></p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style21">
                                            <p class="auto-style26">
                                                <strong>CİNSİYET</strong></p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style19">
                                            <p class="auto-style26">
                                                <strong>SINIF</strong></p>
                                        </td>
                                        <td class="auto-style19" style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000">
                                            <p class="auto-style26">
                                                <strong>GANO</strong></p>
                                        </td>
                                        <td class="auto-style3" style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000"></td>
                                        <td class="auto-style4" style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000"></td>
                                        <td class="auto-style4"></td>
                                    </tr>
                                    <tr>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style10">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label1" runat="server" CssClass="auto-style18" Text='<%# Eval("kullaniciid") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="left-text">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("kullaniciadi") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style15">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label3" runat="server" CssClass="auto-style18" Text='<%# Eval("sifre") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style17">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label4" runat="server" CssClass="auto-style18" Text='<%# Eval("ad") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style17">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label5" runat="server" CssClass="auto-style18" Text='<%# Eval("soyad") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style17">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label6" runat="server" CssClass="auto-style18" Text='<%# Eval("mail") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style22">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label7" runat="server" CssClass="auto-style18" Text='<%# Eval("bolum") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style24">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label8" runat="server" CssClass="auto-style18" Text='<%# Eval("okul") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style22">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label9" runat="server" CssClass="auto-style18" Text='<%# Eval("cinsiyet") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style20">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label10" runat="server" CssClass="auto-style18" Text='<%# Eval("sinif") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td class="auto-style20" style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label11" runat="server" CssClass="auto-style18" Text='<%# Eval("GANO") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td class="auto-style3" style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000">
                                            <p>
                                               <a href="kullanicilar.aspx?kullaniciid=<%#Eval("kullaniciid") %>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/delete.png" Width="30px" /></a>
                                            </p>
                                        </td>
                                        <td class="auto-style4" style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000">
                                            <p>
                                                <a href="kullaniciduzenle.aspx?kullaniciid=<%#Eval("kullaniciid") %>">   <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/images/update.jpg" Width="30px" /></a>
                                            </p>
                                        </td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>

                    <div class="con-bot">

                        <div class="auto-style27"></div>
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
