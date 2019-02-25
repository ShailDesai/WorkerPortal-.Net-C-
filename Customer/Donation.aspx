<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 159px;
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
  
    <div style="border:dotted ;padding:inherit;  ">
        <p style="font-family:Calibri;font-size:xx-large; color:ghostwhite;font-synthesis:weight">This donated money will be used for Creating Opprtunities of employment for uneducated people </p>
        <p style="font-family:Calibri;font-size:large; color:navajowhite">Following are the benifits which will be provided to them through your donations</p>
        <ol style="font-family:Calibri;font-size:large; color:black">
            <li>Education will be provided to here childrens as per their grade of work</li>
            <li>They will be rewareded for better work and customer feedback</li>
            <li>They will be educated about the benifits of joining with worker portal </li>
            <li>They will be guded towards different NGOs for there betterment</li>
            <li>Working experience letter will be provided to them by company</li>
            <li>this donation will help us for marketing them and knowing about there quality</li>
        </ol>
    </div>
    

    <div style="font-family:Calibri;font-size:large; color:darkslategrey">PLEASE DONATE SOME AMOUNT FOR WORKERS</div>
   <div style="margin-top:auto; width: 685px;">  
    <form runat="server">
        
         
         <table class="auto-style1">
           <tr>
               <td class="auto-style2">
               <asp:Label ID="Label1" runat="server" Text="Donar's name" Font-Bold="True" Font-Size="Large"></asp:Label></td>
               <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
           </tr>
           <tr>
              <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Donating Amount" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
               <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
           </tr>
             <tr>
                 <td>
                 <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                     </td>
             </tr>
          
             <tr>
                 <td>
                     <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> &nbsp;</td>
                
             </tr>
          
           </table>
            <p style="font-family:Calibri;font-size:large; color:navajowhite">After submitting your details please click on donate button of paypal given below </p>
            </form>
    </div>
  <div style="height:200px; width:300px; position:relative; margin-top:auto; margin-left:250px; top: -1px; left: 0px;">  
        <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top" style="height: 282px; width: 300px">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="5CKAVQMMN2KZ6">
<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" style="width: 182px">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>


       </div>

      

</form>

     
     
   


</asp:Content>

