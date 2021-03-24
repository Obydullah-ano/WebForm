<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentManagementASPPCrudProject.Login" %>

<%@ Register Src="~/UserControl/LoginUserControl.ascx" TagPrefix="uc1" TagName="LoginUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:lightpink">
        <uc1:LoginUserControl runat="server" ID="LoginUserControl" />
         <a href="Registration/Register.aspx">Click here to register</a>
                if you do not have an account please register here
    </div>
    
    
</asp:Content>
