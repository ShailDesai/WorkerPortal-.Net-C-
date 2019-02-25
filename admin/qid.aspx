<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="qid.aspx.cs" Inherits="qid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
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

     <div class="container" style="background-color:#ffdab9"style="background-color:#ffdab9">
                    <div class="row form-container">

                        <div class="col-md-8 contact-form">
                            <h3>Questions </h3>
                            <form class="ajax-form" id="contactForm" method="post" action="assets/php/contact.php">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"  Text="QUETION ID" ForeColor="White" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtqid" runat="server" class="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtqname" runat="server" class="form-control" Onkeypress="return string(event)" placeholder="QUESTIONS"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="sbtbutton" runat="server"  class="btn btn-default" Text="SUBMIT" OnClick="sbtbutton_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                                </form>
                            </div>
                        </div>
         </div>
</asp:Content>

