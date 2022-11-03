<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Pagamento.aspx.cs" Inherits="Pagamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 153px;
            text-align: center;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            width: 153px;
            height: 21px;
        }
        .style4
        {
            text-align: left;
            height: 21px;
        }
        .style6
        {
            width: 153px;
            height: 26px;
            text-align: center;
        }
        .style7
        {
            width: 147px;
            height: 26px;
            text-align: left;
        }
        .style8
        {
            height: 26px;
            width: 613px;
        }
        .style9
        {
            width: 153px;
            height: 23px;
            text-align: center;
        }
        .style10
        {
            text-align: left;
            height: 23px;
        }
        .style11
        {
            text-align: left;
            height: 21px;
        }
        .style12
        {
            width: 153px;
            height: 21px;
            text-align: center;
        }
        .style13
        {
            width: 613px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Serviço Selecionado
            </td>
            <td class="style2" id="LabelServSel">
                <asp:Label ID="Label1" runat="server" Text="Arbitragem"></asp:Label>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Valor do Serviço
            </td>
            <td class="style2" id="LabelValorServ">
                <asp:Label ID="Label2" runat="server" Text="R$ 180,00"></asp:Label>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Opções de Pagamento
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList1" runat="server" style="text-align: center" 
                    Width="100%">
                    <asp:ListItem Value="Débito1">Débito</asp:ListItem>
                    <asp:ListItem Value="Crédito2">Crédito</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Parcelamento
            </td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" 
                    style="text-align: center" Width="121px">
                    <asp:ListItem Value="parcelamento1">1x</asp:ListItem>
                    <asp:ListItem Value="parcelamento2">2x</asp:ListItem>
                    <asp:ListItem Value="parcelamento3">3x</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                Numero do Cartão</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="TextBox4" runat="server" Width="40%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Nome do Cartão</td>
            <td class="style10" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Width="40%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Data de vencimento</td>
            <td class="style11" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" style="text-align: center" 
                    Width="20%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Código de Segurança</td>
            <td class="style2" colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" Width="15%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style11" colspan="2">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" colspan="2" rowspan="2">
                                <asp:ImageButton ID="btnConfirma" runat="server" 
                                    ImageUrl="~/Novo_Layout/ok.png" />
                            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

