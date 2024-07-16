<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_doctor_info.aspx.cs" Inherits="ASP_project_01.admin_doctor_info" EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>



<body>
    <form id="form1" runat="server">
        <div class="container">
        <h1 class="text-center">ALL Registered Doctors</h1>

        <div class="row">
            <div class="col-md-10 mx-auto">
                <asp:GridView ID="CoursesGridView" CssClass="table" runat="server" AutoGenerateColumns="false"  OnRowCommand="CoursesGridView_RowCommand" >
                    <Columns>
                        <asp:BoundField DataField="doctor_id" HeaderText="ID" />
                        <asp:BoundField DataField="doctor_name" HeaderText="Doctor Name" />
                        <asp:BoundField DataField="doctor_number" HeaderText="Phone Number" />
                        <asp:BoundField DataField="doctor_gender" HeaderText="Gender" />
                        <asp:BoundField DataField="doctor_age" HeaderText="Age" />
                        <asp:BoundField DataField="doctor_exp" HeaderText="Expertise" />

                        <asp:TemplateField HeaderText="Actions">
                            
                            <ItemTemplate>   
                                 <asp:LinkButton ID="UpdateLinkButton" class="btn btn-success" CommandName="upd" CommandArgument='<%#Eval("doctor_id") %>' runat="server">Update</asp:LinkButton>
                                <asp:LinkButton ID="DeleteLinkButton" class="btn btn-danger" CommandName="del" CommandArgument='<%#Eval("doctor_id") %>' onclientclick="return confirm('Are you sure to delete?');" runat="server">Delete</asp:LinkButton>
         
                            </ItemTemplate>

                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    </form>


    <script src="Bootstrap/popper.min.js"></script>
    <script src="Bootstrap/jquery-3.2.1.slim.min.js"></script>
    <script src="Bootstrap/bootstrap.min.js"></script>

</body


</html>
