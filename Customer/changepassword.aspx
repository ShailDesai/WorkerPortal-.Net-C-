<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 37px;
        }
        .auto-style4 {
            height: 20px;
        }
    </style>
     <script>
         history.pushState(null, null, document.title);
         window.addEventListener('popstate', function () {
             history.pushState(null, null, document.title);
         });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container" style="background-color:#ffdab9" >
                    <div class="row form-container">

                        <div class="col-md-8 contact-form">
                            <h3>CHANGE PASSWORD</h3>
                            <form class="ajax-form" id="contactForm" method="post" action="assets/php/contact.php">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Class="form-control" placeholder="USERNAME"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style4">
                </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtOldPassword" runat="server" Class="form-control" cTextMode="Password" placeholder="OLD PASSWORD">OLD PASSWORD</asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style4">
                </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" Class="form-control" placeholder="NEW PASSWORD">NEW PASSWORD</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style4">
                </td>
            <td class="auto-style4">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server"  Class="form-control" TextMode="Password" placeholder="CONFORM PASSWORD"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Class="form-control" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Not Matched" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" class="btn btn-default" OnClick="BtnSubmit_Click" Text="Update" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                                </form>
                            <div>
                                </div>
                            </div>
                            </div>

</asp:Content>

