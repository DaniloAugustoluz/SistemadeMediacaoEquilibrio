<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MenuEquilibrio.aspx.cs" Inherits="MenuEquilibrio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 210px;
        }
        .style2
        {
            width: 253px;
        }
        .style3
        {
            width: 222px;
        }
        .style4
        {
            width: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<table width="100%">
    <tr>
        <td class="style1">
            &nbsp;
        </td>
        <td class="style2">
            &nbsp;
        </td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" align="center">
            <asp:ImageButton ID="ImageButtonConfigurador" runat="server" 
                ImageUrl="~/Novo_Layout/engrenagem.png" 
                onload="ImageButtonConfigurador_Load" 
                onclick="ImageButtonConfigurador_Click" Height="120px" Width="120px" />
        </td>
        <td class="style2" align="center">
            <asp:ImageButton ID="ImageButtonColaborador" runat="server" 
                ImageUrl="~/Novo_Layout/usuarios.png" 
                onclick="ImageButtonColaborador_Click" 
                onload="ImageButtonColaborador_Load" Height="120px" Width="120px" 
                ImageAlign="Middle" />
        </td>
        <td align="center" class="style3">
            <asp:ImageButton ID="ImageButtonAgenda0" runat="server" 
                ImageUrl="~/Novo_Layout/TratarDocumento.jpg" 
                onclick="ImageButtonAgenda_Click" Height="120px" Width="120px" />
        </td>
        <td class="style4">
            &nbsp;</td>
        <td align="center">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" 
                ImageUrl="~/Novo_Layout/curriculo-e-cv.png" onclick="ImageButton1_Click" 
                Width="120px" />
        </td>
    </tr>
    <tr>
        <td class="style1" align="center" bgcolor="#4B6C9E">
            &nbsp;<asp:Label ID="LabelDescritivo0" runat="server" Text="Configurador" 
                Font-Bold="True" ForeColor="Black"></asp:Label>
        </td>
        <td style="text-align: center; margin-left: 200px;" class="style2" 
            bgcolor="#4B6C9E">
            <asp:Label ID="LabelDescritivo" runat="server" Text="Cad.Colaborador" 
                Font-Bold="True" ForeColor="Black"></asp:Label>
            </td>
        <td style="text-align: center; margin-left: 200px;" class="style3" 
            bgcolor="#4B6C9E">
            <asp:Label ID="LabelDescritivo1" runat="server" Text="Cad.Documento" 
                Font-Bold="True" ForeColor="Black"></asp:Label>
            </td>
        <td style="text-align: center; margin-left: 200px;" class="style4">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;" bgcolor="#4B6C9E">
            <asp:Label ID="LabelAdionaArquivos" runat="server" Text="Adicionar Arquivos" 
                Font-Bold="True" ForeColor="Black"></asp:Label>
            </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;" class="style2">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;" class="style3">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;" class="style4">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;" class="style2">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;" class="style3">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;" class="style4">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" align="center">
            <asp:ImageButton ID="ImageButtonAlocaMediador" runat="server" 
                ImageUrl="~/Novo_Layout/calendario.png" 
                onclick="ImageButtonAlocaMediador_Click" Height="120px" Width="120px" />
        </td>
        <td style="text-align: center; margin-left: 200px;" class="style2">
            <asp:ImageButton ID="ImageButtonAponta" runat="server" 
                ImageUrl="~/Novo_Layout/AgendaDiaria.png" Height="120px" Width="120px" 
                onclick="ImageButtonAponta_Click" />
        </td>
        <td style="text-align: center; margin-left: 200px;" class="style3">
            <asp:Label ID="LabelInformacao" runat="server" Font-Bold="True" 
                ForeColor="Black"></asp:Label>
        </td>
        <td style="text-align: center; margin-left: 200px;" class="style4">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;" align="right">
            <asp:ImageButton ID="ImageButtonSAIR" runat="server" 
                ImageUrl="~/Novo_Layout/Sair.jpg" onclick="ImageButtonSAIR_Click" 
                Height="40px" Width="40px" ImageAlign="Right" />
            </td>
    </tr>
    <tr>
        <td class="style1" align="center" bgcolor="#4B6C9E">
            <asp:Label ID="LabelDescritivo2" runat="server" Text="Agenda Administrativa" 
                Font-Bold="True" ForeColor="Black"></asp:Label>
            </td>
        <td style="text-align: center; margin-left: 200px;" class="style2" 
            bgcolor="#4B6C9E">
            <asp:Label ID="LabelDescritivo3" runat="server" Text="Agenda Trabalho" 
                Font-Bold="True" ForeColor="Black"></asp:Label>
            </td>
        <td style="text-align: center; margin-left: 200px;" class="style3">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;" class="style4">
            &nbsp;</td>
        <td style="text-align: center; margin-left: 200px;">
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>

