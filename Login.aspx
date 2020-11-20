<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiniProject.Login" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            <p class="auto-style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login page</p>
            <table class="auto-style2">
             <tr>
              <td> <asp:Label ID="LabelEmail" Text="Email" runat="server" Width="100px" ></asp:Label></td>

                <td class="auto-style10">
                 <telerik:RadTextBox ID="RadTextBoxEmail" runat="server" Width="200px"></telerik:RadTextBox>
        <br />
                </td>
                    <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldEmail" runat="server" 
                        ControlToValidate="RadTextBoxEmail" ErrorMessage="Email required" ForeColor="#CC0000">

                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionEmail" 
                        runat="server" ControlToValidate="RadTextBoxEmail" ErrorMessage="Enter valid Email "
                        ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

                    </asp:RegularExpressionValidator>
                <br/>
           <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "RadTextBoxEmail" 
               ID="RegularExpressionValidatorEmail" ValidationExpression = "^[\s\S]{5,30}$" 
               runat="server" ErrorMessage="Maximum length of Email is 30" ForeColor="#CC0000" 
               SetFocusOnError="True"></asp:RegularExpressionValidator>

                    </td>
            </tr>

                <tr>
              
                  <td> <asp:Label ID="LabelPassword" Text="Password" runat="server" Width="100px" ></asp:Label></td>

                <td class="auto-style10">
                 <telerik:RadTextBox ID="RadTextBoxPwd" runat="server" Width="200px" TextMode="Password">

                 </telerik:RadTextBox>
        <br />
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldPassword" runat="server" 
             ErrorMessage="Enter Password" ControlToValidate="RadTextBoxPwd" ForeColor="#CC0000">

                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionPwd" runat="server" 
ControlToValidate="RadTextBoxPwd"
ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number"
ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ForeColor="#CC0000"/>
                </td>
            </tr>
                 <tr>
               <td class="auto-style10">
                 <telerik:RadButton RenderMode="Lightweight" ID="btnPrimary" runat="server" Primary="true" OnClick="btn_Click" OnClientClicking="telerikDemo.OnClientClicking"
                        Text="Login" GroupName="GroupNameLogin">
                    </telerik:RadButton>

               </td>
                   </tr>
                </table>
        </div>
    </form>
</body>
</html>
