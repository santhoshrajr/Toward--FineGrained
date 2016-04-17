<%@ Page Language="C#" MasterPageFile="~/serverhomepage.master" AutoEventWireup="true" CodeFile="sreversucesspage.aspx.cs" Inherits="sreversucesspage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <asp:Panel ID="Panel1" runat="server" BorderColor="#990099" BorderStyle="Solid" 
        Height="559px" style="margin-left: 314px" Width="701px">
      <br />  <asp:Button ID="Button1" runat="server" Text="Collect Performance Data" 
            BackColor="#993399" ForeColor="White" Height="20px" Width="174px" 
            onclick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <asp:GridView ID="GridView1" runat="server" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" BackColor="#993399" ForeColor="White" 
            Height="20px" Text="Assemble Performance Data" Width="180px" 
            onclick="Button2_Click" />
        <br />
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" BackColor="#993399" ForeColor="White" 
            Height="20px" Text="Diagnoce" Width="172px" onclick="Button3_Click" />
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
</asp:Content>

