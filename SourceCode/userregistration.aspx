<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userregistration.aspx.cs" Inherits="userregistration" Title="Untitled Page" %>

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
<p>
</p>
    <asp:Panel ID="Panel1" runat="server" Height="427px" 
        style="margin-left: 323px; font-family: 'Bradley Hand ITC';" Width="652px" 
        BorderColor="#FF3399" BorderStyle="Inset">
        <br />
       
        
            <center>
                <asp:Label ID="Label1" runat="server" Text="User Registration" 
            style="font-size: xx-large; font-family: 'Blackadder ITC'; color: #3366FF"></asp:Label></center>
       
        <br />
     <center>   <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" 
                        style="font-weight: 700; font-family: 'Times New Roman', Times, serif; font-style: italic" 
                        Text="ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="157px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" 
                        style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-weight: 700" 
                        Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" 
                        style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-weight: 700" 
                        Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="156px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" 
                        style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-weight: 700" 
                        Text="Age"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" 
                        style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-weight: 700" 
                        Text="EmailId"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="27px" Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" 
                        style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-weight: 700" 
                        Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="49px" TextMode="MultiLine" 
                        Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="~/userLogin.aspx" 
                        
                        style="font-weight: 700; font-style: italic; color: #660033; font-size: large; font-family: 'Blackadder ITC';">BackLogin 
                    Page</asp:HyperLink>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" BorderColor="#0066FF" 
                        BorderStyle="Groove" 
                        style="font-style: italic; color: #0066FF; font-weight: 700" Text="Submit" 
                        Width="145px" Height="30px" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label8" runat="server" style="font-family: 'Blackadder ITC'"></asp:Label>
                </td>
            </tr>
        </table></center>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
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
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

