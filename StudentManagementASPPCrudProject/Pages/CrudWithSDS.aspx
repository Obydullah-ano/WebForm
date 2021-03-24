<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="CrudWithSDS.aspx.cs" Inherits="StudentManagementASPPCrudProject.Pages.CrudWithSDS" %>

<%@ Register Src="~/UserControl/SaveStudentUserControl.ascx" TagPrefix="uc1" TagName="SaveStudentUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <br />
    <div class="" style="margin: 10 10 10 10">
         <div class="row">
            <div class="col-md-4 mx-auto table-bordered" style="margin-left:20px">
               <center>
                <h1>Crud With Sql DataSource</h1>
                <div>
                    
                        <img src="../Images/SqlCrudIcon.png" width="100px" height="50px" />                     
                </div>
                   </center>    
            </div>
            <div class="col-md-7">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 mx-auto">
                <div class="col-md-4 mx-auto table-bordered" style="margin-left: 15px; background-color:darksalmon">
                    <uc1:SaveStudentUserControl runat="server" ID="SaveStudentUserControl" />
                </div>

                <div class="col-md-7">
                    <asp:GridView 
                        ID="GridView1" 
                        runat="server" 
                        AutoGenerateColumns="False" 
                        DataKeyNames="Id"
                        DataSourceID="SqlDataSource1" 
                        Width="750px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="false" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:TemplateField HeaderText="StudName" SortExpression="StudName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StudName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StudName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DateOfBirth" SortExpression="DateOfBirth">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DateOfBirth") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("DateOfBirth", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CourseId" SortExpression="CourseId">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CourseId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CourseId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ImageName" SortExpression="ImageName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("ImageName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ImageUrl" SortExpression="ImageUrl">
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Width="70px" Height="70px" ImageUrl='<%# Eval("ImageUrl") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db %>"
                        SelectCommand="SELECT * FROM [Student_tbl]" 
                        DeleteCommand="DELETE FROM [Student_tbl] WHERE [Id] = @Id" 
                        InsertCommand="INSERT INTO [Student_tbl] ([StudName], [Email], [Phone], [DateOfBirth], [CourseId], [ImageName], [ImageUrl]) VALUES (@StudName, @Email, @Phone, @DateOfBirth, @CourseId, @ImageName, @ImageUrl)" 
                        UpdateCommand="UPDATE [Student_tbl] SET [StudName] = @StudName, [Email] = @Email, [Phone] = @Phone, [DateOfBirth] = @DateOfBirth, [CourseId] = @CourseId, [ImageName] = @ImageName, [ImageUrl] = @ImageUrl WHERE [Id] = @Id">
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
                </div>
            </div>
        </div>
    </div>
</asp:Content>
