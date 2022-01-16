<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPanel.aspx.cs" Inherits="burslazim.adminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BursLazım</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="wrap">
                <div class="logo">
                    <a href="index.html">
                        <img src="images/Logo2.jpg" alt="" /></a>
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
                    
                </ul>
            </div>
        </div>

        <div class="content">
            <div class="wrap">
                <div class="wrapper">
                    <div class="con-top">
                        <asp:Panel ID="Panel1" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <table class="auto-style1">
                                            <tr>
                                                <td>Kullanıcı Adı</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Şifre</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>
                                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Giriş" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
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
