<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Objeto.aspx.cs" Inherits="Objeto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        #Select1
        {
            width: 413px;
        }
        .style1
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td class="style1">
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Motivação da ação :"></asp:Label>
            </td>
            <td>
                &nbsp;
                &nbsp;
                <asp:DropDownList ID="ddlMotivacao" runat="server" AutoPostBack="True" 
                    Width="80%">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Requerente :"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:Label ID="lblrequerente" runat="server"></asp:Label>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text="Acionado :"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:Label ID="lblacionado" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="2">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>
</asp:Content>

