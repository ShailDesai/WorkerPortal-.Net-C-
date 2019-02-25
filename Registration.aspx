<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 12px;
        }
        .auto-style4 {
            height: 67px;
        }
        .auto-style5 {
            height: 48px;
        }
        .auto-style6 {
            height: 19px;
        }
        .auto-style10 {
            height: 20px;
        }
        .auto-style11 {
            height: 21px;
        }
        .auto-style12 {
            width: 913px;
        }
        .auto-style13 {
            height: 12px;
            width: 913px;
        }
        .auto-style14 {
            height: 21px;
            width: 913px;
        }
        .auto-style15 {
            height: 48px;
            width: 913px;
        }
        .auto-style16 {
            height: 20px;
            width: 913px;
        }
        .auto-style17 {
            height: 19px;
            width: 913px;
        }
        .auto-style18 {
            height: 67px;
            width: 913px;
        }
        .auto-style19 {
            height: 9px;
            width: 913px;
        }
        .auto-style20 {
            height: 9px;
        }
        .auto-style21 {
            height: 3px;
            width: 913px;
        }
        .auto-style22 {
            height: 3px;
        }
    </style>
     <script>
         history.pushState(null, null, document.title);
         window.addEventListener('popstate', function () {
             history.pushState(null, null, document.title);
         });
</script>
    <script src="assets/js/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <div class='container'>
  <h2> <a href='#' style="margin:auto">REGISTRATION</a></h2>
  <div class='form'>
  
    <table class="auto-style1" >
       

        <tr >
            <td class="auto-style19"></td>
            <td class="auto-style20">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtuserid" runat="server"  CausesValidation="True" Onkeypress="return numeric(event)" Visible="False"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:TextBox ID="txtname" runat="server"    Onkeypress="return string(event)" placeholder="NAME"></asp:TextBox>
            </td>
            <td class="auto-style2">
                </td>
        </tr>
        <tr>
            <td class="auto-style14">
            </td>
            <td class="auto-style11">
                </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:DropDownList ID="DropDownList4" runat="server"  height="40px"  Width="100%">
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Plumber</asp:ListItem>
                    <asp:ListItem>kadiyo</asp:ListItem>
                    <asp:ListItem>Electrician</asp:ListItem>
                    <asp:ListItem>Home cleaner</asp:ListItem>
                    <asp:ListItem>Beautician</asp:ListItem>
                    <asp:ListItem>Computer Repair</asp:ListItem>
                    <asp:ListItem>Pest Controler</asp:ListItem>
                    <asp:ListItem>laundry</asp:ListItem>
                    <asp:ListItem>watchman</asp:ListItem>
                    <asp:ListItem>Driver</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style5">
                </td>
        </tr>
        <tr>
            <td class="auto-style14">
                </td>
            <td class="auto-style11">
                </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtaddress1" runat="server" placeholder="ADDRESS1" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtaddress2" runat="server"  placeholder="ADDRESS2"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList2" runat="server"  class="dropdown" DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="state_id" AutoPostBack="True" height="40px"  placeholder="STATE" Width="100%">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT * FROM [stateid]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList1" runat="server" class="dropdown" DataSourceID="SqlDataSource2" DataTextField="cityname" placeholder="CITY" DataValueField="city_id" AutoPostBack="True" height="40px"  Width="100%">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"  ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT [city_id], [cityname], [stateid] FROM [cityid] WHERE ([stateid] = @stateid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="stateid" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList5" runat="server" class="dropdown" DataSourceID="SqlDataSource4" DataTextField="areaname" placeholder="AREA" DataValueField="areaid" height="40px"  Width="100%">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server"  ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT [areaid], [city_id], [areaname] FROM [Areamaster] WHERE ([city_id] = @city_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="city_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtpincode" runat="server"   Onkeypress="return numeric(event)" placeholder="PINCODE"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3"   runat="server" ControlToValidate="txtpincode" ErrorMessage="6 digit required" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtcontactno" runat="server" Onkeypress="return numeric(event)" placeholder="CONTACT-NO"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcontactno" ErrorMessage="10 Digit required" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtemailid"   runat="server"  placeholder="EMAIL-ID"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemailid" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtusername" runat="server" placeholder="USERNAME" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="PASSWORD"  ></asp:TextBox>
                <asp:PasswordStrength ID="txtpassword_PasswordStrength" runat="server" Enabled="True" TargetControlID="txtpassword">
                </asp:PasswordStrength>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:DropDownList ID="DropDownList3" runat="server"  class="dropdown" DataSourceID="SqlDataSource3" DataTextField="qquestion" DataValueField="question_id" height="40px"  Width="100%">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:workerportal %>" SelectCommand="SELECT * FROM [quetionid]"></asp:SqlDataSource>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtanswer" runat="server"  Onkeypress="return string(event)" placeholder="ANSWER OF ABOVE"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload1" runat="server" Class="dropdown" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label18" runat="server" Text="Label" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" class="btn btn-default" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Larger" NavigateUrl="~/Login.aspx">LOGIN</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                              
                            </div>
                        </div>
                        </div>


</asp:Content>
