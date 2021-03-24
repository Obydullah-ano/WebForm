<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StudentManagementASPPCrudProject.Pages.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server"> 
   
    <section>
        <img src="../Images/home1.jpg" class="img-responsive">
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Website Design and development</h2>
                        <p><b>Crud operation for ASP.NET web form </b></p>
                        <hr />
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" height="100px" src="../Images/sql.png" />
                        <h2>SQL DataSource</h2>
                        <p><b>CRUD with Sql Data source all of features</b></p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" height="100px" src="../Images/object.png" />
                        <h2>Object DataSource</h2>
                        <p><b>CRUD with Object Data source all of features</b></p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" height="100px" src="../Images/Entity2.jpg" />
                        <h2>Entity DataSource</h2>
                        <p><b>CRUD with Entity Data source all of features</b></p>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
