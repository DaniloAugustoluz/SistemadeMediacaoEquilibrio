using Microsoft.Ajax.Utilities;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
    
        
    
    protected void imageSubmit_Click(object sender, ImageClickEventArgs e)
    {
        //Inserindo Solicitacao Demandante
        MasterClasse _class = new MasterClasse();
        _class.InserirSolicitante(TextBoxName.Text, TextBox1NumberCpf.Text, TextBoxEmail.Text.Trim(), TextBoxTelefone.Text, TextBoxDescricao.Text, TextBoxCidade.Text, TextBoxNacionalidade.Text, DropDownListEstadoCivilSolicitante.SelectedValue, TextBoxProfissao.Text, TextBoxCep.Text, TextBoxEndereco.Text,
            TextBoxUFSolicitante.Text, DateTime.Parse(TextBoxDataNascSolicitante.Text, new CultureInfo("pt-br")), TextBoxCTPSSolicitante.Text, TextBoxRgSolicitante.Text, TextBoxOrgaoExpedidorSolicitante.Text,
            TextBoxRgUfSolicitante.Text, TextBoxBairroSolicitante.Text);
            Session["EmailRetorno"] = TextBoxEmail.Text;

        //Retorna o ID do Solicitante para adicionar na solicitação.
        EquilibrioClasse _pegarID = new EquilibrioClasse();
        int retornoID = _pegarID.Id_Solicitante(TextBox1NumberCpf.Text);
        string salvarTexto = _pegarID.retornaTexto(TextBoxDescricao.Text);

        //Inserindo Solicitado
        MasterClasse _classeSolicitado = new MasterClasse();
        _classeSolicitado.InserirSolicitado(TextBoxNomeSolicitado.Text, TextBoxCpfSolicitado.Text, TextBoxEmailSolicitado.Text, TextBoxTelSolicitado.Text, TextBoxCidadeSolicitado.Text ,TextBoxNacionalidadeSolicitado.Text, 
        DropDownListEstadoCivilSolicitado.SelectedValue, TextBoxProfissaoSolicitado.Text, TextBoxCepSolicitado.Text, TextBoxEnderecoSolicitado.Text,
        TextBoxBairroSolicitado.Text, TextBoxUfSolicitado.Text);
               
        //Inserindo solicitacao e informando o tipo do historico para consultar o status da solicitação
        //1 = CRIADO
        //2 = AGENDADO
        //3 = REAGENDADO
        //4 = EM ANDAMENTO
        //5 = ENCERRADO
        MasterClasse _classSolicitado = new MasterClasse();
        int retornaIdSolicitado = _classSolicitado.Id_Solicitado(TextBoxCpfSolicitado.Text); //Busca o Id do solicitado para inserir na solicitação!
        int idmediador = Convert.ToInt16(Session["IDMEDIADOR"]);
        _classSolicitado.InserirSolicitacao(DropDownListModalidade.SelectedValue, TextBoxDescricao.Text, retornoID, TextBoxName.Text, retornaIdSolicitado, TextBoxNomeSolicitado.Text, 1, idmediador); 
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
        TextBoxCidade.Enabled = false;
        TextBoxUFSolicitante.Enabled = false;
        TextBoxDataNascSolicitante.Enabled = false;
        TextBoxRgSolicitante.Enabled = false;
        TextBoxOrgaoExpedidorSolicitante.Enabled = false;
        TextBoxRgUfSolicitante.Enabled = false;
        TextBoxCTPSSolicitante.Enabled = false;
        TextBoxBairroSolicitante.Enabled = false;

        PanelDemandado.Enabled = true;
        BuscarMediador();
        DropDownListEscolherMediador.Visible = true;
        ObjectDSBuscarMediador.DataBind();
        DropDownListEscolherMediador.DataBind();


    }

    protected void ImageButtonEditar_Click(object sender, ImageClickEventArgs e)
    {
        TextBoxName.Enabled = true;
        TextBox1NumberCpf.Enabled = true;
        TextBoxEmail.Enabled = true;
        TextBoxTelefone.Enabled = true;
        TextBoxDescricao.Enabled = true;
        TextBoxNacionalidade.Enabled = true;
        DropDownListEstadoCivilSolicitante.Enabled = true;
        TextBoxProfissao.Enabled = true;
        TextBoxCep.Enabled = true;
        TextBoxEndereco.Enabled = true;
        TextBoxCidade.Enabled = true;
        TextBoxUFSolicitante.Enabled = true;
        TextBoxDataNascSolicitante.Enabled = true;
        TextBoxRgSolicitante.Enabled = true;
        TextBoxOrgaoExpedidorSolicitante.Enabled = true;
        TextBoxRgUfSolicitante.Enabled = true;
        TextBoxCTPSSolicitante.Enabled = true;
        TextBoxBairroSolicitante.Enabled = true;
    }

    protected void GridViewPegarID_SelectedIndexChanged(object sender, ObjectDataSourceSelectingEventArgs e)
    {
        //e.InputParameters["email"] = TextBoxEmail.Text;
       // Session["PegarID_demandante"] = GridViewPegarID.SelectedDataKey["ID_DEMANDANTE"].ToString(); 
    }

    protected void DropDownListEscolherMediador_SelectedIndexChanged(object sender, EventArgs e)
    {
        CheckBoxMediadorOK.Checked = true;
        Session["IDMEDIADOR"] = DropDownListEscolherMediador.SelectedValue;
    }

    
    public void BuscarMediador()
    {
        DataTable _retorno = new DataTable();
        MySqlConnection sconexao = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString);
        string s_Comando = "SELECT ID_MEDIADOR, NOME FROM TB_MEDIADOR WHERE FLG_ATIVO = 1 ORDER BY NOME;";
        sconexao.Open();

        MySqlCommand _comand = new MySqlCommand(s_Comando);
        _comand.Connection = sconexao; // passando conexão aberta.
        MySqlDataReader _reader = _comand.ExecuteReader();
        _retorno.Load(_reader); //carrega a tabela com o leitor do comando mysql.
        DataRow _row = _retorno.NewRow();
        _retorno.Rows.InsertAt(_row, 0);

        //Libera o dropdown para escolher o mediador pelo nome!
        if (PanelDemandado.Enabled == true)
        {
            this.DropDownListEscolherMediador.DataSource = _retorno; //adiciona o DataTable com a instancia MySql
            this.DropDownListEscolherMediador.DataTextField = "NOME";
            this.DropDownListEscolherMediador.DataValueField = "ID_MEDIADOR";
            this.DropDownListEscolherMediador.DataBind();
        }

        //Desabilitando Painel de solicitação, para pegar id do mediador no dropdown!
        if (CheckBoxMediadorOK.Checked == true)
        {
            PanelDemandado.Enabled = false;
        }
        else { PanelDemandado.Enabled = true; }

        //Fecha conexão e desfaz dos objetos!
        sconexao.Close();
        sconexao.Dispose();
        _retorno.Dispose();
        _reader.Dispose();
    }

}
