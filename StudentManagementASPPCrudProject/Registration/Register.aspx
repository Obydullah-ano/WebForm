<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Login.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentManagementASPPCrudProject.Registration.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="background-color: lightpink">
        

        <div class="container">
            <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>
            <div class="row">
                <div class="col-md-12 mx-auto">
                    <div class="col-md-3"></div>
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        <ProgressTemplate>
                            <b>Loading....</b>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="col-md-6" style="border: 1px solid; background-color: lightsalmon">
                                <div class="card" style="padding: 20px">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col">
                                                <center>
                                            <img src="../Images/login.jpg" width="100px" />
                                    </center>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <center>
                                            <h3 class="h2">User Registration</h3>
                                        <asp:Label ID="lblMessage" CssClass="label label-danger label-warning" runat="server" Text=""></asp:Label>
                                    </center>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <center>
                                            <hr />
                                    </center>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <label>User Name</label>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" placeholder="user name"></asp:TextBox>
                                                </div>
                                                <label>Password</label>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                                                </div>
                                                <label>Confirm Password</label>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtConfirmPass" CssClass="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                                </div>
                                                <label>Email</label>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Enter your email address"></asp:TextBox>
                                                </div>
                                                <label>Role</label>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtRole" CssClass="form-control" runat="server" placeholder="Enter your Role"></asp:TextBox>
                                                </div>
                                                <div class="form-group">

                                                    <asp:Button CssClass="btn btn-info btn-block btn-lg" ID="btnLogin" runat="server" Text="Register" OnClick="btnLogin_Click" />
                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="btnRegister" CssClass="btn btn-success btn-block btn-lg" runat="server" Text=" Go to Login" OnClick="btnRegister_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="col-md-3"></div>

                </div>
    </div>
    </div>
            
       
    </div>
    

    <a href="../Login.aspx">Click here go to Login</a>
    if you do not have an account please register here
</asp:Content>
