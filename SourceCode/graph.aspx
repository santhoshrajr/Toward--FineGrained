<%@ Page Language="C#" MasterPageFile="~/serverhomepage.master" AutoEventWireup="true" CodeFile="graph.aspx.cs" Inherits="graph" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





    <asp:Panel ID="Panel1" runat="server" BorderColor="#0066CC" BorderStyle="Solid" 
        Height="418px" style="margin-left: 314px" Width="816px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="111px" 
            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>Abnormaol</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button4" runat="server" Height="29px" onclick="Button4_Click" 
            Text="Back" Width="111px" BorderStyle="Outset" 
            style="font-family: 'Blackadder ITC'; font-size: large" />
        <br />
        <br />
        <br />
        <br />
        <%--<asp:Image ID="Image2" runat="server" Height="239px" Width="364px" 
            Visible="False" />--%>
            <asp:Panel ID="Panel2" runat="server" Visible="true">
            <asp:GridView ID="GridView1" runat="server" 
                >
            </asp:GridView>
        </asp:Panel>
    </asp:Panel>





</asp:Content>

