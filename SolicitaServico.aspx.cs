using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["flagVerificacao"] = Session["acaoCV"];
        Session["VerificacaoCheckBox"] = Session["CheckBoxArquivos"];
        TextBoxName.Focus();
    }
    public int retornaChecarEscolherMed(int checkBoxSim, int checkBoxNao)
    {
        int checkSim = checkBoxSim;
        int checkNao = checkBoxNao;
       
        if (checkSim.Equals(1))
        {
            CheckBoxNao.Checked = false;
            return checkBoxSim;

        }
        else
        {
            CheckBoxNao.Checked = true; 
            return checkBoxNao;
        }
        
        
    }
    protected void imageSubmit_Click(object sender, ImageClickEventArgs e)
    {
        
        //Inserindo Solicitacao Demandante
        MasterClasse _class = new MasterClasse();
        _class.InserirSolicitante(TextBoxName.Text, TextBox1NumberCpf.Text, TextBoxEmail.Text.Trim(), TextBoxTelefone.Text, TextBoxDescricao.Text, TextBoxCidade.Text, TextBoxNacionalidade.Text, DropDownListEstadoCivilSolicitante.SelectedValue, TextBoxProfissao.Text, TextBoxCep.Text, TextBoxEndereco.Text,
            TextBoxUFSolicitante.Text, DateTime.Parse(TextBoxDataNascSolicitante.Text, new CultureInfo("pt-br")), TextBoxCTPSSolicitante.Text, TextBoxRgSolicitante.Text, TextBoxOrgaoExpedidorSolicitante.Text,
            TextBoxRgUfSolicitante.Text, TextBoxBairroSolicitante.Text);
        Session["EmailRetorno"] = TextBoxEmail.Text;

        //Retorna o ID do demandante para adicionar na solicitação.
        EquilibrioClasse _pegarID = new EquilibrioClasse();
        int retornoID = _pegarID.Id_Solicitante(TextBoxEmail.Text);
        string salvarTexto = _pegarID.retornaTexto(TextBoxDescricao.Text);

        //Inserindo Solicitado
        MasterClasse _classeSolicitado = new MasterClasse();
        _classeSolicitado.InserirSolicitado(TextBoxNomeSolicitado.Text, TextBoxCpfSolicitado.Text, TextBoxEmailSolicitado.Text, TextBoxTelSolicitado.Text, TextBoxCidadeSolicitado.Text ,TextBoxNacionalidadeSolicitado.Text, 
        DropDownListEstadoCivilSolicitado.SelectedValue, TextBoxProfissaoSolicitado.Text, TextBoxCepSolicitado.Text, TextBoxEnderecoSolicitado.Text,
        TextBoxBairroSolicitado.Text, TextBoxUfSolicitado.Text);

        //Inserindo solicitacao 
        MasterClasse _classSolicitado = new MasterClasse();
        int retornaIdSolicitado = _classSolicitado.Id_Solicitado(TextBoxEmailSolicitado.Text);
        int escolherMed = retornaChecarEscolherMed(Convert.ToInt32(CheckBoxSim.Checked), Convert.ToInt32(CheckBoxNao.Checked));        
        _classSolicitado.InserirSolicitacao(escolherMed,DropDownListModalidade.SelectedValue, retornoID, retornaIdSolicitado); ;

        EquilibrioClasse _classe = new EquilibrioClasse();
        _classe.retornaEmail(TextBoxDescricao.Text);

        //Enviar email
        EnvioEmail _email = new EnvioEmail();
        _email.EnviarEmail(TextBoxEmail.Text, TextBoxDescricao.Text);
        Response.Redirect("Aviso.aspx");

    }

    protected void imageButtonBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Acesso.aspx");
    }

    protected void ImageButtonAdcDemandado_Click(object sender, ImageClickEventArgs e)
    {
        

        //Liberar Panel para Demandado
        LabelInfoDemandado.Text = "Caso seja necessário, clique na caneta para editar as informações do Solicitante.";
        ImageButtonEditar.Visible = true;
        PanelDemandado.Visible = true;
        TextBoxName.Enabled = false;
        TextBox1NumberCpf.Enabled = false;
        TextBoxEmail.Enabled = false;
        TextBoxTelefone.Enabled = false;
        TextBoxDescricao.Enabled = false;
        TextBoxNacionalidade.Enabled = false;
        DropDownListEstadoCivilSolicitante.Enabled = false;
        TextBoxProfissao.Enabled = false;
        TextBoxCep.Enabled = false;
        TextBoxEndereco.Enabled = false;

    }

    protected void ImageButtonEditar_Click(object sender, ImageClickEventArgs e)
    {
        TextBoxName.Enabled = true;
        TextBox1NumberCpf.Enabled = true;
        TextBoxEmail.Enabled = true;
        TextBoxTelefone.Enabled = true;
        TextBoxDescricao.Enabled = true; TextBoxNacionalidade.Enabled = false;
        DropDownListEstadoCivilSolicitante.Enabled = true;
        TextBoxProfissao.Enabled = true;
        TextBoxCep.Enabled = true;
        TextBoxEndereco.Enabled = true;

    }

    protected void GridViewPegarID_SelectedIndexChanged(object sender, ObjectDataSourceSelectingEventArgs e)
    {
        //e.InputParameters["email"] = TextBoxEmail.Text;
       // Session["PegarID_demandante"] = GridViewPegarID.SelectedDataKey["ID_DEMANDANTE"].ToString(); 
    }

    protected void GridViewPegarID_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
