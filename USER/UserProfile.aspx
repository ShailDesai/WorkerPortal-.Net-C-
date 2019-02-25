<%@ Page Title="" Language="C#" MasterPageFile="~/USER/MasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="USER_UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style26 {
            width: 20px;
            height: 30px;
        }
        .auto-style29 {
            width: 4px;
            height: 30px;
        }
        .auto-style30 {
            width: 4px;
        }
        .auto-style31 {
            width: 1px;
        }
        .auto-style32 {
            width: 1px;
            height: 30px;
        }
        .auto-style33 {
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label2" runat="server" Text="Welcome :"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="label"></asp:Label>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <FooterTemplate>
                THANKS
            </FooterTemplate>
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                USER PROFILE
            </HeaderTemplate>
            <ItemStyle BackColor="#EFF3FB" />
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style30">Name</td>
                        <td class="auto-style31">:</td>
                        <td class="auto-style33">
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">Address Line1</td>
                        <td class="auto-style31">:</td>
                        <td class="auto-style33">
                            <asp:Label ID="address1Label" runat="server" Text='<%# Eval("address1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">Address Line2</td>
                        <td class="auto-style31">:</td>
                        <td class="auto-style33">
                            <asp:Label ID="address2Label" runat="server" Text='<%# Eval("address2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">Contact no</td>
                        <td class="auto-style31">:</td>
                        <td class="auto-style33">
                            <asp:Label ID="contact_noLabel" runat="server" Text='<%# Eval("contact_no") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">Email-id</td>
                        <td class="auto-style31">:</td>
                        <td class="auto-style33">
                            <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">Image</td>
                        <td class="auto-style32">:</td>
                        <td class="auto-style26">
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">&nbsp;</td>
                        <td class="auto-style31">&nbsp;</td>
                        <td class="auto-style33">&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT [name], [address1], [address2], [contact_no], [email_id], [image] FROM [usermaster] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </p>
</asp:Content>

