<%@ page language="C#" autoeventwireup="true" inherits="Admin_ChangeAdmin, App_Web_i1whrp4g" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Change Password</title>
    <style type="text/css">
        #mySidenav a {
    position:fixed; /* Position them relative to the browser window */
    left: -80px; /* Position them outside of the screen */
    transition: 0.3s; /* Add transition on hover */
    padding: 15px; /* 15px padding */
    width: 150px; /* Set a specific width */
    text-decoration: none; /* Remove underline */
    font-size: 20px; /* Increase font size */
    color: white; /* White text color */
    border-radius: 0 5px 5px 0; /* Rounded corners on the top right and bottom right side */
}

#mySidenav a:hover {
    left: 0; /* On mouse-over, make the elements appear as they should */
}

/* The about link: 20px from the top with a green background */
#HOME {
    top: 110px;
    background-color: #4CAF50;
}

#REQUEST_DETAILS {
    top: 210px;
    background-color: #2196F3; /* Blue */
}
 #report
        {
            
             top: 310px;
            background-color:Orange;
            
         }

#CHANGE_PASSWORD {
    top: 410px;
    background-color: #f44336; /* Red */
}
  #logout
        {     top:510px;
              background-color:Purple;
            
            }

       
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 176px;
            font-weight: 700;
            font-family: "Times New Roman", Times, serif;
            color: #003399;
        }
        .style3
        {
            width: 12px;
        }
        .style4
        {
            height: 400px;
        width:600px;    
        }
        .style5
        {
            width: 426px;
        }
        .style6
        {
            font-family: "Arial Black";
            color: #000066;
            background-color: #FFFFFF;
        }
        .style7
        {
            width: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div align="center"        
         
         style="background-image:url('http://localhost:42965/WebSite13/images/j.jpg'); background-repeat:no-repeat; background-position:100% top; height:151px; width:100%; margin-top: 0px;">
          
         <asp:Label ID="Label2" runat="server" Text="MAINTAINANCE PORTAL" 
            style="font-weight:1000;text-align:center; font-size: xx-large; font-family: 'Arial Black'; color: #000099; background-color: #3399FF; margin-left: 0px;" 
            Width="1345px" Height="62px"></asp:Label></div>
   
     <div align="center">
    <table align="center" class="style1">
    <h1 style="text-align: center" align="center" class="style6">
            CHANGE PASSWORD</h1>
        <tr>
        <td>
        <div id="mySidenav" class="sidenav">
  <a href="admin_login.aspx" id="HOME">HOME</a>
  <a href="Admin.aspx" id="REQUEST_DETAILS">CLOSE DETAILS</a>
   <a href="Report.aspx" id="report">REPORT</a>
  <a href="ChangeAdmin.aspx" id="CHANGE_PASSWORD">CHANGE PASSWORD</a>
   <a href="../others/login.aspx" id="logout">LOGOUT</a>
  
</div>
</td><td class="style5">
        <table style="width: 322px"> <tr>
                <td class="style2">
                    Username
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="131px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="rfvusename" runat="server" ErrorMessage="Please Fill"
                        ControlToValidate="TextBox1" ValidationGroup="forgetpassword" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    New password
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="132px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please Fill"
                        ControlToValidate="TextBox2" ValidationGroup="changepassword" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Confirm Password
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="133px"></asp:TextBox>
                </td>
                 <td class="style7">
                    <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ErrorMessage="Please Fill"
                        ControlToValidate="TextBox3" ValidationGroup="changepassword" style="color: #FF0000" 
                       ></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match"
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                         ValidationGroup="changepassword" style="color: #FF0000"></asp:CompareValidator>
                       
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Username not available" 
                        ForeColor="Red" Visible="False"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="RESET" 
                        ForeColor="Blue" style="font-weight: 700; margin-left: 0px" Width="71px" 
                        onclick="Button1_Click" />
                </td>
            </tr></table></td>
        <td style="background-image: url('http://localhost:42965/WebSite13/images/m.jpf.jpg'); background-repeat:no-repeat; background-position:center; " 
                class="style4"></td></tr>
        </table>
    </div>
    </form>
</body>
</html>
