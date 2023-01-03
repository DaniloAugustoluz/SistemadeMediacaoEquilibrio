<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AgendaDiaria.aspx.cs" Inherits="AgendaDiaria" %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000099;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="text-align: center">
                Conciliador</td>
            <td style="text-align: center">
                <asp:DropDownList ID="DropDownListMediador" runat="server" AutoPostBack="True" 
                    Height="16px" 
                    onselectedindexchanged="DropDownListMediador_SelectedIndexChanged" 
                    Width="238px">
                    <asp:ListItem Value="0">&lt;&lt; Selecione &gt;&gt;</asp:ListItem>
                    <asp:ListItem Value="7">Angelica</asp:ListItem>
                    <asp:ListItem Value="6">Zuleica</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="ButtonAgenda" runat="server" Text="Agenda" 
                    onclick="ButtonAgenda_Click" style="color: #000099" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="ButtonAtendimento" runat="server" Text="Atendimento" 
                    onclick="ButtonAtendimento_Click" style="color: #000099" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="ButtonResultado" runat="server" Text="Resultado" 
                    style="color: #000099" />
            </td>
            <td style="text-align: center">
                &nbsp;</td>
            <td class="style1">
                <strong style="text-align: center">Menu</strong></td>
        </tr>
        <tr>
            <td colspan="4" rowspan="2">
                <asp:Panel ID="PanelAgenda" runat="server" Width="100%">
                    <table style="width:100%;">
                        <tr>
                            <td style="text-align: center">
                                <asp:RadioButton ID="RadioButtonAtual" runat="server" 
                                    Text="Agenda Atual" AutoPostBack="True" 
                                    oncheckedchanged="RadioButtonAtual_CheckedChanged" Enabled="False" />
                            </td>
                            <td style="text-align: center">
                                <asp:RadioButton ID="RadioButtonEmAndamento" runat="server" 
                                    Text="Em Andamento" AutoPostBack="True" 
                                    oncheckedchanged="RadioButtonEmAndamento_CheckedChanged" Enabled="False" />
                            </td>
                            <td style="text-align: center">
                                <asp:RadioButton ID="RadioButtonEncerrado" runat="server" Text="Encerrados" 
                                    AutoPostBack="True" oncheckedchanged="RadioButtonEncerrado_CheckedChanged" 
                                    Enabled="False" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ObjectDataSource ID="ObjectDSAgenda" runat="server" 
                                    onselecting="ObjectDSAgenda_Selecting" 
                                    TypeName="EquilibrioClasse" SelectMethod="ObterAgendaMediador">
                                    <SelectParameters>
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter DefaultValue="0" Name="tipo_historico" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                            <td>
                                <asp:ObjectDataSource ID="ObjectDSDocumento" runat="server" 
                                    SelectMethod="ObterDocumentos" TypeName="EquilibrioClasse">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="Conciliação" Name="uso" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxAcao" runat="server" Height="16px" Width="16px" 
                                    Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:GridView ID="GridViewAgenda1" runat="server" BackColor="White" 
                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                    GridLines="Horizontal" Width="100%" AllowPaging="True" AllowSorting="True" 
                                    AutoGenerateColumns="False" DataSourceID="ObjectDSAgenda" PageSize="5" 
                                    onselectedindexchanged="GridViewAgenda1_SelectedIndexChanged1">
                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                    <Columns>
                                        <asp:BoundField DataField="ID_SOLICITACAO" HeaderText="ID_SOLICITACAO" />
                                        <asp:BoundField DataField="DATA_SOLICITACAO" HeaderText="DATA_SOLICITACAO" SortExpression="DATA_SOLICITACAO" />
                                        <asp:BoundField DataField="MODALIDADE" HeaderText="MODALIDADE" SortExpression="MODALIDADE" />
                                        <asp:BoundField DataField="TIPO_HISTORICO" HeaderText="TIPO_HISTORICO" SortExpression="TIPO_HISTORICO" />
                                        <asp:BoundField DataField="DESCRICAO_SOLICITACAO" HeaderText="DESCRICAO_SOLICITACAO" />
                                        <asp:BoundField DataField="SERVICO" HeaderText="SERVICO" SortExpression="SERVICO" />
                                        <asp:BoundField DataField="MEDIADOR" HeaderText="MEDIADOR" SortExpression="MEDIADOR" />
                                        <asp:BoundField DataField="SOLICITANTE" HeaderText="SOLICITANTE" SortExpression="SOLICITANTE" />
                                        <asp:BoundField DataField="SOLICITADO" HeaderText="SOLICITADO" SortExpression="SOLICITADO" />
                                        <asp:BoundField />
                                    </Columns>
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" VerticalAlign="Middle" />
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
                            <td colspan="3">
                                <FTB:FreeTextBox ID="FreeTextBoxAgenda" runat="server" Width="100%" 
                                    ReadOnly="True">
                                </FTB:FreeTextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="PanelAtendimento" runat="server" Width="100%" Visible="False">
                    <table style="width:100%;">
                        <tr>
                            <td>
                                Documento : </td>
                            <td>
                                <asp:DropDownList ID="DropDownListDocAgenda" runat="server" AutoPostBack="True" 
                                    DataSourceID="ObjectDSDocumento" DataTextField="DESCRICAO" 
                                    DataValueField="ID_DOCUMENTOS" 
                                    onselectedindexchanged="DropDownListDocAgenda_SelectedIndexChanged" 
                                    Width="500px">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                
                                Comentários:<asp:TextBox ID="TextBoxComentarios" runat="server" Height="126px" 
                                    TextMode="MultiLine" Width="100%"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <FTB:FreeTextBox ID="FreeTextBoxAtende" runat="server" Width="100%">
                                </FTB:FreeTextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButtonConfirma" runat="server" 
                    ImageUrl="~/Novo_Layout/ok.png" onclick="ImageButtonConfirma_Click" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButtonSair" runat="server" 
                    ImageUrl="~/Novo_Layout/sair.png" onclick="ImageButtonSair_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

