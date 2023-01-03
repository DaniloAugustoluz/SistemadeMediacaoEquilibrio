<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AlocarMediador.aspx.cs" Inherits="AlocarMediador" Culture="Auto" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: left;
        }
        .style3
        {
            width: 240px;
        }
        .style4
        {
            width: 240px;
            height: 26px;
        }
        .style5
        {
            text-align: left;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="">
       <asp:Panel ID="Paneldados" runat="server" Visible="true">
             <table style="width:100%;">
        <tr>
            <td class="style3">
                Origem</td>
            <td class="style2" colspan="2">
                <asp:DropDownList ID="DropDownListOrigem" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownListOrigem_SelectedIndexChanged" Width="45%">
                    <asp:ListItem>&lt;&lt; Selecione &gt;&gt;</asp:ListItem>
                    <asp:ListItem>Contrato Cliente </asp:ListItem>
                    <asp:ListItem>Site Equilibrio</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Cliente Solicitante</td>
            <td class="style2" colspan="2">
                <asp:DropDownList ID="DropDownListCliente" runat="server" Enabled="False" 
                    Width="90%" AutoPostBack="True" DataSourceID="ObjDSClient" 
                    DataTextField="NOME" DataValueField="ID_PESSOA" 
                    onselectedindexchanged="DropDownListCliente_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
                 <tr>
                     <td class="style3">
                         Tipo Serviço</td>
                     <td class="style2" colspan="2">
                         <asp:DropDownList ID="DropDownListServico" runat="server" AutoPostBack="True" 
                             Enabled="False" Height="16px" Width="50%" 
                             onselectedindexchanged="DropDownListServico_SelectedIndexChanged">
                             <asp:ListItem Value="ARBITRO">Arbitragem</asp:ListItem>
                             <asp:ListItem Value="CONCILIADOR">Conciliação</asp:ListItem>
                             <asp:ListItem Value="MEDIADOR">Mediação</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                 </tr>
        <tr>
            <td class="style4">
                Colaborador Equilibrio</td>
            <td class="style5" colspan="2">
                <asp:DropDownList ID="DropDownListColaborador" runat="server" Enabled="False" 
                    Height="16px" Width="343px" DataSourceID="ObjDSMediador" 
                    DataTextField="NOME" DataValueField="ID_MEDIADOR">
                </asp:DropDownList>
            </td>
        </tr>
                 <tr>
                     <td class="style3">
                         Modalidade</td>
                     <td class="style2" colspan="2">
                         <asp:DropDownList ID="DropDownListModalidade" runat="server" 
                             AutoPostBack="True" Enabled="False" Width="40%" 
                             onselectedindexchanged="DropDownListModalidade_SelectedIndexChanged">
                             <asp:ListItem>Presencial</asp:ListItem>
                             <asp:ListItem>Virtual</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                 </tr>
        <tr>
            <td class="style4">
                Agenda</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxAgenda" runat="server" Enabled="False"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="TextBoxAgenda_CalendarExtender" 
                    runat="server" BehaviorID="TextBoxAgenda_CalendarExtender" 
                    TargetControlID="TextBoxAgenda">
                </ajaxToolkit:CalendarExtender>
            </td>
            <td class="style6">
                <asp:CheckBox ID="CheckBoxEmail" runat="server" Text="Enviar Email" />
                </td>
        </tr>
        <tr>
            <td class="style4">
                Hora</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxHoraInicio" runat="server" Enabled="False"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="TextBoxHoraInicio_MaskedEditExtender" 
                    runat="server" AutoComplete="False" 
                    BehaviorID="TextBoxHoraInicio_MaskedEditExtender" Century="2000" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="99:99" 
                    MaskType="Time" TargetControlID="TextBoxHoraInicio" 
                    UserTimeFormat="TwentyFourHour" />
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBoxHoraFim" runat="server" Enabled="False"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="TextBoxHoraFim_MaskedEditExtender" 
                    runat="server" AutoComplete="False" 
                    BehaviorID="TextBoxHoraInicio_MaskedEditExtender" Century="2000" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="99:99" 
                    MaskType="Time" TargetControlID="TextBoxHoraFim" 
                    UserTimeFormat="TwentyFourHour" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Email destino:</td>
            <td class="style2" colspan="2">
                <asp:TextBox ID="TextBoxEmailConvidado" runat="server" Enabled="False" 
                    MaxLength="100" Width="100%"></asp:TextBox>
            </td>
        </tr>
                 <tr>
                     <td class="style4">
                         Link da audiência</td>
                     <td class="style5" colspan="2">
                         <asp:TextBox ID="TextBoxlinkvideo" runat="server" Enabled="False" 
                             MaxLength="100" Width="100%"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="style3">
                         Pesquisar Solicitado</td>
                     <td class="style2" colspan="2">
                         <asp:TextBox ID="TextBoxDemandado" runat="server" Enabled="False" Height="18px" 
                             MaxLength="100" Width="75%"></asp:TextBox>   
                         &nbsp;   
                         <asp:ImageButton ID="ImageButtonPesquisa" runat="server" Height="25px" 
                             ImageUrl="~/Novo_Layout/busca.png" Width="25px" 
                             onclick="ImageButtonPesquisa_Click" />
                     </td>
                 </tr>
        <tr>
            <td class="style3">
                <asp:ScriptManager ID="ScriptManager1" runat="server" 
                    EnableScriptGlobalization="True">
                </asp:ScriptManager>
            </td>
            <td class="style2">
                <asp:ObjectDataSource ID="ObjDSMediador" runat="server" 
                    SelectMethod="ObterMediador" TypeName="EquilibrioClasse">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListServico" DefaultValue="MEDIADOR" 
                            Name="funcao" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>
                <asp:ObjectDataSource ID="ObjDSClient" runat="server" 
                    SelectMethod="ObterClientes" TypeName="EquilibrioClasse">
                </asp:ObjectDataSource>
            </td>
        </tr>

        <tr>
            <td class="style3">
                <asp:ObjectDataSource ID="ObjectDataSourceHIST" runat="server" 
                    SelectMethod="ObterSolicitacao" TypeName="EquilibrioClasse">
                </asp:ObjectDataSource>
            </td>
            <td class="style2">
                <asp:ObjectDataSource ID="ObjDSDocumento" runat="server" 
                    SelectMethod="ObterDocumentos" TypeName="EquilibrioClasse">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="&quot;SEM USO&quot;" Name="uso" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButtonVoltar" runat="server" Height="40px" 
                    ImageUrl="~/Novo_Layout/esquerda.png" onclick="ImageButton1_Click" 
                    ToolTip="Retornar para o MENU" Visible="False" Width="40px" />
            </td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButtonEditar" runat="server" Height="40px" 
                    ImageUrl="~/Novo_Layout/Editar2.png" onclick="ImageButtonEditar_Click" 
                    ToolTip="Continua edição do registro selecionado" Width="46px" />
            </td>
        </tr>
    </table>       
       </asp:Panel>
   </div>

    <div id="gradeservico">
        <asp:UpdatePanel ID="UpdatePanelGrade" runat="server">
        <ContentTemplate>
          <table width="100%" >
            <tr>
                     <asp:GridView ID="GridViewContratos" runat="server" AllowPaging="True" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="ObjectDataSourceHIST" GridLines="Horizontal" 
                     Width="100%" AutoGenerateColumns="False" 
                          AllowSorting="True" 
                        
                    
                    DataKeyNames="SOLICITACAO,NOME_SOLICITANTE,EMAIL_SOLICITANTE,CIDADE,DESCRICAO,NOME_SOLICITADO,CPFCNPJ,EMAIL_SOLICITADO" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 8pt" 
                         Enabled="False" PageSize="3" 
                         onselectedindexchanged="GridViewContratos_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="SOLICITACAO" HeaderText="Solicitação" />
                        <asp:BoundField DataField="NOME_SOLICITANTE" HeaderText="Solicitante" 
                            SortExpression="Solicitante" />
                        <asp:BoundField DataField="EMAIL_SOLICITANTE" HeaderText="E Mail" 
                            SortExpression="EMAIL_REQUERENTE" />
                        <asp:BoundField DataField="CIDADE" HeaderText="Cidade" />
                        <asp:BoundField DataField="DESCRICAO" HeaderText="Resumo" />
                        <asp:BoundField DataField="NOME_SOLICITADO" HeaderText="Solicitado" 
                            SortExpression="NOME_SOLICITADO" />
                        <asp:BoundField DataField="CPFCNPJ" HeaderText="CPF_CNPJ" />
                        <asp:BoundField DataField="EMAIL_SOLICITADO" HeaderText="E mail" 
                            SortExpression="EMAIL_REQUERIDO" />
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
            </tr>
        </table>        
        </ContentTemplate>
        </asp:UpdatePanel>
               <asp:Panel ID="PanelDocumento" runat="server" Visible ="false">
       <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                    Documento:</td>
                <td>
                    &nbsp;
                    <asp:DropDownList ID="DropDownListDocumento" runat="server" AutoPostBack="True" 
                        DataSourceID="ObjDSDocumento" DataTextField="DESCRICAO" 
                        DataValueField="ID_DOCUMENTOS" Enabled="False" 
                        onselectedindexchanged="DropDownListDocumento_SelectedIndexChanged" 
                        Width="100%">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                     <FTB:FreeTextBox ID="FreeTextBoxConvocacao" runat="server" Width="100%" 
                         ReadOnly="True"  >
                    </FTB:FreeTextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;
                    <asp:ImageButton ID="ImageButtonConfirma" runat="server" 
                        ImageUrl="~/Novo_Layout/ok.png" onclick="ImageButtonConfirma_Click" />
                </td>
                <td style="text-align: center">
                    <asp:ImageButton ID="ImageButtonEnviaEmail" runat="server" Height="68px" 
                        ImageUrl="~/Novo_Layout/envio_email.png" onclick="ImageButtonEnviaEmail_Click" 
                        Width="63px" />
                    &nbsp;
                </td>
                <td style="text-align: center">
                    &nbsp;
                <asp:ImageButton ID="ImageButtonSair" runat="server" 
                    ImageUrl="~/Novo_Layout/sair.png" onclick="ImageButtonSair_Click" />
                </td>
            </tr>
        </table>
        </asp:Panel>
    </div>
    <div id="documento">
 
 
    </div>
</asp:Content>

