using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AgendaDiaria : System.Web.UI.Page
{
    int id_mediador = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        PanelButtonsDropDownAgenda.Visible = false;
        PanelAgenda.Visible = false;
        PanelAtendimento.Visible = false;
        FreeTextBoxAgenda.Visible = false;
        FreeTextBoxAtende.Visible = false;

    }
    public void RetornarMediador()
    {
        //Retornando Mediadores no dropdown
        MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
        _conn.Open();

        string s_comando = "SELECT ID_MEDIADOR, NOME, ENDERECO, CEP, BAIRRO, CIDADE, UF, DATA_CADASTRO, EMAIL_MED, FUNCAO, CASE FLG_ATIVO WHEN 1 THEN 'True' ELSE 'False' END AS FLG_ATIVO  FROM TB_MEDIADOR  WHERE FLG_ATIVO = 1 ORDER BY NOME;";

        //Comando MySql
        MySqlCommand _comandoMysql = new MySqlCommand(s_comando,_conn);
        _comandoMysql.CommandType = CommandType.Text;

        //Leitor de dados para ler e retornar os dados do comando
        MySqlDataAdapter _adapter = new MySqlDataAdapter(_comandoMysql);

        //DataSet GridView
        DataSet _dataSet = new DataSet();
        _adapter.Fill(_dataSet);

        //Buscar mediadores com solicitações agendadas
        if (PanelButtonsDropDownAgenda.Visible == true) {
           
            this.DropDownListMediador.DataSource = _dataSet;
            this.DropDownListMediador.DataTextField = "NOME";
            this.DropDownListMediador.DataValueField = "ID_MEDIADOR";
            this.DropDownListMediador.DataBind(); 

        }
    }
    protected void RadioButtonAtual_CheckedChanged(object sender, EventArgs e)
    {
        /*
        ObjectDSAgenda.SelectMethod = "ObterAgendaDiaria";
        ObjectDSAgenda.SelectParameters[0].DefaultValue = DropDownListMediador.SelectedValue.ToString ();
        ObjectDSAgenda.SelectParameters[1].DefaultValue = "2,3";
        ObjectDSAgenda.DataBind();
        //RadioButtonEmAndamento.Checked = false;
       //RadioButtonEncerrado.Checked = false;
        GridViewAgenda1.DataBind();
        */
    }
    protected void RadioButtonEmAndamento_CheckedChanged(object sender, EventArgs e)
    {
        /*
         * ObjectDSAgenda.SelectParameters[0].DefaultValue = id_mediador.ToString();
        ObjectDSAgenda.SelectParameters[1].DefaultValue = "4";
        ObjectDSAgenda.DataBind();
        //RadioButtonAtual.Checked = false;
        //RadioButtonEncerrado.Checked = false;
        FreeTextBoxAgenda.EnableToolbars = true;
        FreeTextBoxAgenda.ReadOnly = false;
        */
    }
    protected void RadioButtonEncerrado_CheckedChanged(object sender, EventArgs e)
    {
        //RadioButtonEmAndamento.Checked = false;
        //RadioButtonAtual .Checked = false;
    }
    protected void ImageButtonConfirma_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            //Inserindo Histório de agenda para atendimento. 4
            if (TextBoxAcao.Text == "ag") {
                EquilibrioClasse _objAgenda = new EquilibrioClasse();
                _objAgenda.InserirAgendamento(Convert.ToInt32(GridViewAgenda1.SelectedDataKey["ID_DOCUMENTOS"].ToString()), Convert.ToInt32(GridViewAgenda1.SelectedDataKey["ID_SOLICITACAO"].ToString())
                                                , 0, Convert.ToDateTime(GridViewAgenda1.SelectedDataKey["DATA_INICIO"].ToString())
                                                , 1
                                                , FreeTextBoxAgenda.Text
                                                , Convert.ToInt32(GridViewAgenda1.SelectedDataKey["ID_MEDIADOR"].ToString())
                                                , DateTime.Now
                                                , 4
                                                , GridViewAgenda1.SelectedDataKey["HORA_INICIO"].ToString()
                                                , DateTime.Now.ToShortTimeString()
                                                , TextBoxComentarios.Text);
                TextBoxComentarios.Text = string.Empty;
                FreeTextBoxAtende.Text = string.Empty;
                Response.Write("<script type=text/javascript>alert(' Registro Processado ') </script>");
            }
            else if (TextBoxAcao.Text == "at")
            {
                //Inserindo historico de atendimento realizado para encerrado! 5

            }
            else if (TextBoxAcao.Text == "reagenda")
            {
                //Reagendando solicitação agendada. 3 

            }
            

        }
            
                
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void ImageButtonSair_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MenuEquilibrio.aspx");
    }
    protected void GridViewAgenda1_SelectedIndexChanged(object sender, EventArgs e)
    {
        PanelAgenda.Visible = true;        
        FreeTextBoxAgenda.Text = GridViewAgenda1.SelectedDataKey ["TEXTO"].ToString ();
        //FreeTextBoxAtende.Text = GridViewAgenda1.SelectedDataKey["TEXTO"].ToString();
        FreeTextBoxAgenda.EnableToolbars = false;
        FreeTextBoxAgenda.ReadOnly = true;

        //Busca os documentos
        EquilibrioClasse _objDocumento = new EquilibrioClasse();
        ObjectDSDocumento.SelectParameters[0].DefaultValue = _objDocumento.ObterUsoDocumento(Convert.ToInt32(GridViewAgenda1.SelectedDataKey["ID_CONFLITO"].ToString()));
        ObjectDSDocumento.DataBind();
        DropDownListDocAgenda.DataBind();
    }
    protected void DropDownListDocAgenda_SelectedIndexChanged(object sender, EventArgs e)
    {
        ImageButtonConfirma.Visible = true;


        EquilibrioClasse _objConteudo = new EquilibrioClasse();
        try
        {
            FreeTextBoxAgenda.Visible = true;
            FreeTextBoxAgenda.ReadOnly = true;
            FreeTextBoxAgenda.Text = GridViewAgenda1.SelectedDataKey["TEXTO"].ToString();
            FreeTextBoxAtende.Visible = true;
            FreeTextBoxAtende.Text = _objConteudo.ObterConteudoDocumento(Convert.ToInt32(DropDownListDocAgenda.SelectedValue)).ToString();
            PanelAgenda.Visible = true;
            PanelAtendimento.Visible = true;
            PanelButtonsDropDownAgenda.Visible = true;

        }
        catch (Exception ex)
        {
            
            throw ex;
        }

    }
    protected void ObjectDSAgenda_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }
    protected void GridViewAgenda1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        try
        {
            //Habilitando e preenchendo freetextboxAgenda com o Texto do Gridview
            PanelAgenda.Visible = true;
            PanelButtonsDropDownAgenda.Visible = true;
            //PanelAtendimento.Visible = true;
            FreeTextBoxAgenda.EnableToolbars = false;
            FreeTextBoxAgenda.Visible = true;
            FreeTextBoxAgenda.ReadOnly = true;
            FreeTextBoxAgenda.Text = GridViewAgenda1.SelectedDataKey["TEXTO"].ToString();
            FreeTextBoxAgenda.DataBind();
            PanelAtendimento.Visible = true;
            PanelAtendimento.Enabled = true;
        }
        catch (Exception ex )
        {
            
            throw ex;
        }
    }
    public void ObterMediadorAgenda(int idmediador, int tipo_historico)
    {
        try
        {
            DataSet _retorno = new DataSet();
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            _conn.Open();
            string s_comando = "SELECT ID_DOCUMENTOS, ID_HISTORICO_SOLICITACAO, ID_MOTIVO, DATA_INICIO, CASE FLG_AVANCO WHEN 1 THEN 'True' ELSE 'FALSE' END AS FLG_AVANCO, TEXTO, IDMEDIADOR_HISTORICO,";
            s_comando += "DATA_HISTORICO, TIPO_HISTORICO, HORA_INICIO, HORA_FIM, COMENTARIO, SUBSTRING(EMAIL_CONVIDADO,1,22) AS EMAIL_CONVIDADO FROM TB_HISTORICO WHERE (IDMEDIADOR_HISTORICO = " + idmediador + ")" + "  AND";
            s_comando += " TIPO_HISTORICO = '" + tipo_historico + "' ORDER BY ID_HISTORICO_SOLICITACAO";


            MySqlDataAdapter _adapter = new MySqlDataAdapter(s_comando, _conn);
            _adapter.Fill(_retorno); //Preenchendo dataset
            GridViewAgenda1.DataSource = _retorno;
            GridViewAgenda1.DataMember = _retorno.Tables[0].TableName;
            GridViewAgenda1.DataBind();


            //finalizando conexões
            _conn.Close();
            _conn.Dispose();
            _adapter.Dispose();
            _retorno.Dispose();
        }
        catch (Exception ex)
        {
            throw new ArgumentNullException("Não foi possível obter os dados!" + ex);
        }


    }
    protected void DropDownListMediador_SelectedIndexChanged(object sender, EventArgs e)
    {
        PanelButtonsDropDownAgenda.Visible = true;
        PanelAgenda.Visible = true;
        PanelAtendimento.Visible = true;
        FreeTextBoxAgenda.Visible = true;
        FreeTextBoxAtende.Visible = true;
        //Exibe no GridView o historico de solicitações agendadas do mediador escolhido!
        ObterMediadorAgenda(Convert.ToInt32(DropDownListMediador.SelectedValue), 2);
        PanelAgenda.Visible = true;
        PanelAtendimento.Visible = true;

        
    }
    public  string FormatarTexto(string texto, int tamanho)
    {
        if(texto.Length >= tamanho)
        {

            string str_retorno = texto.Substring(0, tamanho - 3) + "...";
            return str_retorno;
        }
        else
        {
            return texto;
        }

    }

    protected void ImageButtonAgenda_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            PanelButtonsDropDownAgenda.Visible = true;
            RetornarMediador(); //preencher dropdownlist com mediadores
            TextBoxAcao.Text = "ag"; // agenda
            PanelAgenda.Visible = true;
            PanelAgenda.Enabled = true;
            PanelAtendimento.Visible = false;
            PanelAtendimento.Enabled = false;

        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    protected void ButtonAtendimento_Click1(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (GridViewAgenda1.SelectedIndex >= 0)
            {
                TextBoxAcao.Text = "at";    // atendimento
                PanelAgenda.Visible = false;
                PanelAgenda.Enabled = false;

                PanelAtendimento.Visible = true;
                PanelAtendimento.Enabled = true;

            }
            else
            {
                Response.Write("<script type=text/javascript>alert('Por favor, escolha um item na lista de atendimento!') </script>");
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    protected void GridViewAgenda1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[6].Text = FormatarTexto(e.Row.Cells[6].Text, 20);
        }
    }
}