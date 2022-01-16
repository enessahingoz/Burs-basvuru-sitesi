<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bursilanlari.aspx.cs" Inherits="burslazim.admin.bursilanlari" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BursLazım</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <style type="text/css">
        .auto-style1 {
            color: #A2365A;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 406px;
        }
        .auto-style5 {
            text-align: center;
            width: 104px;
        }
        .auto-style6 {
            margin-left: 0;
        }
        .auto-style7 {
            width: 152px;
        }
        .auto-style8 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style9 {
            text-align: left;
            width: 48px;
        }
        .auto-style10 {
            font-size: large;
            font-weight: bold;
            margin-left: 0px;
        }
        .auto-style11 {
            color: #A2365A;
            width: 152px;
        }
        .auto-style13 {
            width: 48px;
        }
        .auto-style15 {
            width: 970px;
        }
        .auto-style20 {
            height: 18px;
            width: 485px;
        }
        .auto-style21 {
            width: 485px;
        }
        .auto-style22 {
            font-weight: bold;
        }
        .auto-style23 {
            width: 485px;
            text-align: left;
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
                        <asp:Panel ID="Panel1" runat="server">
                            <div class="txt-lt">
                                <span class="auto-style1"><strong>
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style7">Burs Listesi</td>
                                        <td class="auto-style9"><span class="auto-style1"><strong>
                                            <asp:Button ID="Button4" runat="server" CssClass="auto-style10" OnClick="Button4_Click" Text="+" Width="34px" />
                                            </strong></span></td>
                                        <td><span class="auto-style1"><strong>
                                            <asp:Button ID="Button3" runat="server" CssClass="auto-style8" OnClick="Button3_Click" Text="-" Width="35px" />
                                            </strong></span></td>
                                    </tr>
                                </table>
&nbsp;</strong></span><asp:Panel ID="Panel2" runat="server">
                                    <asp:DataList ID="DataList1" runat="server">
                                        <ItemTemplate>
                                            <table class="auto-style3">
                                                <tr>
                                                    <td class="auto-style4">
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("bursAd") %>'></asp:Label>
                                                    </td>
                                                    <td class="auto-style5">
                                                        <a href="bursilanlari.aspx?bursid=<%#Eval("bursid") %>&islem=sil"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/delete.png" Width="25px" /></a>
                                                    </td>
                                                    <td class="txt-center">
                                                       <a href="bursduzenle.aspx?bursid=<%#Eval("bursid") %>"> <asp:Image ID="Image2" runat="server" CssClass="auto-style6" Height="30px" ImageUrl="~/images/update.jpg" Width="30px" /></a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList>
                            </asp:Panel>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel3" runat="server">
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style11"><strong>Burs Ekle</strong></td>
                                    <td class="auto-style13">
                                        <strong>
                                        <asp:Button ID="Button5" runat="server" CssClass="auto-style8" OnClick="Button5_Click" Text="+" Width="34px" />
                                        </strong>
                                    </td>
                                    <td>
                                        <strong>
                                        <asp:Button ID="Button6" runat="server" CssClass="auto-style8" Text="-" Width="34px" />
                                        </strong>
                                    </td>
                                </tr>
                            </table>
                            </asp:Panel>
                        <asp:Panel ID="Panel4" runat="server">
                            <table class="auto-style15">
                                <tr>
                                    <td class="auto-style20"><strong>Burs Ad</strong></td>
                                    <td class="auto-style20">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style21"><strong>Burs Miktarı</strong></td>
                                    <td class="auto-style21">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style21"><strong>Başvuru Başlangıç Tarihi (gg/aa/yyyy)</strong></td>
                                    <td class="auto-style21">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style21"><strong>Başvuru Bitiş Tarihi (gg/aa/yyyy)</strong></td>
                                    <td class="auto-style21">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style23"><strong>Başvuru Koşulları</strong></td>
                                    <td class="auto-style21">
                                        <asp:TextBox ID="TextBox5" runat="server" Height="114px" Width="320px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20"><strong>Cinsiyet</strong></td>
                                    <td class="auto-style20">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20"><strong>Okul</strong></td>
                                    <td class="auto-style20">
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20"><strong>Kurum Resmi</strong></td>
                                    <td class="auto-style20">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20"><strong>Burs Kısa Açıklama</strong></td>
                                    <td class="auto-style20">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">&nbsp;</td>
                                    <td class="auto-style20">
                                        <strong>
                                        <asp:Button ID="Button7" runat="server" CssClass="auto-style22" OnClick="Button7_Click" Text="EKLE" />
                                        </strong>
                                    </td>
                                </tr>
                            </table>
                            </asp:Panel>
                    </div>

                    <div class="con-bot">

                        <div class="clear">
                            
                            
                            
                            
                            
                            
                            
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
