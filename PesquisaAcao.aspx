<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PesquisaAcao.aspx.cs" Inherits="PesquisaAcao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
        }
        .style3
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style3">
                Pesquisador</td>
            <td colspan="2" class="style3">
                <asp:Label ID="LabelPesquisador" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Eu sou:</td>
            <td colspan="2">
                <asp:RadioButtonList ID="RadioButtonListDemanda" runat="server" 
                    RepeatDirection="Horizontal" Width="70%">
                    <asp:ListItem Value="0">Demandante</asp:ListItem>
                    <asp:ListItem Value="1">Demandado</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButtonPesquisa" runat="server" Height="30px" 
                    ImageUrl="~/Novo_Layout/busca.png" style="text-align: center" 
                    ToolTip="Executa pesquisa solicitada" Width="35px" 
                    onclick="ImageButtonPesquisa_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <asp:TextBox ID="TextBoxAcao" runat="server" Visible="False">I</asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style1" colspan="3">
                <asp:GridView ID="GridViewHistorico" runat="server" BackColor="White" 
                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    GridLines="Horizontal" Width="100%" DataSourceID="ObjectServicos" 
                    Caption="Historico" AllowPaging="True" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridViewHistorico_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="DATA_INICIO" DataFormatString="{0:d}" 
                            HeaderText="Data " />
                        <asp:BoundField DataField="INICIO_TEXTO" HeaderText="Mini Texto" />
                        <asp:BoundField DataField="DESCRICAO" HeaderText="Documento" />
                        <asp:BoundField DataField="CONTEUDO" HeaderText="Inico Conteudo" />
                        <asp:BoundField DataField="DEMANDANTE" HeaderText="Demandante" />
                        <asp:BoundField DataField="DEMANDADO" HeaderText="Demandado" />
                        <asp:BoundField DataField="VALOR_CAUSA" DataFormatString="{0:c}" 
                            HeaderText="Valor Causa" />
                        <asp:BoundField DataField="LINK_VIDEO" HeaderText="Video" />
                        <asp:BoundField DataField="ID_HISTORICO" HeaderText="ID_HISTORICO" 
                            Visible="False" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="3">
                <asp:ObjectDataSource ID="ObjectServicos" runat="server" 
                    SelectMethod="ObterHistorico" TypeName="EquilibrioClasse">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="&quot;&quot;" Name="nome" Type="String" />
                        <asp:Parameter DefaultValue="0" Name="opcao" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

