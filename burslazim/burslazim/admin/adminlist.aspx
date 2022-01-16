<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlist.aspx.cs" Inherits="burslazim.admin.adminlist" %>

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
        .auto-style18 {
            font-size: x-small;
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
        .auto-style30 {
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
            <div class="auto-style13">
                <div class="wrapper">
                    <div class="con-top">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong> Admin Listesi</strong></td>
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
                                        <td class="auto-style3" style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000"></td>
                                        <td class="auto-style4"></td>
                                    </tr>
                                    <tr>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style10">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label1" runat="server" CssClass="auto-style18" Text='<%# Eval("id") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="left-text">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("name") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000" class="auto-style15">
                                            <p>
                                                <strong>
                                                <asp:Label ID="Label3" runat="server" CssClass="auto-style18" Text='<%# Eval("password") %>'></asp:Label>
                                                </strong>
                                            </p>
                                        </td>
                                        <td class="auto-style3" style="line-height: 1px; background-color: #FFFFFF; border: thin groove #000000">
                                            <p>
                                               <a href="adminlist.aspx?id=<%#Eval("id") %>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/delete.png" Width="30px" /></a>
                                            </p>
                                        </td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>

                    <div class="con-bot">

                        <div class="auto-style27">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong> Admin Ekle</strong></td>
                                <td class="auto-style29">
                                    <strong>
                                    <asp:Button ID="Button6" runat="server" CssClass="auto-style30" Height="30px" OnClick="Button6_Click" Text="+" Width="30px" />
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                    <asp:Button ID="Button7" runat="server" CssClass="auto-style30" Height="30px" OnClick="Button7_Click" Text="-" Width="30px" />
                                    </strong>
                                </td>
                            </tr>
                        </table>
                            <div class "auto-style27"> 
                                <asp:Panel ID="Panel1" runat="server">
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kullanıcı Adı:&nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Şifre:&nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style28">&nbsp;</td>
                                            <td><strong>
                                                <asp:Button ID="Button5" runat="server" CssClass="auto-style30" OnClick="Button5_Click" Text="Ekle" />
                                                </strong></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </div>
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
