<%@ Page Title="" Language="C#" MasterPageFile="~/Company/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 97px;
        }
        .auto-style2 {
            width: 284px;
        }
        .auto-style3 {
            width: 5px;
        }
        .auto-style4 {
            width: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container" >
                    <div class="row form-container" style="background-color:#ffdab9">
                        
                        <div class="col-md-8 contact-form">
                            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ENTER&nbsp; YOUR REQUIERMNET&nbsp;</h3>
                            <form class="ajax-form" id="contactForm" method="post" action="assets/php/contact.php">
     <table class="auto-style1">
        <tr>
            <td class="auto-style2">
               
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="payid" runat="server" class="form-control" placeholder="payment ID"  Height="32px" Width="645px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="paydate" runat="server" class="form-control" placeholder="payment Date" Height="32px" Width="645px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
              
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtcmpname" runat="server" class="form-control"  placeholder="Company name" Height="32px" Width="645px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" class="form-control" DataTextField="usertypename" DataValueField="usertype_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT * FROM [usertypemst]"></asp:SqlDataSource>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="reqwrk" runat="server" AutoPostBack="True" class="form-control" OnTextChanged="reqwrk_TextChanged" placeholder="Total Required Worker" Height="29px" Width="645px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="paywage" runat="server" class="form-control" placeholder="total payble amount" Height="32px" Width="645px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
               
                <asp:Label ID="Label10" runat="server" Text="YOUR A/C no"  Width="200px" Font-Bold="True" Font-Size="Large" ></asp:Label>
                
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Comapany account number" Height="32px" Width="645px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
               
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label9" runat="server" Text="Transfer to A/C"  Width="200px" Font-Bold="True" Font-Size="Large" ></asp:Label>
                
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="Transfertotxt" runat="server" class="form-control" AutoPostBack="True" Enabled="False" Height="32px" Width="660px" >120410116025</asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                <br />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Btnsbt" runat="server" Height="27px" OnClick="Btnsbt_Click" Text="Submit" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>

                                
                                </form>
                            </div>
                        </div>
         </div>
</asp:Content>

