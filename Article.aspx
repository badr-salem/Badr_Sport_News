<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Article.aspx.cs" Inherits="Article" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="s" class="jumbotron text-center" runat="server">

            
            </div>
<br />
    <hr />

    <div id="comments1" runat="server">

        <h1>The Comments</h1>
        <br />
        <div id="comments" runat="server">

        </div>
        </div>
        <br />
            <br />
    <h3>Write Your Comment</h3>
        <br />

        <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Name : 
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter Your Name !" ForeColor="Red"></asp:RequiredFieldValidator>
      </label>
      <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Your Comment : 
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtComment" ErrorMessage="Please Enter Your Comment !" ForeColor="Red"></asp:RequiredFieldValidator>
      </label>
      <asp:TextBox ID="txtComment" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
  </div>
            <asp:Button ID="btnAddComment" runat="server" Text="Send Comment" CssClass="btn btn-outline-primary" OnClick="btnAddComment_Click"  />
  
</form>
        
</asp:Content>

