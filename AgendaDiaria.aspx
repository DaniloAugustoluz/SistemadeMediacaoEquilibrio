<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AgendaDiaria.aspx.cs" Inherits="AgendaDiaria" %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000099;
        }
        .auto-style4 {
            width: 191px;
        }
        .auto-style5 {
            width: 142%;
        }
        .auto-style7 {
            height: 7px;
            width: 225px;
        }
        .auto-style10 {
            height: 34px;
        }
        .auto-style14 {
            height: 7px;
            width: 257px;
        }
        .auto-style15 {
            height: 7px;
            width: 298px;
        }
        .auto-style17 {
            width: 17px;
            height: 7px;
        }
        .auto-style18 {
            height: 26px;
            width: 497px;
        }
        .auto-style22 {
            height: 26px;
            width: 817px;
        }
        .auto-style23 {
            height: 26px;
            width: 508px;
        }
        .auto-style24 {
            width: 191px;
            height: 12px;
        }
        .auto-style25 {
            height: 12px;
        }
        .auto-style26 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td style="text-align: center" align="center" class="auto-style7">
                                <asp:ImageButton ID="ImageButtonAgenda" runat="server" ImageUrl="~/Novo_Layout/AGENDA NOVO TAMANHO.png" OnClick="ImageButtonAgenda_Click" Width="80px" Height="74px" />
                            </td>
            <td style="text-align: center" align="center" class="auto-style15">
                                <asp:ImageButton ID="ButtonAtendimento" runat="server" ImageUrl="~/Novo_Layout/TESTE ATENDIEMNTO 200PX.png" OnClick="ButtonAtendimento_Click1" Height="80px" Width="100px" />
            </td>
            <td style="text-align: center" class="auto-style14" align="center">
                                <asp:ImageButton ID="ButtonResultado" runat="server" Height="75px" ImageUrl="~/Novo_Layout/RESULTADO.png" Width="85px" />
                            </td>
        </tr>
        <tr>
            <td style="text-align: center" colspan="3" class="auto-style10">
                <asp:Panel ID="PanelButtonsDropDownAgenda" runat="server">
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style23"></td>
                            <td align="center" class="auto-style22">
                                &nbsp;<asp:Label ID="LabelEscolherMediador" runat="server" Font-Italic="True" ForeColor="Black" Text="Escolha o Mediador"></asp:Label>
                            </td>
                            <td align="center" class="auto-style18"></td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td align="left" class="auto-style26" colspan="2">
                                <asp:DropDownList ID="DropDownListMediador" runat="server" AutoPostBack="True" Height="25px" onselectedindexchanged="DropDownListMediador_SelectedIndexChanged" Width="80%">
                                    <asp:ListItem Value="0">&lt;&lt; Selecione &gt;&gt;</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23" align="left">
                                <asp:ImageButton ID="ImageButtonSair" runat="server" ImageAlign="Middle" ImageUrl="~/Novo_Layout/menu 2.png" onclick="ImageButtonSair_Click" ToolTip="Voltar para o menu" Width="15%" />
                                &nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButtonConfirma" runat="server" ImageAlign="Middle" ImageUrl="~/Novo_Layout/icon affirmative.png" onclick="ImageButtonConfirma_Click" ToolTip="OK" Visible="False" Width="15%" />
                            </td>
                            <td align="center" class="auto-style22">&nbsp;</td>
                                          
                            </td align="center" class="auto-style18">
                            &nbsp;<caption>
                                &nbsp;</td>
                            </caption>
                        </tr>
                    </table>
                </asp:Panel>
            </td>

        </tr>
        <tr>
            <td colspan="4" rowspan="3">
                <asp:Panel ID="PanelAgenda" runat="server" Width="100%">
                    <table style="width:100%;">
                        <tr>
                            <td style="text-align: center" class="auto-style24" align="right">
                                &nbsp;</td>
                            <td style="text-align: center" align="right" class="auto-style25">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:ObjectDataSource ID="ObjectDSAgenda" runat="server" 
                                    onselecting="ObjectDSAgenda_Selecting" 
                                    TypeName="EquilibrioClasse" SelectMethod="ObterAgendaMediador">
                                    <SelectParameters>
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter DefaultValue="0" Name="tipo_historico" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSourceMediadores" runat="server"></asp:ObjectDataSource>
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
                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    GridLines="Vertical" Width="100%" AllowPaging="True" AllowSorting="True" 
                                    AutoGenerateColumns="False" PageSize="5" 
                                    onselectedindexchanged="GridViewAgenda1_SelectedIndexChanged1" DataKeyNames="ID_DOCUMENTOS,ID_HISTORICO_SOLICITACAO,ID_MOTIVO,DATA_INICIO,FLG_AVANCO,TEXTO,IDMEDIADOR_HISTORICO,DATA_HISTORICO,TIPO_HISTORICO,HORA_INICIO,HORA_FIM,EMAIL_CONVIDADO" OnRowDataBound="GridViewAgenda1_RowDataBound">
                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" />
                                        <asp:BoundField DataField="ID_DOCUMENTOS" HeaderText="ID Documentos" />
                                        <asp:BoundField DataField="ID_HISTORICO_SOLICITACAO" HeaderText="Solicitação" SortExpression="ID_HISTORICO_SOLICITACAO" />
                                        <asp:BoundField DataField="ID_MOTIVO" HeaderText="Motivo" SortExpression="ID_MOTIVO" />
                                        <asp:BoundField DataField="DATA_INICIO" HeaderText="Data de Inicio" SortExpression="DATA_INICIO" />
                                        <asp:CheckBoxField DataField="FLG_AVANCO" HeaderText="Flg Avanco" SortExpression="FLG_AVANCO" />
                                        <asp:BoundField DataField="TEXTO" HeaderText="Texto" >
                                        <ItemStyle Wrap="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="IDMEDIADOR_HISTORICO" HeaderText="Mediador" SortExpression="IDMEDIADOR_HISTORICO" />
                                        <asp:BoundField DataField="DATA_HISTORICO" HeaderText="Data do Histórico" SortExpression="DATA_HISTORICO" />
                                        <asp:BoundField DataField="TIPO_HISTORICO" HeaderText="Tipo do Histórico" SortExpression="TIPO_HISTORICO" />
                                        <asp:BoundField DataField="HORA_INICIO" HeaderText="Hora de Inicio" SortExpression="HORA_INICIO" />
                                        <asp:BoundField DataField="HORA_FIM" HeaderText="Hora do Fim" SortExpression="HORA_FIM" />
                                        <asp:BoundField DataField="EMAIL_CONVIDADO" HeaderText="Email Solicitado" />
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
                            <td colspan="3" align="center">
                                <FTB:FreeTextBox ID="FreeTextBoxAgenda" runat="server" Width="100%" 
                                    ReadOnly="True" EnableHtmlMode="False">
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
                                    TextMode="MultiLine" Width="95%"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <FTB:FreeTextBox ID="FreeTextBoxAtende" runat="server" Width="100%">
                                </FTB:FreeTextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

