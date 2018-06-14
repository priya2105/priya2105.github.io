<%@ page language="C#" autoeventwireup="true" inherits="others_forgetpassword, App_Web_bpjorthu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 44%;
            height: 244px;
        }
        .style2
        {
            width: 199px;
        }
        .style3
        {
            width: 199px;
            font-family: "Arial Black";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="text-align: center; background-color: #999999; font-family: 'Times New Roman', Times, serif; color: #FFFFFF;">
            FORGOT PASSWORD</h1 >
    
    </div>
    <div height:"300px" >
    
    
    <img src ="../images/s5.jpg" alt="image" / align="middle" 
            style="height: 295px; width: 69%; margin-left: 150px; margin-top: 0px">
    
    </div>
    <div>
        <table align="center" class="style1">
            <tr>
                <td class="style3">
                    UserName</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="176px"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
                <td class="style3">
                    New Password</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Confirm Password</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                        Text="username not matching" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="change password" BackColor="#1DD3E2" 
                        style="font-family: 'Arial Black'; color: #000000" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
