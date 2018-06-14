<%@ page language="C#" autoeventwireup="true" inherits="Admin_AdminNew, App_Web_i1whrp4g" %>


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
        .style10
        {
            width: 30%;
            height: 229px;
            margin-top: 50px;
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
    <div align="center">
        <%--style="background-image: url('j.jpg'); background-repeat: no-repeat;
        background-position: 100% top; height: 151px; width: 100%; margin-top: 0px;"--%>
        <asp:Label ID="Label2" runat="server" Text="MAINTAINANCE PORTAL" Style="font-weight: 1000;
            text-align: center; font-size: xx-large; font-family: 'Arial Black'; color: #000099;
            background-color: #3399FF; margin-left: 0px;" Width="1345px"></asp:Label></div>
    <asp:LinqDataSource ID="dsrequest" runat="server" ContextTypeName="MaintenanceDataContext"
        EntityTypeName="" Select="new (Sl_no, Emp_name, Emp_Dept, Emp_Desg, Complain_Location, Complain_SubLocation, Compain_type, Description, Entry_date)"
        TableName="Employee_complain_registers" Where="Status == @Status">
        <WhereParameters>
            <asp:Parameter DefaultValue="1" Name="Status" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" class="style1">
        <tr>
            <td rowspan="2" class="style90">
                <div id="mySidenav" class="sidenav">
                    <a href="admin_login.aspx" id="HOME">HOME</a> <a href="AdminNew.aspx" id="REQUEST_DETAILS">
                        REQUEST DETAILS</a> <a href="ChangeAdmin.aspx" id="CHANGE_PASSWORD">CHANGE PASSWORD</a>
                    <a href="../others/login.aspx" id="logout">LOGOUT</a>
                </div>
            </td>
            <td rowspan="2" class="style91">
                <asp:Panel ID="PnlRequest" runat="server" Width="100%" Height="300px">
                    <asp:GridView ID="GVRequest" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                        DataSourceID="dsrequest" Width="100%">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgViewData" runat="server" Height="47px" ImageUrl="~/search.png" OnClick= "imgViewData_Click"
                                        Width="48px"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Sl_no" HeaderText="Sl_no" ReadOnly="True" SortExpression="Sl_no" />
                            <asp:BoundField DataField="Emp_name" HeaderText="Emp_name" ReadOnly="True" SortExpression="Emp_name" />
                            <asp:BoundField DataField="Emp_Dept" HeaderText="Emp_Dept" ReadOnly="True" SortExpression="Emp_Dept" />
                            <asp:BoundField DataField="Emp_Desg" HeaderText="Emp_Desg" ReadOnly="True" SortExpression="Emp_Desg" />
                            <asp:BoundField DataField="Complain_Location" HeaderText="Complain_Location" ReadOnly="True"
                                SortExpression="Complain_Location" />
                            <asp:BoundField DataField="Complain_SubLocation" HeaderText="Complain_SubLocation"
                                ReadOnly="True" SortExpression="Complain_SubLocation" />
                            <asp:BoundField DataField="Compain_type" HeaderText="Compain_type" ReadOnly="True"
                                SortExpression="Compain_type" />
                            <asp:BoundField DataField="Description" HeaderText="Description" ReadOnly="True"
                                SortExpression="Description" />
                            <asp:BoundField DataField="Entry_date" HeaderText="Entry_date" ReadOnly="True" SortExpression="Entry_date" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </asp:Panel>
                <asp:Panel ID="PnlCloseRequest" runat="server" Visible="false">
                    <table align="center" class="style10">
                        <tr>
                            <td colspan="2">
                                <h2 style="text-align: center">
                                    <span class="style77">CLOSE</span> <span class="style77">REQUEST</span>
                                </h2>
                            </td>
                        </tr>
                        <tr>
                            <td class="style89">
                                &nbsp;<span class="style78"><strong>Employee ID :</strong></span>
                            </td>
                            <td class="style89">
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
                                <asp:DropDownList ID="ddlDept" runat="server" DataSourceID="dsDept" DataTextField="Dept_name"
                                    DataValueField="Dept_Code" Height="22px" Width="172px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="dsDept" runat="server" ContextTypeName="MaintenanceDataContext"
                                    EntityTypeName="" Select="new (Dept_Code, Dept_name, Status)" TableName="Department_Masters"
                                    Where="Status == @Status">
                                    <WhereParameters>
                                        <asp:ControlParameter ControlID="ddlDept" DefaultValue="1" Name="Status" PropertyName="SelectedValue"
                                            Type="Int32" />
                                    </WhereParameters>
                                </asp:LinqDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style89">
                                <strong>Designation :</strong>
                            </td>
                            <td class="style89">
                                <asp:DropDownList ID="ddlDesig" runat="server" DataSourceID="dsDesig" DataTextField="Designation"
                                    DataValueField="Desgination_Code" Height="24px" Width="172px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="dsDesig" runat="server" ContextTypeName="MaintenanceDataContext"
                                    EntityTypeName="" Select="new (Desgination_Code, Designation, Status)" TableName="Designation_Masters"
                                    Where="Status == @Status">
                                    <WhereParameters>
                                        <asp:ControlParameter ControlID="ddlDesig" DefaultValue="1" Name="Status" PropertyName="SelectedValue"
                                            Type="Int32" />
                                    </WhereParameters>
                                </asp:LinqDataSource>
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
                                <asp:DropDownList ID="ddlLoc" runat="server" Style="margin-left: 0px" DataSourceID="dscomplainloc"
                                    DataTextField="location" DataValueField="location" Height="22px" Width="172px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="dscomplainloc" runat="server" ContextTypeName="MaintenanceDataContext"
                                    EntityTypeName="" Select="new (Status, location)" TableName="Location_masters">
                                </asp:LinqDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style89">
                                <strong>Complain Sub-Location :</strong>
                            </td>
                            <td class="style89">
                                <asp:TextBox ID="txtsubloc" runat="server" Height="57px" TextMode="MultiLine" Width="171px"
                                    placeholder="Give description of the location as much as possible.."></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style89">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>Complain Type :</strong>
                            </td>
                            <td class="style89">
                                <asp:DropDownList ID="ddlComp" runat="server" DataSourceID="dscomplaintype" DataTextField="complain_type1"
                                    DataValueField="complain_type1" Height="22px" Width="172px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="dscomplaintype" runat="server" ContextTypeName="MaintenanceDataContext"
                                    EntityTypeName="" Select="new (Sl_no, complain_type1, Concern_Person, Status)"
                                    TableName="Complain_Types">
                                </asp:LinqDataSource>
                            </td>
                            <tr>
                                <td class="style89">
                                    <strong>Item Type :</strong>
                                </td>
                                <td class="style89">
                                    <asp:DropDownList ID="ddlItem" runat="server" DataSourceID="dsitemtype" DataTextField="Item_type1"
                                        DataValueField="Item_type1" Height="22px" Width="172px">
                                    </asp:DropDownList>
                                    <asp:LinqDataSource ID="dsitemtype" runat="server" ContextTypeName="MaintenanceDataContext"
                                        EntityTypeName="" Select="new (Sl_no, Item_type1, Complain_type, Status)" TableName="Item_Types">
                                    </asp:LinqDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="style89">
                                    <strong>Complain Description :</strong>
                                </td>
                                <td class="style89">
                                    <asp:TextBox ID="txtComDesc" runat="server" Height="45px" TextMode="MultiLine" placeholder="Description.."
                                        Width="170px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style89">
                                    <strong>Admin Remark :</strong>
                                </td>
                                <td class="style89">
                                    <asp:TextBox ID="txtRemark" runat="server" Height="45px" TextMode="MultiLine" placeholder="Remark..."
                                        Width="170px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style8" align="center" colspan="2">
                                    <asp:ImageButton ID="savebtn" runat="server" ImageUrl="~/l.jpg" Width="137px" Height="42px"
                                        BorderColor="#6600CC" BorderStyle="Ridge" onclick="savebtn_Click" />
                                </td>
                                <td class="style7">
                                </td>
                            </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
