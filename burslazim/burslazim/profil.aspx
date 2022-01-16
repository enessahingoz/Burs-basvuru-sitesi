<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="burslazim.profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>BursLazım</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <style type="text/css">
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
        .auto-style4 {
            width: 38%;
        }
        .auto-style5 {
            width: 38%;
            color: #A2365A;
            font-size: medium;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            font-weight: bold;
        }
        .auto-style8 {
            width: 39%;
        }
        .auto-style9 {
            color: #000000;
        }
        .auto-style10 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style11 {
            font-size: 30px;
            color: #A2365A;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style19 {
            width: 320px;
            color: #A2365A;
            font-size: large;
        }
        .auto-style23 {
            color: #A2365A;
        }
        .auto-style24 {
            font-size: large;
        }
        .auto-style25 {
            width: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
		<div class="wrap">
<div class="logo"><a href="index.html"><img src="images/Logo2.jpg" alt="" /></a></div>
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
                <li><a href="anasayfa.aspx">Anasayfa</a></li>
                <li><a class="hsubs" href="burslar1.aspx">Burslar</a></li>
                <li><a href="profil.aspx">Profil Bilgilerim</a></li>
        </ul>
       </div>
</div>
<div class="contact">
	<div class="wrap">
						<div class="contact-top">
						<h3>Profil Bilgilerim<strong>&nbsp;
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button4_Click" Text="+" Width="30px" />
                            </strong>&nbsp;<strong><asp:Button ID="Button5" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button5_Click" Text="-" Width="30px" />
                            </strong></h3>
						</div>
		    <div class="clear">
                        </div>
		     <div class="contact-bottom">
		        
		         
		         <div class="clear">
                     <asp:Panel ID="Panel1" runat="server" Width="881px">
                         <table class="auto-style8">
                             <tr>
                                 <td class="auto-style3"><strong>Kullanıcı Adı</strong></td>
                                 <td class="auto-style2"><strong>
                                     <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
                                     </strong></td>
                             </tr>
                             <tr>
                                 <td class="auto-style5"><strong class="auto-style6">Şifre</strong></td>
                                 <td>
                                     <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="180px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5"><strong class="auto-style6">Ad</strong></td>
                                 <td>
                                     <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="180px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style3"><strong class="auto-style6">Soyad</strong></td>
                                 <td class="auto-style2">
                                     <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="180px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5"><strong class="auto-style6">Mail</strong></td>
                                 <td>
                                     <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="180px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5"><strong class="auto-style6">Bölum</strong></td>
                                 <td>
                                     <asp:TextBox ID="TextBox6" runat="server" Height="22px" Width="180px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5"><strong class="auto-style6">Okul</strong></td>
                                 <td>
                                     <asp:TextBox ID="TextBox7" runat="server" Height="22px" Width="180px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5"><strong class="auto-style6">Cinsiyet</strong></td>
                                 <td>
                                     <asp:TextBox ID="TextBox8" runat="server" Height="22px" Width="180px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5"><strong class="auto-style6">Sınıf</strong></td>
                                 <td>
                                     <asp:TextBox ID="TextBox9" runat="server" Height="22px" Width="180px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5"><strong class="auto-style6">GANO</strong></td>
                                 <td>
                                     <asp:TextBox ID="TextBox10" runat="server" Height="22px" Width="180px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style4">&nbsp;</td>
                                 <td><strong>
                                     <asp:Button ID="Button3" runat="server" CssClass="auto-style7" OnClick="Button3_Click" Text="Güncelle" Width="98px" />
                                     </strong></td>
                             </tr>
                         </table>
                     </asp:Panel>
                 </div>
           	 </div>
            <div class="clear"></div>
            <div class="clear">
                <h3 class="auto-style11">Başvurularım&nbsp; <strong>
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button6_Click" Text="+" Width="30px" />
                    </strong>&nbsp;<strong><asp:Button ID="Button7" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button7_Click" Text="-" Width="30px" />
                    </strong></h3>
                        </div>
			 <div class="clear">
                  <asp:Panel ID="Panel3" runat="server" Width="614px">
                      <table class="auto-style16">
                          <tr>
                              <td class="auto-style19"><strong class="auto-style24">Burs adı</strong></td>
                              <td class="auto-style23"><strong class="auto-style24">Başvuru durumu</strong></td>
                          </tr>
                      </table>
                  </asp:Panel>
                 <div class ="txt-lt" >
                 <asp:Panel ID="Panel2" runat="server" Width="614px">
                     <asp:DataList ID="DataList2" runat="server">
                         <ItemTemplate>
                             <table class="auto-style16">
                                 <tr>
                                     <td class="auto-style25"><strong>
                                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("bursAd") %>'></asp:Label>
                                         </strong></td>
                                     <td><strong>
                                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("durum") %>'></asp:Label>
                                         </strong></td>
                                 </tr>
                             </table>
                         </ItemTemplate>
                     </asp:DataList>
                 </asp:Panel></div>
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
