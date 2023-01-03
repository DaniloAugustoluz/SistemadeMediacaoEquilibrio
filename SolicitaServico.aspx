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
        .auto-style5 {
            width: 127px;
            height: 21px;
        }
        .auto-style7 {
            height: 21px;
        }
        .auto-style8 {
            width: 127px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            height: 16px;
            width: 73px;
        }
        .auto-style12 {
            height: 13px;
            width: 73px;
        }
        .auto-style13 {
            width: 73px;
            height: 30px;
        }
        .auto-style14 {
            width: 73px;
            height: 12px;
        }
        .auto-style15 {
            width: 73px;
            height: 58px;
        }
        .auto-style20 {
            height: 58px;
            text-align: justify;
        }
        .auto-style24 {
            width: 712px;
            height: 26px;
        }
        .auto-style25 {
            width: 712px;
            height: 21px;
        }
        .auto-style26 {
            width: 712px;
        }
        .auto-style27 {
            width: 127px;
            height: 38px;
        }
        .auto-style28 {
            width: 712px;
            height: 38px;
        }
        .auto-style29 {
            height: 38px;
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
                &nbsp;</td>
            <td class="style39">
                </td>
        </tr>
        <tr>
            <td class="style39" colspan="3" style="color: #000000; background-color: #FFFFFF">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelDemandante" runat="server" Font-Bold="True" Font-Names="Alef" Font-Size="Large" Text="SOLICITANTE"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="labelName" runat="server" Text="NOME DO SOLICITANTE"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxName" runat="server" Width="50%" Height="25px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelTel" runat="server" Text="TEL/CEL"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBoxTelefone" runat="server" Width="30%" Height="25px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="labelEmail" runat="server" Text="EMAIL"></asp:Label>
                </td>
            <td class="style46">
                &nbsp;
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="45%" Height="25px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelEstadoCivil" runat="server" Text="ESTADO CIVIL"></asp:Label>
            &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownListEstadoCivilSolicitante" runat="server" Height="25px" Width="32%">
                    <asp:ListItem>SOLTEIRO(A)</asp:ListItem>
                    <asp:ListItem>VIÚVO(A)</asp:ListItem>
                    <asp:ListItem>CASADO(A)</asp:ListItem>
                    <asp:ListItem>DIVORCIADO</asp:ListItem>
                    <asp:ListItem>UNIÃO ESTÁVEL</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="style46">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelCidade" runat="server" Text="CIDADE"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxCidade" runat="server" Height="25px" Width="35%"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelUFSolicitante" runat="server" Text="UF"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxUFSolicitante" runat="server" Height="25px" Width="10%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelDataNascSolicitante" runat="server" Text="DATA DE NASCIMENTO"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxDataNascSolicitante" runat="server" Height="25px" Width="30%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelNacionalidade" runat="server" Text="NACIONALIDADE"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxNacionalidade" runat="server" Width="35%" Height="25px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelProfissão" runat="server" Text="PROFISSÃO"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxProfissao" runat="server" Width="40%" Height="25px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style78" style="color: #000000">
                &nbsp;&nbsp;
                <asp:Label ID="LabelDocumentos" runat="server" Font-Bold="True" Font-Names="Alef" Font-Size="Large" Text="DOCUMENTOS"></asp:Label>
                </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelRgSolicitante" runat="server" Text="RG SOLICITANTE"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxRgSolicitante" runat="server" Height="25px" Width="50%"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="ORGÃO EXPEDIDOR"></asp:Label>
            &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxOrgaoExpedidorSolicitante" runat="server" Height="25px" Width="15%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="Label4" runat="server" Text="UF"></asp:Label>
                </td>
            <td class="style46">
                &nbsp;
                <asp:TextBox ID="TextBoxRgUfSolicitante" runat="server" Height="25px" Width="10%"></asp:TextBox>
                </td>
            <td class="style46">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="labelNumberCpf" runat="server" Text="CPF/CNPJ"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBox1NumberCpf" runat="server" Width="30%" Height="25px"></asp:TextBox>
            </td>
            <td class="style78">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelCtpsSolicitante" runat="server" Text="CTPS"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxCTPSSolicitante" runat="server" Height="25px" Width="35%"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style78">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style78" style="color: #000000">
                &nbsp;&nbsp;
                <asp:Label ID="LabelDocumentos0" runat="server" Font-Bold="True" Font-Names="Alef" Font-Size="Large" Text="ENDEREÇO"></asp:Label>
            </td>
            <td class="style78">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelEndereco" runat="server" Text="ENDEREÇO"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxEndereco" runat="server" Width="60%" Height="25px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelCep" runat="server" Text="CEP"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxCep" runat="server" Width="30%" Height="25px"></asp:TextBox>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelBairroSolicitante" runat="server" Text="BAIRRO"></asp:Label>
                </td>
            <td class="style78">
                &nbsp;
                <asp:TextBox ID="TextBoxBairroSolicitante" runat="server" Height="25px" Width="30%"></asp:TextBox>
                </td>
            <td class="style78">
                </td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style78" align="center">
                                <asp:Label ID="LabelDescricao" runat="server" Text="RELATO DO CASO" Font-Bold="True" ForeColor="Black"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style78">
                                <asp:TextBox ID="TextBoxDescricao" runat="server" Height="50px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style78" align="center">
                <asp:Label ID="LabelInfoDemandado" runat="server" Text="Após preencher os dados clique no icone para preencher os dados do Solicitante." ForeColor="Black"></asp:Label>
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="style78" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButtonAdcDemandado" runat="server" ImageUrl="~/Novo_Layout/add.png" OnClick="ImageButtonAdcDemandado_Click" ToolTip="Adicionar demandado" Width="35px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButtonEditar" runat="server" ImageUrl="~/Novo_Layout/Editar2.png" OnClick="ImageButtonEditar_Click" Visible="False" Width="35px" />
            </td>
            <td class="style78">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                </td>
            <td class="style95">
                </td>
            <td class="style95">
                </td>
        </tr>
        <tr>
            <td class="auto-style12">
                </td>
            <td class="style95">
                </td>
            <td class="style95">
                </td>
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
                            <td class="auto-style10" colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="3" align="center" style="background-color: #FFFFFF; color: #000000;">
                                <asp:Label ID="LabelModeloSolicitacao" runat="server" Font-Bold="True" Font-Size="X-Large" Text="MODELO DE SOLICITAÇÃO"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2" align="center">
                                <asp:Label ID="LabelModalidade" runat="server" Font-Bold="True" Text="MODALIDADE DO ATENDIMENTO"></asp:Label>
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2" align="center">
                                <asp:DropDownList ID="DropDownListModalidade" runat="server" Width="50%" Height="28px">
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
                            <td class="auto-style10" colspan="2" align="center">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="ESCOLHA UM MEDIADOR"></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:CheckBox ID="CheckBoxMediadorOK" runat="server" Visible="False" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2" align="center">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:DropDownList ID="DropDownListEscolherMediador" runat="server" Height="28px" OnSelectedIndexChanged="DropDownListEscolherMediador_SelectedIndexChanged" Visible="False" Width="50%">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style10"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2" align="center">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:ObjectDataSource ID="ObjectDSBuscarMediador" runat="server" SelectMethod="BuscarMediador" TypeName="EquilibrioClasse"></asp:ObjectDataSource>
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8"></td>
                            <td class="auto-style24"></td>
                            <td class="auto-style10"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="3" style="background-color: #FFFFFF; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelDadosDemandado" runat="server" Font-Bold="True" Font-Names="Alef" Font-Size="X-Large" Text="SOLICITADO"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="LabelDemandado" runat="server" Text="NOME DO SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style24">
                                <asp:TextBox ID="TextBoxNomeSolicitado" runat="server" Width="50%" Height="25px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelTelDemandado" runat="server" Text="TEL SOLICITADO"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="TextBoxTelSolicitado" runat="server" Height="25px" Width="25%"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelEmailDemandado0" runat="server" Text="EMAIL SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style25">
                                <asp:TextBox ID="TextBoxEmailSolicitado" runat="server" Height="25px" Width="50%"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelNacionalidadeSolicitado0" runat="server" Text="NACIONALIDADE"></asp:Label>
                                &nbsp;
                                <asp:TextBox ID="TextBoxNacionalidadeSolicitado" runat="server" Height="25px" Width="25%"></asp:TextBox>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelCpfDemandado1" runat="server" Text="CPF/CNPJ SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style26">
                                <asp:TextBox ID="TextBoxCpfSolicitado" runat="server" Height="25px" Width="30%"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelEstdCivil0" runat="server" Text="ESTADO CIVIL"></asp:Label>
                            </td>
                            <td class="auto-style26">
                                <asp:DropDownList ID="DropDownListEstadoCivilSolicitado" runat="server" Height="25px" Width="30%">
                                    <asp:ListItem>SOLTEIRO(A)</asp:ListItem>
                                    <asp:ListItem>CASADO(A)</asp:ListItem>
                                    <asp:ListItem>VIÚVO(A)</asp:ListItem>
                                    <asp:ListItem>UNIÃO ESTÁVEL</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelProfissaoSolicitado0" runat="server" Text="PROFISSÃO"></asp:Label>
                            </td>
                            <td class="auto-style25">
                                <asp:TextBox ID="TextBoxProfissaoSolicitado" runat="server" Height="25px" Width="50%"></asp:TextBox>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelCepSolicitado0" runat="server" Text="CEP"></asp:Label>
                            </td>
                            <td class="auto-style26">
                                <asp:TextBox ID="TextBoxCepSolicitado" runat="server" Height="25px" Width="20%"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelUFSolicitado0" runat="server" Text="UF SOLICITADO"></asp:Label>
                                &nbsp;
                                <asp:TextBox ID="TextBoxUfSolicitado" runat="server" Height="25px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelEnderecoSolicitado0" runat="server" Text="ENDERECO"></asp:Label>
                            </td>
                            <td class="auto-style26">
                                <asp:TextBox ID="TextBoxEnderecoSolicitado" runat="server" Height="25px" Width="50%"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelCidadeSolicitado0" runat="server" Text="CIDADE"></asp:Label>
                            </td>
                            <td class="auto-style26">
                                <asp:TextBox ID="TextBoxCidadeSolicitado" runat="server" Height="25px" Width="20%"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style27">
                                <asp:Label ID="LabelBairroSolicitado0" runat="server" Text="BAIRRO SOLICITADO"></asp:Label>
                            </td>
                            <td class="auto-style28">
                                <asp:TextBox ID="TextBoxBairroSolicitado" runat="server" Height="25px" Width="30%"></asp:TextBox>
                            </td>
                            <td class="auto-style29"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style26">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                </td>
            <td class="auto-style20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:ImageButton ID="imageSubmit" runat="server" 
                    ImageUrl="~/Novo_Layout/ok.png" Width="40px" Height="40px" 
                    onclick="imageSubmit_Click" />
            </td>
            <td class="style63">
                <asp:ImageButton ID="imageButtonBack" runat="server" Height="40px" 
                    ImageUrl="~/Novo_Layout/esquerda.png" Width="40px" 
                    onclick="imageButtonBack_Click" />
            </td>
        </tr>
        </table>
</div>
</asp:Content>
