<%@ Page Language="C#"  MasterPageFile="~/Company/MasterPage.master" AutoEventWireup="true"  CodeFile="View.aspx.cs" Inherits="Company_View" %>


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
<asp:content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
     <div class="container" style="background-color:#ffdab9">
                    <div class="row form-container">

                        <div class="col-md-8 contact-form">
                            <h3>YOUR REQUIRMENT IS HERE</h3>
                            <form class="ajax-form" id="contactForm" method="post" >
   
    <div>
        <asp:TextBox ID="TextBox1" runat="server" CLASS="form-control" placeholder="REQUIRD WORKER"></asp:TextBox>
        <br />
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="rid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1072px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="rid" HeaderText="rid" ReadOnly="True" SortExpression="rid" />
                <asp:BoundField DataField="rdate" HeaderText="rdate" SortExpression="rdate" />
                <asp:BoundField DataField="TotalMarks" HeaderText="TotalMarks" SortExpression="TotalMarks" />
                <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                <asp:BoundField DataField="WorkerId" HeaderText="WorkerId" SortExpression="WorkerId" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="usertypename" HeaderText="usertypename" SortExpression="usertypename" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text=" To Print this page click on below button "></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-default" Text="PRINT THIS PAGE" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT TOP (@Param1) ratingtable.rid, ratingtable.rdate, ratingtable.CustomerId, ratingtable.TotalMarks, ratingtable.Grade, ratingtable.WorkerId, usermaster.name, usertypemst.usertypename FROM ratingtable INNER JOIN usermaster ON ratingtable.WorkerId = usermaster.contact_no INNER JOIN usertypemst ON ratingtable.CustomerId = usertypemst.usertype_id ORDER BY ratingtable.TotalMarks DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="Int16" Name="Param1" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>

         </div>
    </form>
                            </div>
                        </div>
         </div>
</body>
</html>
      </asp:content>


