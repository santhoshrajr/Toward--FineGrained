﻿<%@ Page Language="C#" MasterPageFile="~/dataownersucess.master" AutoEventWireup="true" CodeFile="filedetails.aspx.cs" Inherits="filedetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>





    <asp:Panel ID="Panel1" runat="server" BorderColor="#993366" BorderStyle="Solid" 
        Height="418px" style="margin-left: 314px" Width="616px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
       <center> 
           <asp:Label ID="Label1" runat="server" 
            style="font-size: xx-large; font-family: 'Blackadder ITC'; font-weight: 700; color: #993366" 
            Text=" File Details" ForeColor="#0066FF"></asp:Label></center>
        <br />
        <br />
        <br />
       <center> <asp:GridView ID="GridView1" runat="server" Width="379px" 
            AutoGenerateColumns="False" AutoGenerateDeleteButton="True" CellPadding="4" 
            ForeColor="#333333" GridLines="None" EmptyDataText="No File Uploaded" 
               onrowdeleting="GridView1_RowDeleting">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:TemplateField HeaderText="FileId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FileId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FileId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="FileName" HeaderText="FileName" />
                <asp:BoundField DataField="Filetype" HeaderText="Filetype" />
                <asp:BoundField DataField="Uploadname" HeaderText="Uploadname" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView></center>
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
