<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CompanyLogin.aspx.cs" Inherits="Company_CompanyLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 47px;
        }
        .auto-style3 {
            width: 47px;
            height: 40px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            width: 47px;
            height: 12px;
        }
        .auto-style6 {
            height: 12px;
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
     <div class='container'>
  <h2><a href='#'style="margin:auto"> COMPANY REGISTER HERE</a></h2>
  <div class='form'>
   
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" oplaceholder="COMPANY ID" Visible="False" >COMPANY ID</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="COMPANY NAME" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"  DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="state_id" Height="40px" Width="100%">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT * FROM [stateid]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server"   TextMode="Password" placeholder="PASSWORD"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server"  class="btn btn-default" OnClick="Button1_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Larger" NavigateUrl="~/Login.aspx">LOGIN</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                              
</div>
</div>

</asp:Content>

