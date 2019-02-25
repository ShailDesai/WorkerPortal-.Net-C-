<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="require quetion.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
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
     <div class="container" style="background-color:#ffdab9">
                    <div class="row form-container">

                        <div class="col-md-8 contact-form">
                            <h3>REGISTER HERE AND GET STARTED</h3>
                            <form class="ajax-form" id="contactForm" method="post" action="assets/php/contact.php">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="RATING QUESTION"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="RATING_ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtratingid" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Q1"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtq1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Q2"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtq2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Q3"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtq3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Q4"></asp:Label>
            </td>
            <td id="txt">
                <asp:TextBox ID="txtq4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Q5"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtq5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="TOTAL MARKS"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttotalmarks" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="CUSTOMER_ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcustomerid" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="WORKER_ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtworkerid" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                                </form>
                            </div>
                        </div>
         </div>
</asp:Content>

