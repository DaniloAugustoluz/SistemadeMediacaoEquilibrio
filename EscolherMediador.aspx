<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EscolherMediador.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .auto-style1 {
            width: 136px;
            height: 21px;
        }
        .auto-style2 {
            height: 21px;
        }
        .auto-style3 {
            width: 581px;
        }
        .auto-style4 {
            height: 21px;
            width: 581px;
        }
        .auto-style5 {
            height: 37px;
        }
        .auto-style6 {
            width: 581px;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="Escolha o mediador:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnLoad="DropDownList1_Load" OnPreRender="DropDownList1_Load">
                </asp:DropDownList>
            </td>
            <td class="auto-style5">
                <asp:ObjectDataSource ID="ObjectDataSourceObterMediadorCV" runat="server" SelectMethod="RetornaCvMediador" TypeName="EquilibrioClasse"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                </td>
            <td class="auto-style4">
                </td>
            <td class="auto-style2" align="right">
                <asp:ImageButton ID="ImageButtonContinuar" runat="server" Height="40px" ImageUrl="~/Novo_Layout/direita.png" OnClick="ImageButtonContinuar_Click" Width="40px" />
                </td>
        </tr>
        <tr>
            <td class="style1" colspan="3">
                <asp:Panel ID="PanelExibirCV" runat="server" Visible="False">
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

