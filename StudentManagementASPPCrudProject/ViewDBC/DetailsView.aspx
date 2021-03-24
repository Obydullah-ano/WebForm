<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="DetailsView.aspx.cs" Inherits="StudentManagementASPPCrudProject.ViewDBC.DetailsView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
     <div class="" style="margin: 10 10 10 10">
        <div class="row">
            <div class="col-md-12 mx-auto table-bordered" style="margin-left: 20px">
                <center>
                <h1> Show DetailView Data Control</h1>
               
                </center>
            </div>
            <div class="col-md-12">
            </div>
        </div>
        <div class="row">
            <center>
                 <div class="col-md-12 mx-auto">
                 <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="426px" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#66FF99" BorderStyle="None" CellSpacing="2">
                    <EditRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:TemplateField HeaderText="StudName" SortExpression="StudName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StudName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StudName") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("StudName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DateOfBirth" SortExpression="DateOfBirth">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DateOfBirth") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DateOfBirth") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("DateOfBirth") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CourseId" SortExpression="CourseId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CourseId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CourseId") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("CourseId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ImageName" SortExpression="ImageName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("ImageName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ImageUrl" SortExpression="ImageUrl">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Width="70px" Height="70px" ImageUrl='<%#Eval("ImageUrl") %>'></asp:Image>                               
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                     <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
            </div>
            </center>
           
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Student_tbl]" DeleteCommand="DELETE FROM [Student_tbl] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Student_tbl] ([StudName], [Email], [Phone], [DateOfBirth], [CourseId], [ImageName], [ImageUrl]) VALUES (@StudName, @Email, @Phone, @DateOfBirth, @CourseId, @ImageName, @ImageUrl)" UpdateCommand="UPDATE [Student_tbl] SET [StudName] = @StudName, [Email] = @Email, [Phone] = @Phone, [DateOfBirth] = @DateOfBirth, [CourseId] = @CourseId, [ImageName] = @ImageName, [ImageUrl] = @ImageUrl WHERE [Id] = @Id">
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
