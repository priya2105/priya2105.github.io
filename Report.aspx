<%@ page language="C#" autoeventwireup="true" inherits="Admin_Report, App_Web_i1whrp4g" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        #mySidenav a
        {
            position: fixed;
            left: -80px;
            transition: 0.3s;
            padding: 15px;
            width: 100px;
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
         .style4
       {
           width:600px; 
           
       }
         .style3
        {
          width:100%   
        }
      .style9
        {
           margin-left:35px;
           width:600px;   
        }
       .style8
       {
             margin-left:35px;   
           width:600px;  
       }
        .style7
       {
             margin-left:35px;   
           width:600px;  
       }
       .style10
       {
          margin-left:50px; 
           
           }
       
        .style90
        {
            width: 250px;
        }
         .style91
         {
             width: 250px;
         }
        </style>
</head>
<body class="style4">
    <form id="form1" runat="server">
      <div class="style3">
     <div align="center">
        <%--style="background-image: url('j.jpg'); background-repeat: no-repeat;
        background-position: 100% top; height: 151px; width: 100%; margin-top: 0px;"--%>
        <asp:Label ID="Label2" runat="server" Text="MAINTAINANCE PORTAL" Style="font-weight: 1000;
            text-align: center; font-size: xx-large; font-family: 'Arial Black'; color: #000099;
            background-color: #3399FF; margin-left: 0px;" Width="1374px"></asp:Label></div>
          
    <table><tr> 
             <td rowspan="2" class="style90">
                <div id="mySidenav" class="sidenav" align="left">
                    <a href="admin_login.aspx" id="HOME">HOME</a> <a href="Admin.aspx" id="REQUEST_DETAILS">
                        CLOSE DETAILS</a> <a href="Report.aspx" id="report">REPORT</a> <a href="ChangeAdmin.aspx" id="CHANGE_PASSWORD">CHANGE PASSWORD</a>
                    <a href="../others/login.aspx" id="logout">LOGOUT</a>
                </div>
            </td>
    <td align="left" class="style91">
    <div class="style10" align="left">
        <asp:DropDownList ID="ddlReport" runat="server" AutoPostBack="true"
            onselectedindexchanged="ddlReport_SelectedIndexChanged" 
            BackColor="#000099" ForeColor="White" 
            style="font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: medium">
        <%--<asp:ListItem Text="-- SELECT --" Value="0" Enabled="true" Selected="True"></asp:ListItem>--%>
        <asp:ListItem Text="All Data" Value="1"></asp:ListItem>
         <asp:ListItem Text="Closed Report" Value="2"></asp:ListItem>
          <asp:ListItem Text="Open Report" Value="3"></asp:ListItem>
        </asp:DropDownList>
      
       
       
        <asp:Button ID="btnExport" runat="server" Text="Export To Excel" 
            onclick="btnExport_Click" BackColor="#000099" BorderStyle="Outset" 
            ForeColor="White" 
            style="font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: medium; margin-left: 47px" 
            Width="153px" /></div>
       <div class="style9">
        <asp:Panel ID="pnlAll" runat="server" Visible="false" Width="1300px" Height="100%" ScrollBars="Both">
       
        <asp:GridView ID="gvAll" runat="server" AutoGenerateColumns="False"
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1" DataKeyNames="Sl_no" DataSourceID="DsAll" 
                GridLines="None" Width="629px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="Sl_no" HeaderText="Sl_no" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Sl_no" />
                <asp:BoundField DataField="Emp_id" HeaderText="Emp_id" 
                    SortExpression="Emp_id" />
                <asp:BoundField DataField="Emp_name" HeaderText="Emp_name" 
                    SortExpression="Emp_name" />
                <asp:BoundField DataField="Emp_Dept" HeaderText="Emp_Dept" 
                    SortExpression="Emp_Dept" />
                <asp:BoundField DataField="Emp_Desg" HeaderText="Emp_Desg" 
                    SortExpression="Emp_Desg" />
                <asp:BoundField DataField="Emp_emailID" HeaderText="Emp_emailID" 
                    SortExpression="Emp_emailID" />
                <asp:BoundField DataField="Complain_Location" HeaderText="Complain_Location" 
                    SortExpression="Complain_Location" />
                <asp:BoundField DataField="Complain_SubLocation" 
                    HeaderText="Complain_SubLocation" SortExpression="Complain_SubLocation" />
                <asp:BoundField DataField="Compain_type" HeaderText="Compain_type" 
                    SortExpression="Compain_type" />
                <asp:BoundField DataField="Item_type" HeaderText="Item_type" 
                    SortExpression="Item_type" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Admin_remark" HeaderText="Admin_remark" 
                    SortExpression="Admin_remark" />
                <asp:BoundField DataField="Entry_date" HeaderText="Entry_date" 
                    SortExpression="Entry_date" />
                <asp:BoundField DataField="Close_date" HeaderText="Close_date" 
                    SortExpression="Close_date" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
            <asp:SqlDataSource ID="DsAll" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MaintenanceDataContext %>" 
                SelectCommand="SELECT [Sl_no], [Emp_id], [Emp_name], [Emp_Dept], [Emp_Desg], [Emp_emailID], [Complain_Location], [Complain_SubLocation], [Compain_type], [Item_type], [Description], [Admin_remark], [Entry_date], [Close_date] FROM [Employee_complain_register]">
            </asp:SqlDataSource>
        </asp:Panel></div>

       <div class="style8"><asp:Panel ID="pnlClosed" runat="server" Visible="false" 
               Width="1000px">
        <asp:GridView ID="gvClosed" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1" DataKeyNames="Sl_no" DataSourceID="DsClosed" 
                GridLines="None" style="margin-left:0px">
            <Columns>
                <asp:BoundField DataField="Sl_no" HeaderText="Sl_no" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Sl_no" />
                <asp:BoundField DataField="Emp_name" HeaderText="Emp_name" 
                    SortExpression="Emp_name" />
                <asp:BoundField DataField="Emp_Dept" HeaderText="Emp_Dept" 
                    SortExpression="Emp_Dept" />
                <asp:BoundField DataField="Emp_Desg" HeaderText="Emp_Desg" 
                    SortExpression="Emp_Desg" />
                <asp:BoundField DataField="Complain_Location" HeaderText="Complain_Location" 
                    SortExpression="Complain_Location" />
                <asp:BoundField DataField="Complain_SubLocation" 
                    HeaderText="Complain_SubLocation" SortExpression="Complain_SubLocation" />
                <asp:BoundField DataField="Compain_type" HeaderText="Compain_type" 
                    SortExpression="Compain_type" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Entry_date" HeaderText="Entry_date" 
                    SortExpression="Entry_date" />
                <asp:BoundField DataField="Admin_remark" HeaderText="Admin_remark" 
                    SortExpression="Admin_remark" />
                <asp:BoundField DataField="Close_date" HeaderText="Close_date" 
                    SortExpression="Close_date" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
            <asp:SqlDataSource ID="DsClosed" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MaintenanceDataContext %>" 
                SelectCommand="SELECT [Sl_no], [Emp_name], [Emp_Dept], [Emp_Desg], [Complain_Location], [Complain_SubLocation], [Compain_type], [Description], [Entry_date], [Admin_remark], [Close_date] FROM [Employee_complain_register] WHERE ([Status] = @Status2)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvClosed" DefaultValue="2" Name="Status2" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel></div> 

        <div class="style7"> <asp:Panel ID="pnlOpen" runat="server" Visible="false">
        <asp:GridView ID="gvOpen" runat="server" AutoGenerateColumns="False" 
                 BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                 CellPadding="3" CellSpacing="1" DataKeyNames="Sl_no" DataSourceID="DsOpen" 
                 GridLines="None">
            <Columns>
                <asp:BoundField DataField="Sl_no" HeaderText="Sl_no" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Sl_no" />
                <asp:BoundField DataField="Emp_name" HeaderText="Emp_name" 
                    SortExpression="Emp_name" />
                <asp:BoundField DataField="Emp_Dept" HeaderText="Emp_Dept" 
                    SortExpression="Emp_Dept" />
                <asp:BoundField DataField="Emp_Desg" HeaderText="Emp_Desg" 
                    SortExpression="Emp_Desg" />
                <asp:BoundField DataField="Complain_Location" HeaderText="Complain_Location" 
                    SortExpression="Complain_Location" />
                <asp:BoundField DataField="Complain_SubLocation" 
                    HeaderText="Complain_SubLocation" SortExpression="Complain_SubLocation" />
                <asp:BoundField DataField="Compain_type" HeaderText="Compain_type" 
                    SortExpression="Compain_type" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Entry_date" HeaderText="Entry_date" 
                    SortExpression="Entry_date" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
             <asp:SqlDataSource ID="DsOpen" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:MaintenanceDataContext %>" 
                 SelectCommand="SELECT [Sl_no], [Emp_name], [Emp_Dept], [Emp_Desg], [Complain_Location], [Complain_SubLocation], [Compain_type], [Description], [Entry_date] FROM [Employee_complain_register] WHERE ([Status] = @Status)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="gvOpen" DefaultValue="1" Name="Status" 
                         PropertyName="SelectedValue" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
        </asp:Panel></div>
     
        
      </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
