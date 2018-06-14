<%@ page language="C#" autoeventwireup="true" inherits="User_Dashboard, App_Web_jdmtmhii" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        #mySidenav a
        {
            position: fixed;
            left: -80px;
            transition: 0.3s;
            padding: 15px;
            width: 150px;
            text-decoration: none;
            font-size: 20px;
            color: white;
            border-radius: 0 5px 5px 0;
        }
        
        #mySidenav a:hover
        {
            left: 0; /* On mouse-over, make the elements appear as they should */
        }
        
        /* The about link: 20px from the top with a green background */
        #HOME
        {
            top: 220px;
            background-color: #4CAF50;
        }
        
        #REQUEST_DETAILS
        {
            top: 320px;
            background-color: #2196F3; /* Blue */
        }
        
        #CHANGE_PASSWORD
        {
            top: 420px;
            background-color: #f44336; /* Red */
        }
        #logout
        {
            top: 520px;
            background-color: Purple;
        }
         
        
        .style1
        {
            width: 100%;
            margin-left: 0px;
            height: 568px;
        }
        
        .style90
        {
            width: 267px;
        }
        .style91
        {
            width: 100%;
            height: 100%;
           
            background-image:url('../images/k.jpg');
            background-position:center;
        }
        </style>
</head>
<body class="style1">
    <form id="form1" runat="server">
    <div align="center">
        <%--style="background-image: url('j.jpg'); background-repeat: no-repeat;
        background-position: 100% top; height: 151px; width: 100%; margin-top: 0px;"--%>
        <asp:Label ID="Label2" runat="server" Text="MAINTAINANCE PORTAL" Style="font-weight: 1000;
            text-align: center; font-size: xx-large; font-family: 'Arial Black'; color: #000099;
            background-color: #3399FF; margin-left: 0px;" Width="1345px"></asp:Label></div>
    <table align="center" class="style1">
        <tr>
            <td rowspan="2" class="style90">
                <div id="mySidenav" class="sidenav">
                    <a href="Dashboard.aspx" id="HOME">HOME</a> <a href="Raiserequest.aspx" 
                        id="REQUEST_DETAILS">
                        REQUEST DETAILS</a> <a href="ChangePassword.aspx" id="CHANGE_PASSWORD">CHANGE PASSWORD
                        </a>&nbsp;<a href="../others/login.aspx" id="logout">LOGOUT</a>
                </div>
            </td>
            
            <td class="style91" align="center">
                <asp:Label ID="NAME" runat="server" Height="53px" Style="font-family: 'Arial Black';
                    text-align: center; font-size: xx-large" Width="467px" BackColor="#BB7E00" 
                    ForeColor="#663300" BorderColor="#663300" BorderStyle="Double" 
                    BorderWidth="5px"></asp:Label>
            </td>
            
           
    </table>
    </form>
</body>
</html>
