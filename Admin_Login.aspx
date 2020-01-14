<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" >
       


        <div class="row">
                    <div class="col-md-4 pt-3">
</div>

        <div class="col-md-4 pt-3">
          <div class="card">
           
            <div class="card-body">

                <table style="width:42%;">
            <tr>
                <td>user_name</td>
                <td>
                    <asp:TextBox ID="txtUN" runat="server" CssClass="mr-0" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>password</td>
                <td>
                    <asp:TextBox ID="txtPW" runat="server" TextMode="Password" CssClass="mr-0" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button CssClass="btn-outline-primary" ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
              
            </div>
          </div>
        </div>
            </div>
       
    </form>

</asp:Content>

