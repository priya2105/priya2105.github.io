<%@ page language="C#" autoeventwireup="true" inherits="User_Raiserequest, App_Web_jdmtmhii" %>

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
        {     top:520px;
              background-color:Purple;
            
         }
        .style10
        {
            width: 30%;
            height: 229px;
            margin-top:50px;
        }
        .style4
        {
            height: 100px;
            width: 589px;
        }
        
        .style1
        {
            width: 88%;
            margin-left: 100px;
            height: 400px;
        }
        .style7
        {
            width: 205px;
            height: 14px;
        }
        .style8
        {
            width: 983px;
            height: 14px;
        }
        .style10
        {
            height: 350px;
            width: 365px;
            margin-left: 11px;
            margin-right: 0px;
        }
        .style77
        {
            color: #000066;
            text-decoration: underline;
        }
        .style78
        {
            font-family: Calibri;
        }
        .style89
        {
            height: 25px;
        }
        .style90
        {
            width: 104px;
        }
        .style91
        {
            width: 406px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" >
    <%--style="background-image: url('j.jpg'); background-repeat: no-repeat;
        background-position: 100% top; height: 151px; width: 100%; margin-top: 0px;"--%>
        <asp:Label ID="Label2" runat="server" Text="MAINTAINANCE PORTAL" Style="font-weight: 1000;
            text-align: center; font-size: xx-large; font-family: 'Arial Black'; color: #000099;
            background-color: #3399FF; margin-left: 0px;" Width="1345px" ></asp:Label></div>
    
    
    <table align="center" class="style1">
    <tr><td rowspan="2" class="style90">
                <div id="mySidenav" class="sidenav">
                    <a href="Dashboard.aspx" id="HOME">HOME</a> <a href="Raiserequest.aspx" id="REQUEST_DETAILS">REQUEST DETAILS</a>
                    <a href="ChangePassword.aspx" id="CHANGE_PASSWORD">CHANGE PASSWORD</a>
                    <a href="../others/login.aspx" id="logout">LOGOUT</a>
                </div>
            </td>
            <td rowspan="2" class="style91">
           
                               
                <table align="center" class="style10">
                <tr><td colspan="2"><h2 style="text-align: center">
                        <span class="style77">RAISE</span> <span class="style77">REQUEST</span>
                    </h2></td></tr>
                    <tr>
                        <td class="style89">
                            &nbsp;<span class="style78"><strong>Employee ID :</strong></span>
                        </td>
                        <td class="style89" >
                            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style89">
                            <strong>Employee Name :</strong>
                        </td>
                        <td class="style89">
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style89">
                            <strong>Department :</strong>
                        </td>
                        <td class="style89">
                            <asp:DropDownList ID="ddlDept" runat="server"  Height="22px" Width="172px" 
                                DataSourceID="DsDept" DataTextField="Dept_name" DataValueField="Dept_Code">
                            </asp:DropDownList>
                            
                            <asp:SqlDataSource ID="DsDept" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MaintenanceDataContext %>" 
                                SelectCommand="SELECT [Dept_Code], [Dept_name], [Status] FROM [Department_Master] WHERE ([Status] = @Status)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlDept" DefaultValue="1" Name="Status" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style89">
                            <strong>Designation :</strong>
                        </td>
                        <td class="style89">
                            <asp:DropDownList ID="ddlDesig" runat="server" 
                                OnSelectedIndexChanged="ddlDesig_SelectedIndexChanged" Height="24px" 
                                Width="172px" DataSourceID="DsDesig" DataTextField="Designation" 
                                DataValueField="Desgination_Code">
                            </asp:DropDownList>
                            
                            <asp:SqlDataSource ID="DsDesig" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MaintenanceDataContext %>" 
                                SelectCommand="SELECT [Desgination_Code], [Designation], [Status] FROM [Designation_Master] WHERE ([Status] = @Status)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlDesig" DefaultValue="1" Name="Status" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style89">
                            <strong>Mail ID :</strong>
                        </td>
                        <td class="style89">
                            <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style89">
                            <strong>Complain Location :</strong>
                        </td>
                        <td class="style89">
                            <asp:DropDownList ID="ddlLoc" runat="server" Style="margin-left: 0px" Height="22px" 
                                Width="172px" DataSourceID="DsLocation" DataTextField="location" 
                                DataValueField="location">
                            </asp:DropDownList>
                            
                            <asp:SqlDataSource ID="DsLocation" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MaintenanceDataContext %>" 
                                SelectCommand="SELECT [location], [Status], [sl_no] FROM [Location_master]">
                            </asp:SqlDataSource>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style89">
                            <strong>Complain Sub-Location :</strong>
                        </td>
                        <td class="style89">
                            <asp:TextBox ID="subloc" runat="server" Height="57px" TextMode="MultiLine" 
                                Width="171px" 
                                placeholder="Give description of the location as much as possible.."></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style89">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <strong>Complain Type :</strong>
                        </td>
                        <td class="style89">
                            <asp:DropDownList ID="ddlComp" runat="server"  Height="22px" Width="172px" 
                                DataSourceID="DsComp" DataTextField="complain_type" 
                                DataValueField="complain_type">
                            </asp:DropDownList>
                            
                            <asp:SqlDataSource ID="DsComp" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MaintenanceDataContext %>" 
                                SelectCommand="SELECT [complain_type], [Sl_no], [Concern_Person], [Status] FROM [Complain_Type]">
                            </asp:SqlDataSource>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style89">
                            <strong>Item Type :</strong>
                        </td>
                        <td class="style89">
                            <asp:DropDownList ID="ddlItem" runat="server" Height="22px" Width="172px" 
                                DataSourceID="DsItem" DataTextField="Item_type" 
                                DataValueField="Complain_type">
                            </asp:DropDownList>
                            
                            <asp:SqlDataSource ID="DsItem" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MaintenanceDataContext %>" 
                                SelectCommand="SELECT [Item_type], [Sl_no], [Complain_type], [Status] FROM [Item_Type]">
                            </asp:SqlDataSource>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style89">
                            <strong>Complain Description :</strong>
                        </td>
                        <td class="style89">
                            <asp:TextBox ID="ComDesc" runat="server" Height="45px" TextMode="MultiLine" 
                                placeholder="Description.." Width="170px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" align="center" colspan="2">
                            <asp:ImageButton ID="savebtn" runat="server" ImageUrl="~/images/l.jpg" Width="137px" 
                                Height="42px" BorderColor="#6600CC" BorderStyle="Ridge" onclick="savebtn_Click" 
                                 />
                        </td>
                        <td class="style7">
                        </td>
                    </tr>
                </table>
            </td>
            <td align="right">
                <asp:Image ID="imgLogo" runat="server" 
                ImageUrl="~/images/j.jpg" Height="86px" Width="287px" /></td></tr>
        <tr class="style1">
            <td style="background-image: url('http://localhost:42965/WebSite13/images/m.jpf.jpg'); background-repeat: no-repeat; background-position: top-right;"
                class="style4" align="right">
                
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
