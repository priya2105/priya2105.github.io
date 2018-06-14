<%@ page language="C#" autoeventwireup="true" inherits="others_Register, App_Web_bpjorthu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>REGISTER NOW!!</title>
    <style type="text/css">
        .style4
        {
           background-image:url('../images/i.jpg');
           background-repeat:no-repeat; 
           background-position:right;
           width:100%;
           height:670px;
            
        }
        .style1
        {
            text-shadow: 2px 2px 2px black;
            color: #000066;
        }
        .style17
        {
            width: 312px;
            height: 59px;
        }
        .style22
        {
            text-align: right;
        }
        .style31
        {
            height: 61px;
            width: 286px;
        }
        .style32
        {
            font-family: "Arial Black";
            height: 61px;
            width: 312px;
        }
        .style33
        {
            height: 61px;
        }
        .style36
        {
            width: 286px;
        }
        .style37
        {
            font-family: "Arial Black";
            width: 312px;
        }
        .style38
        {
            height: 59px;
            width: 286px;
        }
        .style39
        {
            height: 59px;
        }
        .style40
        {
            color: #000000;
        }
        .style41
        {
            height: 64px;
            width: 286px;
        }
        .style42
        {
            font-family: "Arial Black";
            height: 64px;
            width: 312px;
        }
        .style43
        {
            height: 64px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style4" >
    <div align="center" >
        <h1 class="style1">
            REGISTER NOW!!</h1>
        <table align="center" style="background-image: url('../images/img (1).jpg'); background-repeat: no-repeat;
            background-size: cover; width: 35%; color: #FFFFCC; opacity: 1000; border: 1px solid black;
            border-color: black; border-width: thick; filter: alpha(opacity=50);">
            <tr>
                <td class="style31">
                    <span class="style40"><strong>USERNAME</strong></span>
                </td>
                <td class="style32">
                    <asp:TextBox ID="txtname1" runat="server" Style="margin-bottom: 3px" Height="37px"
                        Width="133px"></asp:TextBox>
                </td>
                <td class="style33">
                    <asp:RequiredFieldValidator ID="rfvname1" runat="server" ErrorMessage="Please Fill"
                        ControlToValidate="txtname1" ValidationGroup="signup" Style="color: #0000CC;
                        font-family: 'Arial Black';"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style41">
                    <span class="style40"><strong>E-MAIL</strong></span>
                </td>
                <td class="style42">
                    <asp:TextBox ID="txtEmail" runat="server" Style="margin-bottom: 3px" Height="37px"
                        Width="133px"></asp:TextBox>
                </td>
                <td class="style43">
                    <asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="Please Fill"
                        ControlToValidate="txtEmail" ValidationGroup="signup" Style="color: #0000CC;
                        font-family: 'Arial Black';"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style36">
                    <span class="style40"><strong>PASSWORD</strong></span>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtPassword" runat="server" Style="margin-bottom: 3px" Height="36px"
                        Width="133px" TextMode="password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please Fill"
                        ControlToValidate="txtPassword" ValidationGroup="signup" Style="color: #0000CC;
                        font-family: 'Arial Black';"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style38">
                    <span class="style40"><strong>CONFIRM PASSWORD</strong></span>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtConfirm" runat="server" Style="margin-bottom: 0px; margin-top: 0px;"
                        Height="36px" Width="133px" TextMode="password"></asp:TextBox>
                </td>
                <td class="style39">
                    <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ErrorMessage="Please Fill"
                        ControlToValidate="txtConfirm" ValidationGroup="signup" Style="color: #0000CC;
                        font-size: medium; font-family: 'Arial Black'"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match"
                        ControlToCompare="txtPassword" ControlToValidate="txtConfirm" ValidationGroup="signup"
                        Style="font-size: medium; color: #0000CC; font-weight: 700; font-family: 'Arial Black'"></asp:CompareValidator>
                </td>
            </tr>            
            <tr>
                <td align="center" colspan='3' height="50">
                    <asp:Button ID="btnlog1" runat="server" Text="Register" Height="48px" Width="149px"
                        Style="margin-bottom: 0px; font-weight: 700; font-family: 'Arial Black'; font-size: medium;"
                        BackColor="#3399FF" ForeColor="White" OnClick="btnlog1_Click" ValidationGroup="signup" />
                </td>
            </tr>
        </table>
        </table>
        <footer position="relative">
  <p class="style20">For any queries</p>
  <p><span class="style21"><strong>Contact information: </strong></span> <a href="mailto:jsl97@gmail.com">
      <span class="style21"><strong>jsl97@gmail.com</strong></span></a>.</p>
     
      
      <p class="style22">Copyrights © 2018 Jsl All Rights Reserved.</p>
</footer>
    </div>
    </div>
    </form>
</body>
</html>
