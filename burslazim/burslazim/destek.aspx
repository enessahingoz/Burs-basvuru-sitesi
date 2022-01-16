<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="destek.aspx.cs" Inherits="burslazim.destek" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>BursLazım</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-family: "Segoe UI";
            font-size: medium;
            color: #A2365A;
            background-color: #F0F0F0;
        }
        .auto-style3 {
            font-size: medium;
            color: #A2365A;
        }
    </style>
</head>
<body>
    
       
        <form id="form1" runat="server">
    
       
        <div class="header">
		<div class="wrap">
<div class="logo"><a href="index.html"><img src="images/Logo2.jpg" alt="" /></a></div>
   <div class="con-right">
			
			<div class="clear"></div>
	</div>
    <div class="clear"></div>
     </div>
</div>
<div class="header-bottom">
    	<div class="wrap">
    		<ul id="nav">
                <li><a href="anasayfa.aspx">Anasayfa</a></li>
                <li><a class="hsubs" href="bursAnasayfa.aspx">Burslar</a></li>
                <li><a class="hsubs" href="loginpage.aspx">Giriş Yap/Üye Ol</a></li>
                <li><a href="destek.aspx">Destek</a></li>
        </ul>
       </div>
</div>
<div class="contact">
	<div class="wrap">
						<div class="contact-top">
						<h3>Profil Bilgilerim</h3>
						</div>
		    <div class="clear">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3"><span class="auto-style2"><strong>Kullanıcı Adı:</strong></span></td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("kullaniciadi") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Şifre:</strong></td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("sifre") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Ad:</strong></td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ad") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Soyad:</strong></td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("soyad") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Mail:</strong></td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("mail") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Bölüm:</strong></td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("bolum") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Okul:</strong></td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("okul") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Cinsiyet:</strong></td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("cinsiyet") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Sınıf</strong></td>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("sinif") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>GANO:</strong></td>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("GANO") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                        </div>
		     <div class="contact-bottom">
		        
		         
		         <div class="clear"></div>
           	 </div>
			 <div class="clear"></div>
		</div>
</div>
<div class="footer-bottom">
<div class="wrap">	
	
 </div>
</div>
        </form>
</body>
</html>
