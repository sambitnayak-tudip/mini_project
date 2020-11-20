<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpDetails.aspx.cs" Inherits="MiniProject.EmpDetails" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Details</title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            
        }
        
        .auto-style3 {
            text-align: right;
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
        <div class="auto-style7">
            <p >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Employee Registration Page</p>
            <table class="auto-style2">
            
             <tr>
             <td> <asp:Label ID="Label3" Text="EmpID" runat="server" Width="100px"  ></asp:Label></td>

            <td class="auto-style2">
                <telerik:RadNumericTextBox ID="RadNumericTextBoxEmpID" Runat="server" Width="200px" MaxLength="3" NumberFormat-AllowRounding="false">
                </telerik:RadNumericTextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpID" runat="server" ControlToValidate="RadNumericTextBoxEmpID" ErrorMessage="This field is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>    
              
                  

                <tr>
              <td> <asp:Label ID="LableFN" Text="FirstName" runat="server" Width="100px"  ></asp:Label></td>

                <td class="auto-style2">
                 <telerik:RadTextBox ID="RadTextBoxFN" runat="server" Width="200px" MaxLength="30"></telerik:RadTextBox>
        <br />
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldFN" Display="Dynamic" 
                        runat="server" ErrorMessage="Enter First Name" ControlToValidate="RadTextBoxFN" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                   <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "RadTextBoxFN"
                       ID="RegularExpressionValidatorFN" ValidationExpression = "^[\s\S]{2,30}$" runat="server" 
                       ErrorMessage="Maximum length of FirstName is 30" ForeColor="#CC0000" SetFocusOnError="True">

                   </asp:RegularExpressionValidator>
                    <br />
                </td>
                
            </tr>
                 <tr>
              <td> <asp:Label ID="LabelLN" Text="LastName" runat="server" Width="100px"  ></asp:Label></td>

                <td class="auto-style2">
                 <telerik:RadTextBox ID="RadTextBoxLN" runat="server" Width="200px" MaxLength="30"></telerik:RadTextBox>
        <br />
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" 
                        runat="server" ErrorMessage="Enter Last Name" ControlToValidate="RadTextBoxLN" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                   <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "RadTextBoxLN"
                       ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{2,30}$" runat="server" 
                       ErrorMessage="Maximum length of FirstName is 30" ForeColor="#CC0000" SetFocusOnError="True">

                   </asp:RegularExpressionValidator>
                    <br />
                </td>
                
            </tr>
                
                <tr>
              <td> <asp:Label ID="Label1" Text="City" runat="server" Width="100px"  ></asp:Label></td>

                <td class="auto-style2">
                 <telerik:RadTextBox ID="RadTextBoxCity" runat="server" Width="200px" MaxLength="30"></telerik:RadTextBox>
        <br />
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" 
                        runat="server" ErrorMessage="Enter City" ControlToValidate="RadTextBoxCity" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                   <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "RadTextBoxCity"
                       ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{2,30}$" runat="server" 
                       ErrorMessage="Maximum character of City is 30" ForeColor="#CC0000" SetFocusOnError="True">

                   </asp:RegularExpressionValidator>
                    <br />
                </td>
                
            </tr> 
                
                <tr>
              <td> <asp:Label ID="Label2" Text="State" runat="server" Width="100px"  ></asp:Label></td>

                <td class="auto-style2">
                 <telerik:RadTextBox ID="RadTextBoxState" runat="server" Width="200px" MaxLength="30"></telerik:RadTextBox>
        <br />
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorState" Display="Dynamic" 
                        runat="server" ErrorMessage="Enter State" ControlToValidate="RadTextBoxState" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                   <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "RadTextBoxState"
                       ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{2,30}$" runat="server" 
                       ErrorMessage="Maximum character of State is 30" ForeColor="#CC0000" SetFocusOnError="True">

                   </asp:RegularExpressionValidator>
                    <br />
                </td>
                
            </tr> 
                <tr>
              
                  <td> <asp:Label ID="LabelZip" Text="Zip" runat="server" Width="100px" ></asp:Label></td>

                <td class="auto-style2">
                 <telerik:RadNumericTextBox ID="RadNumericTextBoxZip" runat="server" Width="200px" MaxLength="5">
                     <NumberFormat GroupSeparator="" DecimalDigits="0" AllowRounding="true"   KeepNotRoundedValue="false"  /> 
                 </telerik:RadNumericTextBox>
        <br />
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Zipcode"
                        ControlToValidate="RadNumericTextBoxZip" ForeColor="#CC0000">

                    </asp:RequiredFieldValidator>

                    <br />
                    
                    

                </td>
            </tr>

                 <tr>
               <td>
                 <telerik:RadButton RenderMode="Lightweight" ID="btnPrimary" runat="server" Primary="true" OnClick="btn_Click" OnClientClicking="telerikDemo.OnClientClicking"
                        Text="Save" GroupName="GroupNameSave">
                    </telerik:RadButton>

                </td>
                     <td class="auto-style3">
                 <telerik:RadButton RenderMode="Lightweight" ID="Cancel" runat="server" Primary="true" OnClick="btn_Click1" OnClientClicking="telerikDemo.OnClientClicking"
                        Text="Cancel" GroupName="GroupNameCancel">
                    </telerik:RadButton>

                </td>
                     
            </tr>
                 
            </table>

        </div>
    </form>
</body>
</html>
