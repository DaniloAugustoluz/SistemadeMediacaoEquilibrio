<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CadastroMediador.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .newStyle1 {
            word-spacing: 0em;
            text-align: center;
        }
        .style1
        {
            height: 29px;
        }
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="w-100">
        <tr>
            <td colspan="2">
    <asp:ObjectDataSource ID="ObjectDataSourceMediador" runat="server" 
        SelectMethod="ObterMediador" TypeName="EquilibrioClasse">
    </asp:ObjectDataSource>
    <asp:GridView ID="GridViewMediador" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataSourceID="ObjectDataSourceMediador" GridLines="Horizontal" 
        onselectedindexchanged="GridViewMediador_SelectedIndexChanged" 
        Width="100%" 
        
        
        DataKeyNames="ID_MEDIADOR,NOME,ENDERECO,CEP,BAIRRO,CIDADE,UF,DATA_CADASTRO,EMAIL_MED,FUNCAO,FLG_ATIVO" 
        Height="331px" CellSpacing="2" Font-Size="Small" HorizontalAlign="Center" Visible="False">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID_MEDIADOR" HeaderText="ID_MEDIADOR" 
                Visible="False" />
            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ENDERECO" HeaderText="ENDERECO" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="CEP" HeaderText="CEP" SortExpression="CEP" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="BAIRRO" HeaderText="BAIRRO" 
                SortExpression="BAIRRO" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="CIDADE" HeaderText="CIDADE" 
                SortExpression="CIDADE" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="DATA_CADASTRO" DataFormatString="{0:d}" 
                HeaderText="DATA CADASTRO" SortExpression="DATA_CADASTRO" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="EMAIL_MED" HeaderText="EMAIL" 
                SortExpression="EMAIL_MED" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="FUNCAO" HeaderText="FUNCAO" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="FLG_ATIVO" HeaderText="Registro Ativo" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:CheckBoxField>
        </Columns>
        <EditRowStyle HorizontalAlign="Center" Wrap="True" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" 
            HorizontalAlign="Center" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                </td>
            <td class="auto-style1">
                </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="LabelNomeMed" runat="server" ForeColor="#333333" Text="Nome"></asp:Label>
&nbsp;&nbsp; <asp:TextBox ID="TextBoxNomeMed" runat="server" CssClass="newStyle1" Width="392px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="LabelUfMed" runat="server" ForeColor="#333333" Text="UF"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxUFMed" runat="server" style="margin-top: 0px" Width="52px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
&nbsp;
    <asp:Label ID="LabelEnderecoMed" runat="server" ForeColor="#333333" Text="Endereço"></asp:Label>
&nbsp; <asp:TextBox ID="TextBoxEndMed" runat="server" Width="392px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelBairroMed" runat="server" ForeColor="#333333" Text="Bairro"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxBairroMed" runat="server" Width="179px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxEmailMed" runat="server" Width="392px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="LabelFuncao" runat="server" Text="Função"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownFUNCAO" runat="server" Height="25px" 
        Width="179px">
        <asp:ListItem>MEDIADOR</asp:ListItem>
        <asp:ListItem>ARBITRO</asp:ListItem>
        <asp:ListItem>CONCILIADOR</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="LabelCepMed" runat="server" ForeColor="#333333" Text="Cep:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxCepMed" runat="server" Width="179px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="LabelCidadeMed" runat="server" ForeColor="#333333" Text="Cidade:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxCidadeMed" runat="server" Width="179px"></asp:TextBox>
            </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="LabelFLGMed" runat="server" ForeColor="#333333" 
        Text="Registro Ativo"></asp:Label>
&nbsp;<asp:CheckBox ID="CheckBoxFLGAtivo" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                </td>
            <td class="auto-style1">
                </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:TextBox ID="TextBoxAcaoMed" runat="server" Visible="False" Width="34px">I</asp:TextBox>
            </td>
            <td class="auto-style2">
                </td>
        </tr>
        <tr>
            <td rowspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButtonCadMed" runat="server" ImageUrl="~/Novo_Layout/ok.png" OnClick="ImageButtonCadMed_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButtonSair" runat="server" 
                    ImageUrl="~/Novo_Layout/sair.png" OnClick="ImageButtonSair_Click" />
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
</asp:Content>

