﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClouldserverLogin.aspx.cs" Inherits="ClouldserverLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 64%;
        height: 84px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
    <asp:Panel ID="Panel1" runat="server" Height="269px" 
        style="margin-left: 323px; font-family: 'Bradley Hand ITC';" Width="652px" 
        BorderColor="Blue" BorderStyle="Inset">
        <br />
       
        <center>
            <asp:Label ID="Label1" runat="server" Text="Cloud Server Login" 
            style="font-size: xx-large; font-family: 'Blackadder ITC'; color: #3366FF"></asp:Label></center>
       
        <br />
     <center>   <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" 
                        style="font-weight: 700; font-family: 'Times New Roman', Times, serif; font-style: italic" 
                        Text="UserName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="157px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" 
                        style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-weight: 700" 
                        Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BorderColor="#0066FF" 
                        BorderStyle="Outset" 
                        style="font-style: italic; color: #0066FF; font-weight: 700" Text="Submit" 
                        Width="139px" onclick="Button1_Click" />
                    <asp:Label ID="Label4" runat="server" 
                        style="font-family: 'Blackadder ITC'; font-size: large; color: #0066FF"></asp:Label>
                </td>
            </tr>
        </table></center>
        <br />
    </asp:Panel>
    <p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

