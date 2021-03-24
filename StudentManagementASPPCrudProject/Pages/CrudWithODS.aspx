<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="CrudWithODS.aspx.cs" Inherits="StudentManagementASPPCrudProject.Pages.CrudWithODS" %>

<%@ Register Src="~/UserControl/SaveStudentUserControl.ascx" TagPrefix="uc1" TagName="SaveStudentUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <br />

    <div class="" style="margin: 10 10 10 10">
        <div class="row">
            <div class="col-md-4 mx-auto table-bordered" style="margin-left: 20px">
                <center>
                <h1>Crud With ODS</h1>
                <div>                    
                        <img src="../Images/object.png" width="100px" height="50px" />            
                                     
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
                    <asp:GridView ID="GridView1"
                        runat="server"
                        DataKeyNames="Id"
                        AutoGenerateColumns="False"
                        DataSourceID="ObjectDataSource1"
                        Width="750px" BackColor="#CCCCFF"
                        BorderColor="#3366CC"
                        BorderStyle="None"
                        BorderWidth="1px"
                        CellPadding="4"
                        OnRowDeleting="GridView1_RowDeleting"
                        OnRowUpdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="false" />
                            <asp:BoundField DataField="Id" HeaderText="ID" SortExpression="Id" ApplyFormatInEditMode="True" />
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
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>

                </div>

            </div>
        </div>
    </div>


    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteStudent" InsertMethod="saveStudent" SelectMethod="GetStudents" TypeName="StudentManagementASPPCrudProject.Models.StudentGateway" UpdateMethod="UpdateStudent">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StudName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="DateOfBirth" Type="DateTime" />
            <asp:Parameter Name="CourseId" Type="Int32" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="ImageUrl" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="StudName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="DateOfBirth" Type="DateTime" />
            <asp:Parameter Name="CourseId" Type="Int32" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="ImageUrl" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
