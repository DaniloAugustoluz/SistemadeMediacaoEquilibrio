<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ConfirmaMediacao.aspx.cs" Inherits="ConfirmaMediacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 175px;
        }
        .style2
        {
            width: 208px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="identifica_contrato">
    <table style="width: 100%;">
        <tr>
            <td class="style1">
               
                <asp:Label ID="Label2" runat="server" Text="Requerente :"></asp:Label>
               
            </td>
            <td colspan="2">
               
                <asp:Label ID="lblrequerente" runat="server"></asp:Label>
               
            </td>
        </tr>
        <tr>
            <td class="style1">
                
                <asp:Label ID="Label3" runat="server" Text="Acionado :"></asp:Label>
                
            </td>
            <td colspan="2">
                
                <asp:Label ID="lblacionado" runat="server"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="style1">
                
                <asp:Label ID="Label4" runat="server" Text="Data Solicitação:"></asp:Label>
                
            </td>
            <td class="style2">
                
                <asp:TextBox ID="TextBoxDataSol" runat="server" Enabled="False"></asp:TextBox>
                
            </td>
            <td>
                
                Motivação:
                <asp:TextBox ID="TextBoxMotivação" runat="server" Enabled="False"></asp:TextBox>
                
            </td>
        </tr>
    </table>
</div>
 <div id="contrato_requisitante">
     <asp:Literal ID="contrato_equilibrio" runat="server"></asp:Literal>
 </div>
</asp:Content>

