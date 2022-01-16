<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="burslazim.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>BursLazım</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <style type="text/css">
        .auto-style2 {
            width: 964px;
            float: left;
            text-align: -webkit-center;
            margin-left: 0;
            margin-right: 0px;
            margin-top: 0;
            margin-bottom: 20px;
            height: 470px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 127px;
        }
        .auto-style12 {
            width: 127px;
            height: 18px;
        }
        .auto-style13 {
            height: 18px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style9 {
            font-weight: bold;
        }
        .auto-style14 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header">
            <div class="wrap">
                <div class="logo"><a href="index.aspx">
                    <img src="images/Logo2.jpg" alt="" /></a></div>
                <div class="con-right">

                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="wrap">
                <ul id="nav">
                    <li><a href="index.aspx">Anasayfa</a></li>
                    <li><a class="hsubs" href="register.aspx">Giriş Yap/Üye Ol</a></li>
                </ul>
            </div>
        </div>


    <div class="content">
        <div class="wrap">
            <div class="wrapper">
                <div class="con-top">
                    <b>Aşağıda bulunan formu doldurarak sitemiz kayıt olabilirsiniz.</b>
                </div>
                <div class="con-bot">
                    <div class="auto-style2">
                                <br />
                                <asp:Panel ID="Panel2" runat="server" Width="276px">
                                    <table class="auto-style10">
                                        <tr>
                                            <td class="auto-style11"><strong>Kullanıcı Adı:</strong></td>
                                            <td>
                                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style12"><strong>Şifre:</strong></td>
                                            <td class="auto-style13">
                                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style11">&nbsp;</td>
                                            <td><strong>
                                                <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Text="Giriş Yap" OnClick="Button2_Click" />
                                                </strong></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style11">&nbsp;</td>
                                            <td><strong>
                                                <asp:Button ID="Button3" runat="server" CssClass="auto-style9" OnClick="Button3_Click" Text="Kayıt ol" Width="85px" />
                                                </strong></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <br />
                                <asp:Panel ID="Panel1" runat="server" Width="355px">
                                    <table class="auto-style3">
                                        <tr>
                                            <td class="auto-style7"><strong>Kullanıcı Adı:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"><strong>Şifre:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style7"><strong>Ad:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"><strong>Soyad:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"><strong>Mail:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox5" runat="server" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"><strong>Bölüm/Fakülte:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox6" runat="server" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"><strong>Okul:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox7" runat="server" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"><strong>Cinsiyet:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox8" runat="server" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"><strong>Sınıf:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox9" runat="server" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"><strong>GANO:</strong></td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox10" runat="server" Width="230px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style14"></td>
                                            <td class="auto-style14"><strong>
                                                <asp:Button ID="Button1" runat="server" CssClass="auto-style9" OnClick="Button1_Click" Text="Kayıt Ol" Width="88px" />
                                                </strong></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style8">&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                       
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
