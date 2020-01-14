<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Settings.aspx.cs" Inherits="Admin_Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
        <div class="col-md-3">
            <asp:Button CssClass="btn-secondary btn-lg" runat="server" Text="Add User" ID="btnAddUser" OnClick="btnAddUser_Click" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="btnAddArticle" runat="server" Text="Add Article" CssClass="btn-info btn-lg" OnClick="btnAddArticle_Click" />
        </div>
         <div class="col-md-3">
            <asp:Button ID="btnEdit" runat="server" Text="Edit Articles" CssClass="btn-primary btn-lg" OnClick="btnEdit_Click" />
        </div>
        <div class="col-md-3">
            <asp:Button ID="btnBack" runat="server" Text="Back to WebSite" CssClass="btn-success btn-lg" OnClick="btnBack_Click" />
        </div>
    </div>

</asp:Content>

