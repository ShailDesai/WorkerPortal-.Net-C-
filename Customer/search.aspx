<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="Customer_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    .auto-style2 {
        height: 19px;
    }
        .auto-style3 {
            height: 53px;
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

     <div class="container" >
                    <div class="row form-container" style="background-color:#ffdab9">

                        <div class="col-md-8 contact-form">
                            <h3>SEARCH RESULT</h3>
                            <form class="ajax-form" id="contactForm" method="post" action="assets/php/contact.php">
    <table class="auto-style1" >
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="TYPE OF WORKER:" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Class="form-control" DataSourceID="SqlDataSource3" DataTextField="usertypename" DataValueField="usertypename">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT [usertypename] FROM [usertypemst]"></asp:SqlDataSource>
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
            <td class="auto-style3">
                <asp:Label ID="Label9" runat="server" Text="AREA" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" Class="form-control" DataTextField="areaname" DataValueField="areaid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT [areaid], [areaname] FROM [Areamaster] WHERE ([city_id] = @city_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" Name="city_id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td >
               
                <asp:GridView ID="GridView1" runat="server"    DataSourceID="SqlDataSource2" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="border:double," BackColor="#CCCCCC" BorderColor="#333333" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="500px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("image") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
                            </ItemTemplate>
                            <ControlStyle Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField></asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT name, pincode, contact_no, image, usertype_id FROM usermaster WHERE (area_id = @area_id) AND (contact_no IN (SELECT mobilenumber FROM MiscallData)) AND  contact_no not in (select  workermobileno from bookingdata) and (usertype_id = @Param1)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="area_id" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Param1" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                   
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
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server"  Text="Customr Name" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Class="form-control"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Worker Name" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Class="form-control"></asp:TextBox>
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
                <asp:Label ID="Label5" runat="server" Text="Worker mobile number" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Class="form-control"></asp:TextBox>
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
                <asp:Button ID="Button1" runat="server" class="btn btn-default" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Larger" NavigateUrl="~/Customer/ratingqueans.aspx">FEEDBACK FORM</asp:HyperLink>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
                            <p style="marquee-loop:infinite;marquee-style:slide;color:white;font-size:larger">please provide feedback for tour booked worker which will help them to get better opportunities oin future.link for feedback is given above</p>
</div>

</div>

</div>

</asp:Content>

