<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginUserControl.ascx.cs" Inherits="StudentManagementASPPCrudProject.UserControl.LoginUserControl" %>

  <div class="container">
      <br />
            <div class="row"> 
                
                     <div class="col-md-12 mx-auto">
                         <div class="col-md-3"></div>
                         <div class="col-md-6" style="border:1px solid; background-color:cornsilk">
                              <div class="card" style="padding:20px">
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
                                            <h3>User Login</h3>
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
                                    <div class="form-group">   
                                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                                        <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />  
                                    </div>
                                    <div class="form-group">                                        
                                        <asp:Button ID="btnRegister" CssClass="btn btn-info btn-block btn-lg" runat="server" Text="Register" OnClick="btnRegister_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                         </div>
                         <div class="col-md-3"></div>                   
                </div>
               
               













                
               <%-- <table class="table table-responsive">
                    
                    <tr>
                        <td colspan="2"><h4>Login</h4></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td>
                            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        </td>
                       
                    </tr>
                </table>
                 <br />--%>
               
        </div>
  </div>