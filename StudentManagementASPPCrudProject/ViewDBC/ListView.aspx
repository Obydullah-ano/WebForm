<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="StudentManagementASPPCrudProject.ViewDBC.ListView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <div class="" style="margin: 10 10 10 10">
        <div class="row">
            <div class="col-md-12 mx-auto table-bordered" style="margin-left: 20px">
                <center>
                <h1> Show ListView Data Control</h1>
               
                </center>
            </div>
            <div class="col-md-12">
            </div>
        </div>
        <div class="row">
            <center>
                 <div class="col-md-12 mx-auto">
                 <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                     <AlternatingItemTemplate>
                         <tr style="">
                             <td>
                                 <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                 <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                             </td>
                             <td>
                                 <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="StudNameLabel" runat="server" Text='<%# Eval("StudName") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="CourseIdLabel" runat="server" Text='<%# Eval("CourseId") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Eval("ImageName") %>' />
                             </td>
                             <td>
                                 <asp:Image ID="Image1" runat="server" Width="70px" Height="70px" ImageUrl='<%#Eval("ImageUrl") %>'></asp:Image>                                
                             </td>
                         </tr>
                     </AlternatingItemTemplate>
                     <EditItemTemplate>
                         <tr style="">
                             <td>
                                 <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                 <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                             </td>
                             <td>
                                 <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="StudNameTextBox" runat="server" Text='<%# Bind("StudName") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="CourseIdTextBox" runat="server" Text='<%# Bind("CourseId") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                             </td>
                             <td>
                                 <asp:Image ID="Image1" runat="server" Width="70px" Height="70px" ImageUrl='<%#Eval("ImageUrl") %>'></asp:Image> 
                             </td>
                         </tr>
                     </EditItemTemplate>
                     <EmptyDataTemplate>
                         <table runat="server" style="">
                             <tr>
                                 <td>No data was returned.</td>
                             </tr>
                         </table>
                     </EmptyDataTemplate>
                     <InsertItemTemplate>
                         <tr style="">
                             <td>
                                 <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                 <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                             </td>
                             <td>&nbsp;</td>
                             <td>
                                 <asp:TextBox ID="StudNameTextBox" runat="server" Text='<%# Bind("StudName") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="CourseIdTextBox" runat="server" Text='<%# Bind("CourseId") %>' />
                             </td>
                             <td>
                                 <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                             </td>
                             <td>
                                 <asp:Image ID="Image1" runat="server" Width="70px" Height="70px" ImageUrl='<%#Eval("ImageUrl") %>'></asp:Image> 
                             </td>
                         </tr>
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <tr style="">
                             <td>
                                 <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                 <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                             </td>
                             <td>
                                 <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="StudNameLabel" runat="server" Text='<%# Eval("StudName") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="CourseIdLabel" runat="server" Text='<%# Eval("CourseId") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Eval("ImageName") %>' />
                             </td>
                             <td>
                                 <asp:Image ID="Image1" runat="server" Width="70px" Height="70px" ImageUrl='<%#Eval("ImageUrl") %>'></asp:Image> 
                             </td>
                         </tr>
                     </ItemTemplate>
                     <LayoutTemplate>
                         <table runat="server">
                             <tr runat="server">
                                 <td runat="server">
                                     <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                         <tr runat="server" style="">
                                             <th runat="server"></th>
                                             <th runat="server">Id</th>
                                             <th runat="server">StudName</th>
                                             <th runat="server">Email</th>
                                             <th runat="server">Phone</th>
                                             <th runat="server">DateOfBirth</th>
                                             <th runat="server">CourseId</th>
                                             <th runat="server">ImageName</th>
                                             <th runat="server">ImageUrl</th>
                                         </tr>
                                         <tr id="itemPlaceholder" runat="server">
                                         </tr>
                                     </table>
                                 </td>
                             </tr>
                             <tr runat="server">
                                 <td runat="server" style=""></td>
                             </tr>
                         </table>
                     </LayoutTemplate>
                     <SelectedItemTemplate>
                         <tr style="">
                             <td>
                                 <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                 <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                             </td>
                             <td>
                                 <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="StudNameLabel" runat="server" Text='<%# Eval("StudName") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="CourseIdLabel" runat="server" Text='<%# Eval("CourseId") %>' />
                             </td>
                             <td>
                                 <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Eval("ImageName") %>' />
                             </td>
                             <td>
                                 <asp:Image ID="Image1" runat="server" Width="70px" Height="70px" ImageUrl='<%#Eval("ImageUrl") %>'></asp:Image> 
                             </td>
                         </tr>
                     </SelectedItemTemplate>
                     </asp:ListView>
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
