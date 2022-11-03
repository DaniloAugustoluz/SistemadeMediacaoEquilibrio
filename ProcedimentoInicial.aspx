<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProcedimentoInicial.aspx.cs" Inherits="ProcedimentoInicial" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 159px;
        }
        .style2
        {
        }
        .style3
        {
            height: 21px;
        }
        .style4
        {
            height: 21px;
            width: 212px;
        }
        .style5
        {
            width: 212px;
        }
        .style6
        {
            width: 212px;
            height: 26px;
        }
        .style7
        {
            height: 26px;
        }
        .style8
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="inicio">
        <table style="width: 100%;">
            <tr>
                <td class="style1">
                    &nbsp;Procedimento
                </td>
                <td class="style2">
                    <asp:Label ID="lbl_procedimento" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    &nbsp;
                    Data Solicitação&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblDataSol" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Indique o Conflito</td>
                <td class="style2" colspan="2">
                    <asp:TextBox ID="txtconflito" runat="server" Height="80px" TextMode="MultiLine" 
                        Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Modalidade</td>
                <td class="style2">
                    <asp:DropDownList ID="ddlModalidade" runat="server" Width="65%">
                        <asp:ListItem>OnLine</asp:ListItem>
                        <asp:ListItem>Presencial</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;Valor da Causa</td>
                <td class="style2">
                    <asp:TextBox ID="txtValorCausa" runat="server" Width="188px"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="txtValorCausa_MaskedEditExtender" 
                        runat="server" BehaviorID="txtValorCausa_MaskedEditExtender" Century="2000" 
                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                        CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                        CultureName="pt-BR" CultureThousandsPlaceholder="" CultureTimePlaceholder="" 
                        Mask="9999999,99" MaskType="Number" TargetControlID="txtValorCausa" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <div id ="requerente">
    <table style="width: 100%;">
    <tr>
        <td class="style4">
            Nome Requerente</td>
        <td class="style3">
            &nbsp;
            &nbsp;
            <asp:TextBox ID="txtnome_req" runat="server" Width="100%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Email Requerente</td>
        <td>
            &nbsp;
            &nbsp;
            <asp:TextBox ID="txtemail_req" runat="server" Width="100%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            CEP do Requerente</td>
        <td>
            <asp:TextBox ID="txtCEP_req" runat="server"></asp:TextBox>
                <asp:ImageButton ID="BtnPesquisaCep" runat="server" Height="17px" 
                    ImageUrl="~/Novo_Layout/busca.png" onclick="BtnPesquisaCep_Click" 
                    Width="20px" />
        </td>
    </tr>
    <tr>
        <td class="style5">
            Endereço Requerente</td>
        <td>
            <asp:TextBox ID="txtend_req" runat="server" Width="90%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Cidade Requerente</td>
        <td>
            <asp:TextBox ID="txtCidade_Req" runat="server" Height="22px" Width="60%"></asp:TextBox>
            <ajaxToolkit:DropDownExtender ID="txtCidade_Req_DropDownExtender" runat="server" 
                BehaviorID="TextBox3_DropDownExtender" DynamicServicePath="" 
                TargetControlID="txtCidade_Req">
            </ajaxToolkit:DropDownExtender>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Bairro Requerente</td>
        <td>
            <asp:TextBox ID="txtBairro_Req" runat="server" Height="22px" Width="60%"></asp:TextBox>
            <ajaxToolkit:DropDownExtender ID="txtBairro_Req_DropDownExtender" runat="server" 
                BehaviorID="TextBox3_DropDownExtender" DynamicServicePath="" 
                TargetControlID="txtBairro_Req">
            </ajaxToolkit:DropDownExtender>
        </td>
    </tr>
    <tr>
        <td class="style5">
            UF do Requerente</td>
        <td>
                    <asp:DropDownList ID="ddlUF_Req" runat="server" Width="50%">
                                <asp:ListItem>AC</asp:ListItem>
                    <asp:ListItem>AL</asp:ListItem>
                    <asp:ListItem>AP</asp:ListItem>
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>CE</asp:ListItem>
                    <asp:ListItem>DF</asp:ListItem>
                    <asp:ListItem>ES</asp:ListItem>
                    <asp:ListItem>GO</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MT</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MG</asp:ListItem>
                    <asp:ListItem>PA</asp:ListItem>
                    <asp:ListItem>PB</asp:ListItem>
                    <asp:ListItem>PE</asp:ListItem>
                    <asp:ListItem>PR</asp:ListItem>
                    <asp:ListItem>PI</asp:ListItem>
                    <asp:ListItem>RJ</asp:ListItem>
                    <asp:ListItem>RN</asp:ListItem>
                    <asp:ListItem>RS</asp:ListItem>
                    <asp:ListItem>RO</asp:ListItem>
                    <asp:ListItem>RR</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>SP</asp:ListItem>
                    <asp:ListItem>SE</asp:ListItem>
                    <asp:ListItem Value="TO"></asp:ListItem>
                    </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style5">
            CPF Requerente</td>
        <td>
            <asp:TextBox ID="txtCPF_Req" runat="server" Width="50%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            RG&nbsp; Requerente</td>
        <td>
            <asp:TextBox ID="txtRG_Req" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Orgão e UF RG Requerente</td>
        <td>
            <asp:TextBox ID="txtOrgao_Req" runat="server"></asp:TextBox>
            <asp:DropDownList ID="ddlSSP_Req" runat="server">
                    <asp:ListItem>AC</asp:ListItem>
                    <asp:ListItem>AL</asp:ListItem>
                    <asp:ListItem>AP</asp:ListItem>
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>CE</asp:ListItem>
                    <asp:ListItem>DF</asp:ListItem>
                    <asp:ListItem>ES</asp:ListItem>
                    <asp:ListItem>GO</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MT</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MG</asp:ListItem>
                    <asp:ListItem>PA</asp:ListItem>
                    <asp:ListItem>PB</asp:ListItem>
                    <asp:ListItem>PE</asp:ListItem>
                    <asp:ListItem>PR</asp:ListItem>
                    <asp:ListItem>PI</asp:ListItem>
                    <asp:ListItem>RJ</asp:ListItem>
                    <asp:ListItem>RN</asp:ListItem>
                    <asp:ListItem>RS</asp:ListItem>
                    <asp:ListItem>RO</asp:ListItem>
                    <asp:ListItem>RR</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>SP</asp:ListItem>
                    <asp:ListItem>SE</asp:ListItem>
                    <asp:ListItem Value="TO"></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Telefone Requerente</td>
        <td>
            <asp:TextBox ID="txtTel_Req" runat="server" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Celular Requerente</td>
        <td class="style7">
            <asp:TextBox ID="txtCel_Req" runat="server" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Tipo de Pessoa Demandado</td>
        <td>
            &nbsp;<asp:DropDownList ID="ddlTipoReqr" runat="server">
                <asp:ListItem>Física</asp:ListItem>
                <asp:ListItem>Juridica</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Razão ou Nome Demandado</td>
        <td>
            <asp:TextBox ID="txtRazao_Demandado" runat="server" Width="100%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            E-mail Demandado</td>
        <td>
            <asp:TextBox ID="txtEmail_Demandado" runat="server" Width="100%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label1" runat="server" Text="CNPJ/CPF:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="CNPJ_CPF_Demandado" runat="server" Width="50%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            CEP Demandado</td>
        <td>
            <asp:TextBox ID="txtCEP_Demanda" runat="server"></asp:TextBox>
            <ajaxToolkit:MaskedEditExtender ID="txtCEP_Demanda_MaskedEditExtender" 
                runat="server" BehaviorID="TextBox17_MaskedEditExtender" Century="2000" 
                CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                CultureThousandsPlaceholder="" CultureTimePlaceholder="" 
                TargetControlID="txtCEP_Demanda" CultureName="pt-BR" Mask="00000-000" />
                <asp:ImageButton ID="BtnPesquisaCep0" runat="server" Height="17px" 
                    ImageUrl="~/Novo_Layout/busca.png" onclick="BtnPesquisaCep0_Click" 
                    Width="20px" />
        </td>
    </tr>
    <tr>
        <td class="style5">
            Endereço Demandado</td>
        <td>
            <asp:TextBox ID="txtEndereco_Demanda" runat="server" Width="90%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Bairro Demandado</td>
        <td>
            <asp:TextBox ID="txtBairro_Demanda" runat="server" Width="60%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Cidade do Demandado</td>
        <td>
            <asp:TextBox ID="txtCidade_Demanda" runat="server" Width="65%" 
                ontextchanged="TextBox19_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            UF do Demandado</td>
        <td>
                    <asp:DropDownList ID="ddlUF_Demanda" runat="server" Width="50%">
                                <asp:ListItem>AC</asp:ListItem>
                    <asp:ListItem>AL</asp:ListItem>
                    <asp:ListItem>AP</asp:ListItem>
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>CE</asp:ListItem>
                    <asp:ListItem>DF</asp:ListItem>
                    <asp:ListItem>ES</asp:ListItem>
                    <asp:ListItem>GO</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MT</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MG</asp:ListItem>
                    <asp:ListItem>PA</asp:ListItem>
                    <asp:ListItem>PB</asp:ListItem>
                    <asp:ListItem>PE</asp:ListItem>
                    <asp:ListItem>PR</asp:ListItem>
                    <asp:ListItem>PI</asp:ListItem>
                    <asp:ListItem>RJ</asp:ListItem>
                    <asp:ListItem>RN</asp:ListItem>
                    <asp:ListItem>RS</asp:ListItem>
                    <asp:ListItem>RO</asp:ListItem>
                    <asp:ListItem>RR</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>SP</asp:ListItem>
                    <asp:ListItem>SE</asp:ListItem>
                    <asp:ListItem Value="TO"></asp:ListItem>
                    </asp:DropDownList>
        </td>
    </tr>
</table>    
    </div>
 <div id="botoes">
     <table style="width: 100%;">
         <tr>
             <td>
                 &nbsp;
             </td>
             <td>
                 &nbsp;
             </td>
             <td>
                 &nbsp;
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;
             </td>
             <td class="style8">
                 &nbsp;
                 <asp:ImageButton ID="btnConfirma" runat="server" 
                     ImageUrl="~/Novo_Layout/ok.png" onclick="btnConfirma_Click" />
             </td>
             <td class="style8">
                 &nbsp;
                 <asp:ImageButton ID="btnSegue" runat="server" 
                     ImageUrl="~/Novo_Layout/direita.png" onclick="btnSegue_Click" />
             </td>
         </tr>
         </table>
 </div>
 </asp:Content>

