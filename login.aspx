<%@ page language="C#" autoeventwireup="true" inherits="others_login, App_Web_bpjorthu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        { text-shadow: 2px 2px 3px white;
            height: 34px;
            color: #666699;
        }
        .style2
        {
            height: 54px;
            width: 164px;
            font-style: italic;
        }
        .style3
        {
            height: 54px;
        }
        .style6
        {
            width: 149px;
        }
        .style7
        {
            height: 54px;
            width: 149px;
            font-family: "Times New Roman" , Times, serif;
            color: #0000CC;
        }
        .style8
        {
            width: 149px;
            height: 4px;
        }
        .style10
        {
            
            width: 164px;
        }
        .style11
        {
            height: 61px;
            width: 149px;
            font-family: "Times New Roman" , Times, serif;
            color: #0000CC;
        }
        .style12
        {
            height: 61px;
            width: 164px;
        }
        .style15
        {
            color: #000000;
        }
        .style16
        {
            background-color: #FFFFFF;
        }
        .style18
        {
            font-family: Calibri;
        }
        .style19
        {
            font-family: fantasy;
            font-weight: normal;
            font-size: xx-large;
            color:black;
    text-shadow: 2px 2px 3px white;
        }
        .style20
        {
            font-size: large;
            font-family: "Sitka Display";
        }
        .style21
        {
            font-size: large;
        }
         .style22
        {
            font-size: medium;
            text-align:right;
        }
        
    </style>
</head>
<body style="height: 500px">
    <form id="form1" runat="server">
    
    <div align="center" style="background-image: url('../images/s.jpg'); background-repeat: no-repeat;
        background-size: cover; height: 650px; width: 1330px">
        <br class="style18" />
                    <br class="style18" /> <header >
    <h1 class="style19"><strong style="font-family: Gadugi">MAINTENANCE PORTAL</strong></h1>
    
  </header>
         <br />  
        <table align="center" style="background-image: url('../images/s.jpg'); background-repeat: no-repeat;
            background-size: cover; opacity: 15.0;border:1px solid black; border-color: black; border-width:medium;
            filter: alpha(opacity=50); width: 361px;">
       
            <tr align="center">
                <td colspan='2' style="font-weight: 700; font-size: x-large;" class="style1">
                    LOGIN PAGE
                    <br />
                    <br />
              
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <span class="style15"><strong><span class="style16">USERNAME</span></strong></span>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtname" runat="server" Style="margin-bottom: 3px" Height="29px"
                        Width="133px"></asp:TextBox>
                </td>
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <span class="style15"><strong><span class="style16">PASSWORD</span></strong></span>
                </td>
                <td class="style12">
                    <asp:TextBox ID="txtpass" runat="server" Style="margin-bottom: 3px" Height="29px"
                        Width="133px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    <asp:Button ID="btnlog" runat="server" Text="login" Height="48px" Width="123px" 
                        Style="margin-bottom: 0px;
                        font-weight: 700; font-family: 'Arial Black'; font-size: medium; color: #FFFFFF;" OnClick="btnlog_Click"
                        BackColor="#3399FF" ForeColor="White" />
                </td>
                <td align="center" class="style10">
                    <asp:Button ID="btnfor" runat="server" Text="Forgot Password??" Height="41px" Width="177px"
                        Style="margin-bottom: 0px; font-weight: 700; font-family: 'Arial Black'; font-size: medium; color: #FFFFFF;"
                        OnClick="btnfor_Click" BackColor="#3399FF" ForeColor="White" />
                    <br />
            </tr>
            <tr><td>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td></tr>
            <tr>
                <td align="justify" class="style8" colspan='2'>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn" runat="server" Text="sign up" Height="60px" Width="347px" Style="margin-left: 2px;
                        text-align: center; font-weight: 700; font-size: medium; font-family: 'Arial Black'; color: #FFFFFF;"
                        OnClick="btn_Click" BackColor="#3399FF" ForeColor="White" />
                </td>
            </tr>
            </table>
        <footer position="relative">
  <p class="style20">For any queries</p>
  <p><span class="style21"><strong>Contact information: </strong></span> <a href="mailto:jsl97@gmail.com">
      <span class="style21"><strong>jsl97@gmail.com</strong></span></a>.</p>
     
      
      <p class="style22">Copyrights © 2018 Jsl All Rights Reserved.</p>
</footer>

    </div>
    </form>
</body>
</html>
