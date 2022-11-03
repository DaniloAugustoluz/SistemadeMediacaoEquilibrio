<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="cadastroinicial.aspx.cs" Inherits="cadastroinicial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 86px;
        }
        .style2
        {
            width: 86px;
            height: 44px;
        }
        .style3
        {
            height: 44px;
        }
        .style4
        {
            width: 86px;
            height: 15px;
        }
        .style5
        {
            height: 15px;
        }
        .style6
        {
            width: 86px;
            height: 29px;
        }
        .style7
        {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div  "dados">
    <table style="width: 100%;">
        <tr>
            <td class="style2" align="left" 
                style="font-family: Arial, Helvetica, sans-serif">
                <h1 style="font-size: x-large; color: #000000;">
                    &nbsp;&nbsp;</h1></td>
            <td align="left" class="style3" 
                style="font-family: 'Times New Roman', Times, serif; color: #000000;">
                <h1 align=" " style="font-family: Arial, Helvetica, sans-serif; color: #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                CADASTRO</h1></td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" 
                style="color: #000000; font-family: Arial, Helvetica, sans-serif">
                &nbsp;Nome:</td>
           
            <td>
                 
                <asp:TextBox ID="TextBoxNome" runat="server" placeholder="Digite seu nome" 
                    MaxLength="50" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" 
                style="color: #000000; font-family: Arial, Helvetica, sans-serif">
                Telefone:</td>
             
            <td>
             
                <asp:TextBox ID="TextBoxtelefone" runat="server" 
                    placeholder="Digite seu telefone" MaxLength="14" Width="250px" 
                    Height="25px"></asp:TextBox>
            </td>
       
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" 
                style="color: #000000; font-family: Arial, Helvetica, sans-serif">
                Email:</td>
           
            <td class="style7">
                
                <asp:TextBox ID="TextBoxEmail" runat="server" placeholder="Digite seu email" 
                    MaxLength="80" Width="250px" 
                    Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" 
                style="font-family: Arial, Helvetica, sans-serif; color: #000000">
                Senha:</td>
            
            <td>
                
                <asp:TextBox ID="TextBoxSenha" runat="server" placeholder="Digite sua senha" 
                    MaxLength="10" Width="150px" 
                    Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" 
                style="font-family: Arial, Helvetica, sans-serif; color: #000000">
                Confirmar Senha:</td>
            
            <td>
                 
                <asp:TextBox ID="TextBoxConfSenha" runat="server"  
                    placeholder="Digite sua senha" MaxLength="10" Width="150px" 
                    Height="25px"></asp:TextBox>
            
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" 
                style="font-family: Arial, Helvetica, sans-serif; color: #000000">
                CPF:</td>
            <td>
                
                <asp:TextBox ID="TextBoxCPF" runat="server" placeholder="Digite seu CPF" 
                    MaxLength="14" Width="150px" 
                    Height="25px"></asp:TextBox>
           
            </td>
        
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
    <table style="width: 100%;">
        <tr>
            <td>
                &nbsp;
            </td>
            <td rowspan="2">
                &nbsp;
                &nbsp;
                &nbsp;
                <asp:ImageButton ID="btnConfirma" runat="server" ImageAlign="Right" 
                    ImageUrl="~/Novo_Layout/ok.png" onclick="btnConfirma_Click1" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        </table>
            </td>
        </tr>
    </table>
</div>
<div "menu">
</div>
</asp:Content>

