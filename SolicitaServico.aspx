<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="SolicitaServico.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
   
    <style type="text/css">
    .style2
    {
        width: 637px;
        height: 40px;
    }
    .style39
    {
        height: 16px;
    }
    .style40
    {
        width: 637px;
        height: 16px;
    }
    .style44
    {
        width: 128px;
        height: 12px;
    }
    .style46
    {
        height: 12px;
    }
    .style50
    {
        width: 128px;
        height: 9px;
    }
    .style51
    {
        width: 637px;
        height: 9px;
    }
    .style52
    {
        height: 9px;
    }
    .style63
    {
        height: 58px;
    }
    .style67
    {
        width: 128px;
        height: 22px;
    }
    .style68
    {
        width: 637px;
        height: 22px;
    }
    .style69
    {
        height: 22px;
    }
    .style76
    {
        width: 128px;
        height: 30px;
    }
    .style78
    {
        height: 30px;
    }
    .style82
    {
        width: 128px;
        height: 31px;
    }
    .style83
    {
        width: 637px;
        height: 31px;
    }
    .style84
    {
        height: 31px;
    }
    .style85
    {
        width: 637px;
        height: 30px;
    }
    .style86
    {
        width: 637px;
        height: 12px;
    }
    .style90
    {
        width: 128px;
        height: 45px;
    }
    .style91
    {
        width: 637px;
        height: 45px;
        text-align: justify;
    }
    .style92
    {
        height: 45px;
    }
    .style95
    {
        height: 13px;
    }
    .style96
    {
        width: 637px;
        height: 13px;
    }
    .style97
    {
        height: 13px;
    }
    .style98
    {
        width: 637px;
        height: 58px;
        text-align: justify;
    }
    .style99
    {
        width: 128px;
        height: 58px;
    }
        .auto-style3 {
            width: 127px;
        }
        .auto-style4 {
            width: 586px;
        }
        .auto-style5 {
            width: 127px;
            height: 21px;
        }
        .auto-style6 {
            width: 586px;
            height: 21px;
        }
        .auto-style7 {
            height: 21px;
        }
        .auto-style8 {
            width: 127px;
            height: 26px;
        }
        .auto-style9 {
            width: 586px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            height: 16px;
            width: 115px;
        }
        .auto-style12 {
            height: 13px;
            width: 115px;
        }
        .auto-style13 {
            width: 115px;
            height: 30px;
        }
        .auto-style14 {
            width: 115px;
            height: 12px;
        }
        .auto-style15 {
            width: 115px;
            height: 58px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
    <table style="width: 100%;">
        <tr>
            <td class="style39" colspan="2">
                </td>
            <td class="style39">
                </td>
        </tr>
        <tr>
            <td class="style39" colspan="2">
                <asp:Label ID="LabelDemandante" runat="server" Font-Bold="True" Font-Names="Alef" Font-Size="Large" Text="SOLICITANTE"></asp:Label>
                </td>
            <td class="style39">
                </td>
        </tr>
        <tr>
            <td class="auto-style11">
                </td>
            <td class="style40">
                </td>
            <td class="style39">
                </td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="labelName" runat="server" Text="NOME DO SOLICITANTE"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxName" runat="server" Width="60%" Height="22px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                </td>
            <td class="style86">
                </td>
            <td class="style46">
                </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="LabelTel" runat="server" Text="TEL/CEL"></asp:Label>
                </td>
            <td class="style86">
                <asp:TextBox ID="TextBoxTelefone" runat="server" Width="60%" Height="22px"></asp:TextBox>
                </td>
            <td class="style46">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                </td>
            <td class="style86">
                </td>
            <td class="style46">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="labelNumberCpf" runat="server" Text="CPF/CNPJ"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBox1NumberCpf" runat="server" Width="60%" Height="22px"></asp:TextBox>
            </td>
            <td class="style78">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelCtpsSolicitante" runat="server" Text="CTPS"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxCTPSSolicitante" runat="server" Height="22px" Width="60%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelRgSolicitante" runat="server" Text="RG SOLICITANTE"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxRgSolicitante" runat="server" Height="22px" Width="50%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" Text="ORGÃO EXPEDIDOR"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxOrgaoExpedidorSolicitante" runat="server" Height="22px" Width="30%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label4" runat="server" Text="RG UF"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxRgUfSolicitante" runat="server" Height="22px" Width="30%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                </td>
            <td class="style86">
                </td>
            <td class="style46">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="labelEmail" runat="server" Text="EMAIL"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="60%" Height="22px"></asp:TextBox>
            </td>
            <td class="style78">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelUFSolicitante" runat="server" Text="UF"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxUFSolicitante" runat="server" Height="22px" Width="30%"></asp:TextBox>
            </td>
            <td class="style78">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelCidade" runat="server" Text="CIDADE"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxCidade" runat="server" Height="22px" Width="60%"></asp:TextBox>
            </td>
            <td class="style78">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelNacionalidade" runat="server" Text="NACIONALIDADE"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxNacionalidade" runat="server" Width="60%" Height="22px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                </td>
            <td class="style85">
                </td>
            <td class="style78">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelEstadoCivil" runat="server" Text="ESTADO CIVIL"></asp:Label>
            </td>
            <td class="style85">
                <asp:DropDownList ID="DropDownListEstadoCivilSolicitante" runat="server" Height="22px" Width="50%">
                    <asp:ListItem>SOLTEIRO(A)</asp:ListItem>
                    <asp:ListItem>VIÚVO(A)</asp:ListItem>
                    <asp:ListItem>CASADO(A)</asp:ListItem>
                    <asp:ListItem>DIVORCIADO</asp:ListItem>
                    <asp:ListItem>UNIÃO ESTÁVEL</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelDataNascSolicitante" runat="server" Text="DATA DE NASCIMENTO"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxDataNascSolicitante" runat="server" Height="22px" Width="30%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelProfissão" runat="server" Text="PROFISSÃO"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxProfissao" runat="server" Width="60%" Height="22px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelCep" runat="server" Text="CEP"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxCep" runat="server" Width="60%" Height="22px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelEndereco" runat="server" Text="ENDEREÇO"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxEndereco" runat="server" Width="60%" Height="22px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style85">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelBairroSolicitante" runat="server" Text="BAIRRO"></asp:Label>
            </td>
            <td class="style85">
                <asp:TextBox ID="TextBoxBairroSolicitante" runat="server" Height="22px" Width="50%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                </td>
            <td class="style96">
                </td>
            <td class="style95">
                </td>
        </tr>
        <tr>
            <td class="auto-style12">
                                <asp:Label ID="LabelDescricao" runat="server" Text="RELATO DO CASO"></asp:Label>
                </td>
            <td class="style96">
                                <asp:TextBox ID="TextBoxDescricao" runat="server" Height="25px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            <td class="style95">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                </td>
            <td class="style96">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelInfoDemandado" runat="server" Text="Após preencher os dados clique no icone para preencher os dados do Solicitante." ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButtonAdcDemandado" runat="server" ImageUrl="~/Novo_Layout/add.png" OnClick="ImageButtonAdcDemandado_Click" ToolTip="Adicionar demandado" Width="35px" />
            </td>
            <td class="style95">
                <asp:ImageButton ID="ImageButtonEditar" runat="server" ImageUrl="~/Novo_Layout/Editar2.png" OnClick="ImageButtonEditar_Click" Visible="False" Width="35px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="style96">
                &nbsp;</td>
            <td class="style95">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="style96">
                &nbsp;</td>
            <td class="style95">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="style96">
                &nbsp;</td>
            <td class="style95">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style95" colspan="3">
                <asp:Panel ID="PanelDemandado" runat="server" Visible="False">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style10" colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="3">
                                <asp:Label ID="LabelModeloSolicitacao" runat="server" Font-Bold="True" Font-Size="Large" Text="MODELO DE SOLICITAÇÃO"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:Label ID="LabelModalidade" runat="server" Font-Bold="True" Text="MODALIDADE DO ATENDIMENTO"></asp:Label>
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:DropDownList ID="DropDownListModalidade" runat="server" Width="80%" Height="22px">
                                    <asp:ListItem>PRESENCIAL</asp:ListItem>
                                    <asp:ListItem>ONLINE</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="VOCÊ DESEJA ESCOLHER O MEDIADOR QUE IRÁ TE REPRESENTAR ?"></asp:Label>
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">&nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="CheckBoxSim" runat="server" Text="SIM" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="CheckBoxNao" runat="server" Text="NÃO" />
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:Label ID="LabelDadosDemandado" runat="server" Font-Bold="True" Font-Names="Alef" Font-Size="Large" Text="SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="LabelDemandado" runat="server" Text="NOME DO SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBoxNomeSolicitado" runat="server" Width="80%" Height="22px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5"></td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelCpfDemandado" runat="server" Text="CPF/CNPJ SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBoxCpfSolicitado" runat="server" Width="80%" Height="22px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelEmailDemandado" runat="server" Text="EMAIL SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBoxEmailSolicitado" runat="server" Width="80%" Height="22px"></asp:TextBox>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelTelDemandado" runat="server" Text="TEL SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBoxTelSolicitado" runat="server" Width="80%" Height="22px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelCidadeSolicitado" runat="server" Text="CIDADE"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBoxCidadeSolicitado" runat="server" Height="22px" Width="60%"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelNacionalidadeSolicitado" runat="server" Text="NACIONALIDADE"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBoxNacionalidadeSolicitado" runat="server" Height="22px" Width="80%"></asp:TextBox>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5"></td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelEstdCivil" runat="server" Text="ESTADO CIVIL"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:DropDownList ID="DropDownListEstadoCivilSolicitado" runat="server" Height="22px" Width="50%">
                                    <asp:ListItem>SOLTEIRO(A)</asp:ListItem>
                                    <asp:ListItem>CASADO(A)</asp:ListItem>
                                    <asp:ListItem>VIÚVO(A)</asp:ListItem>
                                    <asp:ListItem>UNIÃO ESTÁVEL</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelProfissaoSolicitado" runat="server" Text="PROFISSÃO"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBoxProfissaoSolicitado" runat="server" Height="22px" Width="80%"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelCepSolicitado" runat="server" Text="CEP"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBoxCepSolicitado" runat="server" Height="22px" Width="80%"></asp:TextBox>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5"></td>
                            <td class="auto-style6"></td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelBairroSolicitado" runat="server" Text="BAIRRO SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBoxBairroSolicitado" runat="server" Height="22px" Width="60%"></asp:TextBox>
                            </td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelUFSolicitado" runat="server" Text="UF SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBoxUfSolicitado" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelEnderecoSolicitado" runat="server" Text="ENDERECO"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBoxEnderecoSolicitado" runat="server" Height="22px" Width="80%"></asp:TextBox>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                </td>
            <td class="style98">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:ImageButton ID="imageSubmit" runat="server" 
                    ImageUrl="~/Novo_Layout/ok.png" Width="35px" Height="35px" 
                    onclick="imageSubmit_Click" />
            </td>
            <td class="style63">
                <asp:ImageButton ID="imageButtonBack" runat="server" Height="35px" 
                    ImageUrl="~/Novo_Layout/esquerda.png" Width="35px" 
                    onclick="imageButtonBack_Click" />
            </td>
        </tr>
        </table>
</div>
</asp:Content>
