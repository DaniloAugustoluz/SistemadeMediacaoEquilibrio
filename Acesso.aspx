<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Acesso.aspx.cs" Inherits="Acesso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {            text-align: center;
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
        }
        .style4
        {
            height: 21px;
        }
        .style6
        {
            height: 26px;
        }
        .style8
        {
            width: 188px;
        }
        .style10
        {
            height: 21px;
            width: 458px;
        }
        .style11
        {
            height: 21px;
            width: 580px;
        }
        .style12
        {
            height: 130px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style2" colspan="3">
                <table style="width:100%;">
                    <tr>
                     <td class="style11">
                            &nbsp;</td>
                        
                     <td class="style4">
                            &nbsp;</td>
                        
                    </tr>
                    <tr>
                     <td class="style4" align="center" colspan="2">
                        <asp:Image ID="Image1" runat="server" ImageAlign="Left" Width="538px"  
                             Heght="400px" ImageUrl="~/Novo_Layout/Cabecalho_equilibrio.png" />
                         <br />
                            <asp:Label ID="LabelAcesso" runat="server" Font-Bold="True" 
                             ForeColor="#4B6C9E"  Font-Size="Small" 
                                
                                Text="A MEDIAÇÃO É UMA FORMA HUMANIZADA DE RESOLVER CONFLITOS, ONDE AS PARTES TOMAM A DECISÃO CONFORME SEUS PRINCÍPIOS E CRENÇAS; MELHORANDO SUAS RELAÇÕES PESSOAIS E COM O MUNDO." 
                                Font-Italic="True" Font-Names="Segoe UI Semibold"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="style12" colspan="2">
                            <br />
                            <br />
                            <asp:ImageButton ID="ImageButtonSolicitarServico" runat="server" ImageUrl="~/Novo_Layout/icons8-adicionar-50.png" OnClick="ImageButtonSolicitarServico_Click" Width="6%" ToolTip="Solicitar Mediação" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1Cliente" runat="server" 
                    ImageUrl="~/Novo_Layout/icons8-entrar-50.png" 
                    onclick="ImageButton1Cliente_Click" Height="68px" Width="6%" ToolTip="Acessar" />
                            </td>
                    </tr>
                    </table>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2" align="left">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" 
                                    Text="Por favor , digite seus dados de acesso e em seguida será direcionado a página."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" colspan="2">
                                E-mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtemail" runat="server" Width="68%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" align="left" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Senha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtsenha" runat="server" TextMode="Password" Width="198px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td style="text-align: center" align="left">
                                <asp:ImageButton ID="btnConfirma" runat="server" 
                                    ImageUrl="~/Novo_Layout/ok.png" onclick="btnConfirma_Click" 
                                    style="text-align: center" Visible="False" ImageAlign="Left" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="text-align: center">
                 &nbsp;</td>
            <td style="text-align: center">
                 <asp:ImageButton ID="btnSair" runat="server" 
                     ImageUrl="~/Novo_Layout/sair.png" ImageAlign="Right" 
                     onclick="btnSair_Click" Width="50px" />
             </td>
        </tr>
    </table>
</asp:Content>

