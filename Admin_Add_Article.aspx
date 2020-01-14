<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Add_Article.aspx.cs" Inherits="Admin_Add_Article" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 380px;
        }
        .auto-style2 {
            width: 100%;
            height: 165px;
        }
        .auto-style3 {
            width: 170px;
        }
        .auto-style4 {
            width: 297px;
        }
        .auto-style5 {
            width: 287px;
        }
    </style>

    <form id="form1">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">title</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtTitle" runat="server" Width="234px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">sub_title</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtSub_title" runat="server" Width="234px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">details</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtDetails" runat="server" Height="146px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">image</td>
                    <td class="auto-style4">
                        <input id="File1" class="auto-style5" type="file" runat="server" /></td>
                    <td>&nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnAddArticle" runat="server" Text="Add Article" OnClick="btnAddArticle_Click" CssClass="btn-info btn-group-sm"  />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>

