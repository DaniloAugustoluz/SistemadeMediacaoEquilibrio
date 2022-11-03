<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Aviso.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
        .auto-style4 {
            height: 21px;
            width: 349px;
        }
        .auto-style5 {
            width: 349px;
        }
        .auto-style6 {
            height: 21px;
            width: 378px;
        }
        .auto-style7 {
            width: 378px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style7" align="center" rowspan="3">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Novo_Layout/logo_equilibrio.png" Width="100%" />
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="LabelTitulo" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Bahnschrift Light" Text="OBRIGADO POR REALIZAR SUA SOLICITAÇÃO" 
                    ForeColor="#4B6C9E"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="LabelMensagem" runat="server" Font-Bold="True" 
                    ForeColor="#4B6C9E"></asp:Label>
            </td>
            <td class="auto-style1" align="center">
                <asp:ImageButton ID="ImageButtonSair" runat="server" 
                    ImageUrl="~/Novo_Layout/botaoSair.png" onclick="ImageButton1_Click" 
                    Width="50%" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

