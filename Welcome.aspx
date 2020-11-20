<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="MiniProject.Welcome" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Details</title>
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

           <p>Welcome to Login Page!!!!!</p> 

            <p><telerik:RadButton RenderMode="Lightweight" ID="btnPrimary" runat="server" Primary="true" OnClick="btn_Click" OnClientClicking="telerikDemo.OnClientClicking"
                        Text="Log in" GroupName="GroupNameLogin">
                    </telerik:RadButton></p>
       
            
        
        </div>
    </form>
</body>
</html>
