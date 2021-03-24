<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="StudentViewReport.aspx.cs" Inherits="StudentManagementASPPCrudProject.CrystalReports.StudentViewReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div>
        <center>
            <h3 class="h1">Student Information Report</h3>
            <asp:Button ID="btnReport" runat="server" Text="STUDENT REPORT" CssClass="btn btn-info btn-group-lg" Width="250px" Height="50px" Font-Size="X-Large" BorderStyle="Inset" OnClick="btnReport_Click" />
        </center><br />

    </div>
    <section>
        <img src="../Images/reportDesign.jpg" class="img-responsive" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Database</h2>
                        <p><b>Our 3 database features</b></p>
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
