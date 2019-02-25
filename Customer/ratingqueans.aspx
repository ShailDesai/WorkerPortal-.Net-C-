<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="ratingqueans.aspx.cs" Inherits="USER_Default" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 435px;
        }
        .auto-style2 {
            height: 22px;
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
                            <h3>&nbsp;&nbsp; FEEDBACK FORM</h3>
      <form class="ajax-form" id="contactForm" method="post" action="assets/php/contact.php">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
                &nbsp;
                <asp:Label ID="Label9" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
                &nbsp;
                <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
                &nbsp;
                <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="workerdesc" DataValueField="worker_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT [worker_id], [workerdesc] FROM [workerinfo]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="workername" DataValueField="workermobileno">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT workername, workermobileno FROM bookingdata WHERE (customername= @Param1)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label14" Name="Param1" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Question1" class="form-control"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Q1" runat="server" Text="Label" class="form-control"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                 
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="form-control"  RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>  Excellent  </asp:ListItem>
                    <asp:ListItem>  Very Good  </asp:ListItem>
                    <asp:ListItem>  Good  </asp:ListItem>
                    <asp:ListItem>  Poor  </asp:ListItem>
                </asp:RadioButtonList>
                 
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server"  class="form-control" Text="Question2"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Q2" runat="server" class="form-control" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
           <td colspan="4">
                 <asp:RadioButtonList ID="RadioButtonList2" runat="server"  class="form-control" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                    <asp:ListItem>  Excellent   </asp:ListItem>
                    <asp:ListItem>  Very Good  </asp:ListItem>
                    <asp:ListItem>  Good  </asp:ListItem>
                    <asp:ListItem>  Poor  </asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" class="form-control" Text="Question3"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Q3" runat="server" class="form-control" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
<td colspan="4">
                 <asp:RadioButtonList ID="RadioButtonList3" runat="server" class="form-control" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged">
                    <asp:ListItem>  Excellent  </asp:ListItem>
                    <asp:ListItem>  Very Good  </asp:ListItem>
                    <asp:ListItem>  Good  </asp:ListItem>
                    <asp:ListItem>  Poor  </asp:ListItem>
                </asp:RadioButtonList>
            </td>        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" class="form-control" Text="Question4"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Q4" runat="server" class="form-control" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                 <asp:RadioButtonList ID="RadioButtonList4" runat="server" class="form-control" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged">
                    <asp:ListItem>  Excellent  </asp:ListItem>
                    <asp:ListItem>  Very Good  </asp:ListItem>
                    <asp:ListItem>  Good  </asp:ListItem>
                    <asp:ListItem>  Poor  </asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" class="form-control" Text="Question5"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Q5" runat="server" class="form-control" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
<td colspan="4">
                 
                 <asp:RadioButtonList ID="RadioButtonList5" runat="server" class="form-control" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged">
                    <asp:ListItem>  Excellent  </asp:ListItem>
                    <asp:ListItem>  Very Good  </asp:ListItem>
                    <asp:ListItem>  Good  </asp:ListItem>
                    <asp:ListItem>  Poor  </asp:ListItem>
                </asp:RadioButtonList>
                 
            </td>

        </tr>
        <tr>
<td colspan="4">
                 
                 &nbsp;</td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" class="form-control" Text="Total Marks"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmarks" runat="server" class="form-control"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" class="btn btn-default" OnClick="Button1_Click" Text="Grade" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label11" runat="server" Text="Grade" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Btnsubmit" runat="server" class="btn btn-default" Text="Submit" OnClick="Btnsubmit_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                 
                 <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                 
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
   </form>
</div>
</div>
</div>
    </asp:Content>
