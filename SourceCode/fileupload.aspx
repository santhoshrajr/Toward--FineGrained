<%@ Page Language="C#" MasterPageFile="~/dataownersucess.master" AutoEventWireup="true" CodeFile="fileupload.aspx.cs" Inherits="fileupload" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<asp:Panel ID="Panel2" runat="server" BorderColor="#660033" 
    BorderStyle="Groove" Height="185px" style="margin-left: 395px" Width="617px">
    <table class="style1">
        <tr>
            <td>
                File ID</td>
            <td>
                <asp:Label ID="Label4" runat="server" 
                    style="font-family: 'Blackadder ITC'; font-size: x-large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                File Catagory</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="136px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                FileName</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="136px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                File Upload</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="220px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#36B0B6" ForeColor="White" 
                    Height="31px" onclick="Button1_Click" Text="File Upload" Width="140px" />
                    <%--<asp:LinkButton ID="lnkButton" runat="server" BackColor="#36B0B6" ForeColor="White" 
                    Height="31px" onclick="Button1_Click" Text="File Upload" Width="140px" />--%>
                <asp:Label ID="Label3" runat="server" 
                    style="font-family: 'Blackadder ITC'; font-size: x-large"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Panel>
<p>
</p>
<p>
</p>
</asp:Content>

