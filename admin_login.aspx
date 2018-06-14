<%@ page language="C#" autoeventwireup="true" inherits="Admin_admin_login, App_Web_i1whrp4g" %>

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
            top: 110px;
            background-color: #4CAF50;
        }
        
        #REQUEST_DETAILS
        {
            top: 210px;
            background-color: #2196F3; /* Blue */
        }
        #report
        {
            
             top: 310px;
            background-color:Orange;
            
         }
        
        #CHANGE_PASSWORD
        {
            top: 410px;
            background-color: #f44336; /* Red */
        }
        #logout
        {
            top: 510px;
            background-color: Purple;
        }
        #Label2
        {
            background-image:url("../images/j.jpg");
            background-position:right;
            background-repeat:no-repeat;
            
        }
        
        .style1
        {
            width: 100%;
            margin-left: 0px;
            height: 80%
        }
       
        .style90
        {
            width: 32px;
        }
        .style91
        {
            width: 100%;
            height: 550px;
        }
        .style93
        {
            width: 80%;
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
                        <a href="admin_login.aspx" id="HOME">HOME</a> <a href="Admin.aspx" id="REQUEST_DETAILS">
                            CLOSE DETAILS</a> <a href="Report.aspx" id="report">REPORT</a> <a href="../User/ChangePassword.aspx" 
                            id="CHANGE_PASSWORD">CHANGE PASSWORD
                            </a>&nbsp;<a href="../others/login.aspx" id="logout">LOGOUT</a>
                    </div>
                </td>
                <td class="style91" align="center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/ap.jpg" Width="80%" Height="540px"
                        Style="margin-left: 60px" />
                </td>
               
            </table>
   
    </form>
</body>
</html>