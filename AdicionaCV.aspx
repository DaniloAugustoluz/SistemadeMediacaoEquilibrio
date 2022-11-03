<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdicionaCV.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 129px;
        }
        .style2
        {
            width: 569px;
        }
        .style3
        {
            width: 569px;
            height: 21px;
        }
        .style4
        {
            width: 129px;
            height: 21px;
        }
        .style5
        {
            height: 21px;
        }
        .style6
        {
            width: 569px;
            height: 49px;
        }
        .style7
        {
            width: 129px;
            height: 49px;
        }
        .style8
        {
            height: 49px;
        }
        .auto-style1 {
            width: 909px;
            height: 29px;
        }
        .auto-style2 {
            width: 317px;
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            width: 909px;
        }
        .auto-style5 {
            width: 909px;
            height: 21px;
        }
        .auto-style7 {
            width: 317px;
        }
        .auto-style8 {
            width: 317px;
            height: 21px;
        }
        .auto-style12 {
            width: 909px;
            height: 16px;
        }
        .auto-style13 {
            width: 317px;
            height: 16px;
        }
        .auto-style14 {
            height: 16px;
        }
        .auto-style15 {
            width: 909px;
            height: 23px;
        }
        .auto-style16 {
            width: 317px;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style18 {
            width: 909px;
            height: 12px;
        }
        .auto-style19 {
            width: 317px;
            height: 12px;
        }
        .auto-style20 {
            height: 12px;
        }
        .auto-style21 {
            width: 909px;
            height: 18px;
        }
        .auto-style22 {
            width: 317px;
            height: 18px;
        }
        .auto-style23 {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td align="center" colspan="2" class="style5">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Names="Nirmala UI" 
                    Font-Size="Large" Text="ANEXAR ARQUIVOS" Font-Bold="True" ForeColor="Black"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="CURRÍCULO" Font-Names="Source Sans Pro ExtraLight"></asp:Label>
&nbsp;<asp:FileUpload ID="FileUploadCV" runat="server" Width="35%" />
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style8">
                </td>
            <td class="style5">
                <asp:TextBox ID="TextBoxAcaoCV" runat="server" Visible="False" Width="20%">I</asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="FOTO" Font-Names="Source Sans Pro ExtraLight"></asp:Label>
&nbsp;&nbsp;
                <asp:FileUpload ID="FileUploadFOTO" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                </td>
        </tr>
        <tr>
            <td class="auto-style21">
            </td>
            <td class="auto-style22">
                </td>
            <td class="auto-style23">
                </td>
        </tr>
        <tr>
            <td class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelAvisoSalvar" runat="server" Font-Bold="True" Font-Names="Nirmala UI" Font-Size="X-Small" ForeColor="Black" Text="CLIQUE EM OK PARA SALVAR SEUS ARQUIVOS."></asp:Label>
&nbsp;&nbsp;
                <asp:Button ID="ButtonSalvarFiles" runat="server" Height="25px" 
                    onclick="ButtonSalvarFiles_Click" Text="OK" Font-Bold="True" ForeColor="Black" Width="35px" />
            </td>
            <td class="auto-style2">
                <asp:CheckBox ID="CheckBoxVerificaCV" runat="server" 
                    Visible="False" />
            </td>
            <td class="auto-style3">
                </td>
        </tr>
        <tr>
            <td class="auto-style12">
            </td>
            <td class="auto-style13">
                </td>
            <td class="auto-style14">
                </td>
        </tr>
        <tr>
            <td class="auto-style18">
            </td>
            <td class="auto-style19">
                </td>
            <td class="auto-style20">
                </td>
        </tr>
        <tr>
            <td class="auto-style15" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButtonOk" runat="server" Height="35px" 
                    ImageUrl="~/Novo_Layout/ok.png" onclick="ImageButtonOk_Click" Width="35px" ToolTip="Continuar" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButtonVoltar" runat="server" Height="35px" 
                    ImageUrl="~/Novo_Layout/esquerda.png" onclick="ImageButtonVoltar_Click" 
                    Width="35px" ToolTip="Voltar para o menu" />
            </td>
            <td class="auto-style16">
                </td>
            <td class="auto-style17">
                </td>
        </tr>
    </table>
</asp:Content>

