<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="FormView.aspx.cs" Inherits="StudentManagementASPPCrudProject.ViewDBC.FormView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

     <div class="" style="margin: 10 10 10 10">
        <div class="row">
            <div class="col-md-12 mx-auto table-bordered" style="margin-left: 20px">
                <center>
                <h1> Show FormView Data Control</h1>
               
                </center>
            </div>
            <div class="col-md-12">
            </div>
        </div>
        <div class="row">
            <center>
                 <div class="col-md-12 mx-auto">
                 <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Both">
                     <EditItemTemplate>
                         Id:
                         <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                         <br />
                         StudName:
                         <asp:TextBox ID="StudNameTextBox" runat="server" Text='<%# Bind("StudName") %>' />
                         <br />
                         Email:
                         <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                         <br />
                         Phone:
                         <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                         <br />
                         DateOfBirth:
                         <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                         <br />
                         CourseId:
                         <asp:TextBox ID="CourseIdTextBox" runat="server" Text='<%# Bind("CourseId") %>' />
                         <br />
                         ImageName:
                         <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                         <br />
                         ImageUrl:
                         <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                         <br />
                         <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                         &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </EditItemTemplate>
                     <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                     <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                     <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                     <InsertItemTemplate>
                         StudName:
                         <asp:TextBox ID="StudNameTextBox" runat="server" Text='<%# Bind("StudName") %>' />
                         <br />
                         Email:
                         <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                         <br />
                         Phone:
                         <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                         <br />
                         DateOfBirth:
                         <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                         <br />
                         CourseId:
                         <asp:TextBox ID="CourseIdTextBox" runat="server" Text='<%# Bind("CourseId") %>' />
                         <br />
                         ImageName:
                         <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                         <br />
                         ImageUrl:
                         <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                         <br />
                         <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                         &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </InsertItemTemplate>
                     <ItemTemplate>
                         Id:
                         <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                         <br />
                         StudName:
                         <asp:Label ID="StudNameLabel" runat="server" Text='<%# Bind("StudName") %>' />
                         <br />
                         Email:
                         <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                         <br />
                         Phone:
                         <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                         <br />
                         DateOfBirth:
                         <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                         <br />
                         CourseId:
                         <asp:Label ID="CourseIdLabel" runat="server" Text='<%# Bind("CourseId") %>' />
                         <br />
                         ImageName:
                         <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Bind("ImageName") %>' />
                         <br />
                         ImageUrl:                        
                         <asp:Image ID="Image1" runat="server" Width="70px" Height="70px" ImageUrl='<%#Eval("ImageUrl") %>' />
                         <br />
                         <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                         &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                         &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                     </ItemTemplate>
                     <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                     <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                     </asp:FormView>
            </div>
            </center>
           
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [Student_tbl] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Student_tbl] ([StudName], [Email], [Phone], [DateOfBirth], [CourseId], [ImageName], [ImageUrl]) VALUES (@StudName, @Email, @Phone, @DateOfBirth, @CourseId, @ImageName, @ImageUrl)" SelectCommand="SELECT * FROM [Student_tbl]" UpdateCommand="UPDATE [Student_tbl] SET [StudName] = @StudName, [Email] = @Email, [Phone] = @Phone, [DateOfBirth] = @DateOfBirth, [CourseId] = @CourseId, [ImageName] = @ImageName, [ImageUrl] = @ImageUrl WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StudName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="CourseId" Type="Int32" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="ImageUrl" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="StudName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="CourseId" Type="Int32" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="ImageUrl" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>
