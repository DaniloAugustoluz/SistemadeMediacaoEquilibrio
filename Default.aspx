<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 476px;
        }
    p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";
	        margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
        }
        .style3
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width: 100%;">
        <tr>
            <td rowspan="5" class="style1">
 
                <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick">
                </asp:Timer>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:Image ID="Image1" runat="server" Height="147px" 
                    ImageUrl="~/Novo_Layout/Cabecalho_equilibrio.png" style="text-align: center" 
                    Width="466px" />
 
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
                <asp:Label ID="LabelData" runat="server" 
                    
                    style="color: #000099; font-size: medium; font-style: italic; font-weight: 700;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="LabelHora" runat="server" 
    style="color: #000099; font-weight: 700; font-size: large"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div id="Navegador1">
        <table style="width: 100%;">
            <tr>
                <td colspan="3" class="style3" style="font-family: 'Bookman Old Style'">
                    <strong style="text-align: center; font-family: monospace; font-weight: bold;">Bem vindos à Equilibrio Paz Social!</strong></td>
            </tr>
            <tr>
                <td colspan="3" class="style3" style="font-family: 'Bookman Old Style'">
                    <strong style="font-family: monospace">Você está no melhor local para conhecer e aprender uma nova e moderna 
                    forma de solucionar seus conflitos</strong></td>
            </tr>
            <tr>
                <td colspan="3" style="font-family: 'Bookman Old Style'">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="text-align: center">
                    &nbsp;
                    <asp:ImageButton ID="btnAcesso" runat="server" 
                        ImageUrl="~/Novo_Layout/adduser.png" onclick="btnAcesso_Click" 
                        style="text-align: center" ToolTip="Iniciar o acesso" />
                    <br />
                    Clique para iniciar</td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
 </asp:Content>
