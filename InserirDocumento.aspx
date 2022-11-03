<%@ Page Title="" Language="C#" ValidateRequest="false" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="InserirDocumento.aspx.cs" Inherits="InserirDocumento"  %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            text-align: center;
            width: 224px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<table style="width: 100%;">
    <tr>
        <td class="style2">
            
            Uso</td>
        <td>
           
            <asp:DropDownList ID="DropDownListUso" runat="server" AutoPostBack="True" 
                Height="16px" onselectedindexchanged="DropDownListUso_SelectedIndexChanged" 
                Width="245px">
                <asp:ListItem>Mediação</asp:ListItem>
                <asp:ListItem>Conciliação</asp:ListItem>
                <asp:ListItem>Arbitragem</asp:ListItem>
            </asp:DropDownList>
           
        </td>
        <td>
            
            <asp:TextBox ID="TextBoxAcao" runat="server" MaxLength="1" Visible="False">I</asp:TextBox>
            
        </td>
    </tr>
    <tr>
        <td class="style2">
            
            Titulo</td>
        <td>
            
            <asp:TextBox ID="TextBoxDocumento" runat="server" Width="100%" MaxLength="60"></asp:TextBox>
            
        </td>
        <td>
            
            <asp:CheckBox ID="CheckBoxFLG_ATIVO" runat="server" Text="Ativo" />
            
        </td>
    </tr>
    <tr>
        <td class="style2">
            
            Modalidade</td>
        <td>
            
            <asp:DropDownList ID="DropDownListModalidade" runat="server" AutoPostBack="True" 
                Height="16px" onselectedindexchanged="DropDownListUso_SelectedIndexChanged" 
                Width="245px">
                <asp:ListItem>Presencial</asp:ListItem>
                <asp:ListItem>Remoto-OnLine</asp:ListItem>
                <asp:ListItem Value="SEM MODALIDADE">SEM MODALIDADE</asp:ListItem>
            </asp:DropDownList>
           
        </td>
        <td>
            
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" colspan="3">
            <asp:GridView ID="GridViewDocumento" runat="server" AllowPaging="True" 
                AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
                BorderWidth="1px" CellPadding="3" DataSourceID="ObjDSDocumento" 
                GridLines="Horizontal" Width="100%" AutoGenerateColumns="False" 
                DataKeyNames="ID_DOCUMENTOS,CONTEUDO_RESUMO,CONTEUDO,FLG_ATIVO,USO_DOCUMENTO,DATA_CRIACAO,DESCRICAO,MODALIDADE" 
                onselectedindexchanged="GridViewDocumento_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID_DOCUMENTOS" HeaderText="ID_DOCUMENTOS" 
                        Visible="False" />
                    <asp:BoundField DataField="DESCRICAO" HeaderText="Descrição" 
                        SortExpression="DESCRICAO" />
                    <asp:BoundField DataField="DATA_CRIACAO" DataFormatString="{0:d}" 
                        HeaderText="Criado:" SortExpression="DATA_CRIACAO" />
                    <asp:BoundField DataField="MODALIDADE" HeaderText="Modalidade" 
                        SortExpression="MODALIDADE" />
                    <asp:BoundField DataField="CONTEUDO" HeaderText="Conteudo" 
                        SortExpression="CONTEUDO" Visible="False" />
                    <asp:BoundField DataField="USO_DOCUMENTO" HeaderText="Uso:" 
                        SortExpression="USO_DOCUMENTO" />
                    <asp:CheckBoxField DataField="FLG_ATIVO" Text="Ativo" />
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
            Conteúdo
        </td>
    </tr>
    <tr>
        <td class="style1" colspan="3">
            <FTB:FreeTextBox ID="FreeTextBoxDoc" runat="server" AllowHtmlMode="False" 
                BackColor="AppWorkspace" DisableIEBackButton="True" EnableHtmlMode="False" 
                GutterBackColor="RoyalBlue" Height="650px" RenderMode="Rich" 
                ToolbarLayout="ParagraphMenu,FontFacesMenu,FontSizesMenu,FontForeColorsMenu|Bold,Italic,Underline,Strikethrough;Superscript,Subscript,RemoveFormat|JustifyLeft,JustifyRight,JustifyCenter,JustifyFull;BulletedList,NumberedList,Indent,Outdent;CreateLink,Unlink,InsertImage,InsertRule|Cut,Copy,Paste;Undo,Redo,Print" 
                Width="100%">
            </FTB:FreeTextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            
            <asp:ObjectDataSource ID="ObjDSDocumento" runat="server" 
                SelectMethod="ObterDocumentos" TypeName="EquilibrioClasse">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownListUso" Name="uso" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </td>
        <td style="text-align: center">
           
            <asp:ImageButton ID="ImageButtonCadDoc" runat="server" 
                ImageUrl="~/Novo_Layout/ok.png" onclick="ImageButtonCadDoc_Click"  />
           
        </td>
        <td style="text-align: center">
            
                <asp:ImageButton ID="ImageButtonSair" runat="server" 
                    ImageUrl="~/Novo_Layout/sair.png" onclick="ImageButtonSair_Click"  />
            
        </td>
    </tr>
</table>
</asp:Content>


