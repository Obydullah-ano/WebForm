<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SaveStudentUserControl.ascx.cs" Inherits="StudentManagementASPPCrudProject.UserControl.SaveStudentUserControl" %>
<asp:HiddenField ID="HiddenFieldImageName" runat="server" />
<asp:HiddenField ID="HiddenFieldImagUrl" runat="server" />
<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
<div class="container">
    <div class="row">
        <div class="col-md-12 mx-auto">
            <%-- <div class="col-md-3"></div>--%>
            <div class="col-md-5 mx-auto table-borderd">
                <div class="card" style="padding: 10px">
                    <div class="card-body">
                        <div class="row">
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Student Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtStudName" CssClass="form-control" runat="server" placeholder="User Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvtxtStudName" runat="server" ErrorMessage="Student name is required" ControlToValidate="txtStudName" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                                <label>Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Email Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvtxtEmail" runat="server" ErrorMessage="Email address is required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revtxtConfirmEmail" runat="server" ErrorMessage="Write the mail Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                                <label>Confirm Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtConfirmEmail" CssClass="form-control" runat="server" placeholder="Confirm Email Address"></asp:TextBox>
                                    <asp:CompareValidator ID="cvtxtConfirmEmail" runat="server" ErrorMessage="Email Address does not match" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" ForeColor="Red"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="rfvConfirmEmail" runat="server" ErrorMessage="Confirm Email Address is required" ControlToValidate="txtConfirmEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <label>Phone Number</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" placeholder="Enter your Phone Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvtxtPhone" runat="server" ErrorMessage="Phone number is required" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                                <label>Date Of Brith</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtDatePicker" runat="server"></asp:TextBox>
                                    <asp:ImageButton ID="btnImgShowHide" runat="server" Height="21px"
                                        ImageUrl="~/Images/calendar.jpg" Width="45px" CausesValidation="false" OnClick="btnImgShowHide_Click" />
                                    <asp:Calendar ID="clnDateOfBirth" runat="server" OnSelectionChanged="clnDateOfBirth_SelectionChanged"></asp:Calendar>
                                    <asp:RequiredFieldValidator ID="rfvtxtDatePicker" runat="server" ErrorMessage="Date is required" ControlToValidate="txtDatePicker" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <label>Course Name</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlCourseName" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:Image ID="Image1" runat="server" CssClass="img" Width="100px" />
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:Button ID="btnView" runat="server" Text="View Image" CausesValidation="false" OnClick="btnView_Click" />
                                </div>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                <div class="form-group">
                                    <asp:Button ID="btnSaveStudent" runat="server" CssClass="btn btn-success btn-block btn-lg" Text="Save Student" OnClick="btnSaveStudent_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-7">
            </div>
        </div>


    </div>
</div>









