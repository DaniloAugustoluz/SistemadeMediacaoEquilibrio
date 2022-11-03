<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Agendamento.aspx.cs" Inherits="Agendamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 357px;
        }
        .style2
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                Serviços</td>
            <td class="style2">
                <asp:DropDownList ID="DropDownServico" runat="server" Width="100%" 
                    AutoPostBack="True" 
                    onselectedindexchanged="DropDownServico_SelectedIndexChanged">
                    <asp:ListItem Value="1">Arbitragem</asp:ListItem>
                    <asp:ListItem Value="2">Mediação</asp:ListItem>
                    <asp:ListItem Value="3">Conciliação</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Lista de Preços</td>
            <td class="style2" colspan="2">
                <asp:GridView ID="GridViewPrecos" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" GridLines="Horizontal" Width="100%" 
                    DataSourceID="ObjVALORES" 
                    onselectedindexchanged="GridViewPrecos_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField HeaderText="Valor Presencial" DataField="VALOR_PRESENCIAL" 
                            DataFormatString="{0:C}" />
                        <asp:BoundField HeaderText="Valor  Atendimento Remoto " 
                            DataField="VALOR_REMOTO" DataFormatString="{0:C}" />
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
            <td class="style1">
                Concordância</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" 
                    Text="Sheila, aqui vão os termos de aceite do serviço"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:ObjectDataSource ID="ObjVALORES" runat="server" 
                    SelectMethod="ObterValorServico" TypeName="EquilibrioClasse">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="id_servico" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="style2">
                                <asp:ImageButton ID="btnConfirma" runat="server" 
                                    ImageUrl="~/Novo_Layout/ok.png"  
                                    style="text-align: center" Visible="False" onclick="btnConfirma_Click" />
                            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

