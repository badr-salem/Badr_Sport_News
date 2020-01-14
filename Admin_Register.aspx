<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Register.aspx.cs" Inherits="Admin_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 281px;
        }
        .auto-style2 {
            width: 142px;
        }
    </style>

    <form id="form1">
        <div>
            <table style="width: 100%; margin-bottom: 34px;">
                <tr>
                    <td class="auto-style1">UserName</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUN" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUN" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPW" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPW" ControlToValidate="txtCON" ErrorMessage="Passowrd not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Confirm Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCON" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Email</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEM" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEM" ErrorMessage="Not Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnReg" runat="server" Text="ADD USER" OnClick="btnReg_Click" CssClass="btn-success btn-lg" />
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Badr_News_DataBaseConnectionString %>" insertCommand="insert into Users values(@username , @password,@email)" SelectCommand="SELECT * FROM [Users]">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtUN" Name="username" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtPW" Name="password" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtEM" Name="email" PropertyName="Text" />
                            </InsertParameters>

                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>

