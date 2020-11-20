<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MiniProject.Home" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
            </Scripts>
        </telerik:RadScriptManager>

        <div>
            <h2 class="auto-style1">Employee Information</h2>
         <telerik:RadButton ID="RadButton1" runat="server" Text="Add New Record" OnClick="RadButton1_Click">
        </telerik:RadButton>

        <telerik:RadGrid ID="gridUsers" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnDeleteCommand="gridUsers_DeleteCommand" OnUpdateCommand="gridUsers_UpdateCommand">


<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>


            <MasterTableView DataKeyNames="EmpID" DataSourceID="SqlDataSource1">
                <Columns>
        <telerik:GridBoundColumn DataField="EmpID" HeaderText="EmpID" SortExpression="EmpID" DataType="System.Int32" ReadOnly="True"></telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="LastName" HeaderText="LastName" SortExpression="LastName"></telerik:GridBoundColumn>
		<telerik:GridBoundColumn DataField="City" HeaderText="City" SortExpression="City" FilterControlAltText="Filter City column" UniqueName="City"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="State" FilterControlAltText="Filter State column" HeaderText="State" SortExpression="State" UniqueName="State">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Zip" DataType="System.Int32" FilterControlAltText="Filter Zip column" HeaderText="Zip" SortExpression="Zip" UniqueName="Zip">
                    </telerik:GridBoundColumn>
					<telerik:GridEditCommandColumn HeaderStyle-HorizontalAlign="Center" HeaderText="Update" ColumnGroupName="Action">
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    </telerik:GridEditCommandColumn>

        <telerik:GridButtonColumn  HeaderStyle-HorizontalAlign="Center" HeaderText="Delete" ColumnGroupName="Action" ButtonType="FontIconButton" CommandName="Delete" />
					

                </Columns>
    
                 
                <ColumnGroups>
                       <telerik:GridColumnGroup HeaderText="Action" Name="Action" HeaderStyle-HorizontalAlign="Center">
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    </telerik:GridColumnGroup>
                    </ColumnGroups>

                

            </MasterTableView>
          
        </telerik:RadGrid>

        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:EmployeeConnectionString %>" 
                SelectCommand="SELECT * FROM [EmployeeInfo]">
                
            </asp:SqlDataSource>

        
        </div>
    </form>
</body>
</html>
