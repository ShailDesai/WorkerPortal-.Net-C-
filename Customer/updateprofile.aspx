<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="updateprofile.aspx.cs" Inherits="uodate_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 33px;
    }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 19px;
        }
        .auto-style5 {
            height: 33px;
            width: 19px;
        }
        .auto-style6 {
            height: 20px;
            width: 19px;
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
                            <h3>UPDATE PROFILE</h3>
                            <form class="ajax-form" id="contactForm" method="post" action="assets/php/contact.php">
    <table class="auto-style1">
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="txtUserName" runat="server" Class="form-control">USERNAME</asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="txtadd1" runat="server" Class="form-control" >ADDRESS LINE 2</asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="txtadd2" runat="server" Class="form-control" >ADDRESS LINE 1</asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Class="form-control" DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="state_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT * FROM [stateid]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Class="form-control" DataSourceID="SqlDataSource2" DataTextField="cityname" DataValueField="city_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT * FROM [cityid]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="txtpincode" runat="server" Class="form-control">PINCODE</asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="txtcontactno" runat="server" Class="form-control">CONTAC_NO</asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" Class="form-control" DataSourceID="SqlDataSource3" DataTextField="qquestion" DataValueField="question_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT * FROM [quetionid]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtans" runat="server" Class="form-control">ANSWER</asp:TextBox>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style6">
        </td>
        <td class="auto-style3">
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style2">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:Label ID="Label12" runat="server" Text="Label" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server"  class="btn btn-default" OnClick="Button1_Click" Text="Submit" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
                                </form>
                            </div>
                        </div>
         </div>
</asp:Content>

