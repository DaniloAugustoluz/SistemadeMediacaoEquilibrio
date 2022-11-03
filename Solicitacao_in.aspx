<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Solicitacao_in.aspx.cs" Inherits="Solicitacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 151px;
        }
        .style2
        {
            width: 151px;
            height: 21px;
        }
        .style4
        {}
        .style5
        {
            height: 21px;
        }
        .style6
        {
            width: 151px;
            height: 26px;
        }
        .style7
        {
            height: 26px;
        }
        .style8
        {
            width: 151px;
            height: 29px;
        }
        .style9
        {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="parte">
    <table style="width: 100%;">
        <tr>
            <td class="style1">
                &nbsp;Nome</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxNome" runat="server" MaxLength="100" Width="92%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxNome" ForeColor="#993333" style="font-weight: 700">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                CPF /CNPJ</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxCNPJ" runat="server" MaxLength="20" Width="40%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxCNPJ" ForeColor="#993333" style="font-weight: 700">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Cep</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxCEP" runat="server"></asp:TextBox>
                <asp:ImageButton ID="BtnPesquisaCep" runat="server" Height="17px" 
                    ImageUrl="~/Novo_Layout/busca.png" onclick="BtnPesquisaCep_Click" 
                    Width="20px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxCEP" ForeColor="#993333" style="font-weight: 700">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Endereço</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxEndereco" runat="server" MaxLength="100" Width="93%"></asp:TextBox>
                <asp:Label ID="LabelChkEnd" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                    Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Numero</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxNumero" runat="server"></asp:TextBox>
                <asp:Label ID="LabelChkNumero" runat="server" Font-Bold="True" 
                    ForeColor="#CC0000" Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Complemento</td>
            <td class="style9">
                <asp:TextBox ID="TextBoxComplemento" runat="server" Width="25%"></asp:TextBox>
                <asp:Label ID="LabelChkCompl" runat="server" Font-Bold="True" 
                    ForeColor="#CC0000" Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Bairro</td>
            <td class="style7">
                <asp:TextBox ID="TextBoxBairro" runat="server" MaxLength="50" Width="397px"></asp:TextBox>
                <asp:Label ID="LabelChkBairro" runat="server" Font-Bold="True" 
                    ForeColor="#CC0000" Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Cidade</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxCidade" runat="server" MaxLength="100" Width="86%"></asp:TextBox>
                <asp:Label ID="LabelChkCidade" runat="server" Font-Bold="True" 
                    ForeColor="#CC0000" Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                UF</td>
            <td class="style4">
                <asp:DropDownList ID="ddlUF" runat="server">
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
            <td class="style1">
                Telefone</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxTel" runat="server" 
                    ontextchanged="TextBoxTel_TextChanged"></asp:TextBox>
                <asp:Label ID="LabelChkTel" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                    Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Data Cadastro</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxDataCadastro" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Celular</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxCelular" runat="server" Width="294px"></asp:TextBox>
                <asp:Label ID="LabelChkCel" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                    Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Email</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="93%"></asp:TextBox>
                <asp:Label ID="LabelChkEmail" runat="server" Font-Bold="True" 
                    ForeColor="#CC0000" Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Contato</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxContato" runat="server" MaxLength="100" Width="93%"></asp:TextBox>
                <asp:Label ID="LabelChkContato" runat="server" Font-Bold="True" 
                    ForeColor="#CC0000" Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Tipo Contato</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownContato" runat="server" Width="50%">
                    <asp:ListItem Value="1">Pai</asp:ListItem>
                    <asp:ListItem Value="2">Mãe</asp:ListItem>
                    <asp:ListItem Value="3">Imão(ã)</asp:ListItem>
                    <asp:ListItem Value="4">Conjuge</asp:ListItem>
                    <asp:ListItem Value="5">Amigo</asp:ListItem>
                    <asp:ListItem Value="6">Advogado</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Email Contato</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxEmailContato" runat="server" Width="95%"></asp:TextBox>
                <asp:Label ID="LabelChkEmailCont" runat="server" Font-Bold="True" 
                    ForeColor="#CC0000" Text="(*)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
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
        <td style="text-align: center">
            <asp:ImageButton ID="btnConfirma" runat="server" 
                ImageUrl="~/Novo_Layout/ok.png" onclick="btnConfirma_Click" />
            &nbsp;
        </td>
        <td style="text-align: center">
            &nbsp;
            <asp:ImageButton ID="btnSair" runat="server" style="text-align: center" 
                ImageUrl="~/Novo_Layout/sair.png" />
        </td>
    </tr>
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
</table>
</div>
</asp:Content>


