<%@ Page Language="C#" MasterPageFile="~/userhomepa.master" AutoEventWireup="true" CodeFile="filedownload.aspx.cs" Inherits="filedownload" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="#993366" BorderStyle="Solid" 
        Height="418px" style="margin-left: 314px" Width="616px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <center>
            <asp:Label ID="Label1" runat="server" 
            style="font-size: xx-large; font-family: 'Blackadder ITC'; font-weight: 700; color: #993366" 
            Text=" File Download" ForeColor="#0066FF"></asp:Label>
        </center>
        <br />
        <br />
        <br />
        <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="fileid" onrowcommand="gvDetails_RowCommand" 
            onselectedindexchanged="gvDetails_SelectedIndexChanged1" Width="307px">
            <HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
            <Columns>
                <asp:ButtonField CommandName="dwn" HeaderText="Download" Text="Click Here.!" />
                <asp:BoundField DataField="FileId" HeaderText="FileId" />
                <asp:TemplateField HeaderText="FileName">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("FileName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FileName") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>

