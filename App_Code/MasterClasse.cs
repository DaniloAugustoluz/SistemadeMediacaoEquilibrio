using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Text;
using System.Activities.Statements;

/// <summary>
/// Summary description for MasterClasse
/// </summary>
public class MasterClasse
{
	public MasterClasse()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void InserirSolicitante(string P_NOME, string P_CPF, string P_EMAIL, string P_TELEFONE, string P_DESCRICAO, 
        string P_CIDADE, string P_NACIONALIDADE, string P_ESTADOCIVIL, string P_PROFISSAO, string P_CEP, string P_ENDERECO, 
        string P_UF, DateTime P_DATA_NASCIMENTO_SOLICITANTE, string P_CTPS_SOLICITANTE, string P_RG_SOLICITANTE, string P_ORGAO_SOLICITANTE,
        string P_RG_UF_SOLICITANTE, string P_BAIRRO_SOLICITANTE) { 
    
    try{

            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            StringBuilder _comando = new StringBuilder();
            _conn.Open();

            _comando.Append(" INSERT INTO TB_SOLICITANTE(NOME_SOLICITANTE, CPF, EMAIL_SOLICITANTE, TELEFONE, DESCRICAO, CIDADE,NACIONALIDADE, ESTADOCIVIL, PROFISSAO, CEP, ENDERECO, UF, DATA_NASCIMENTO_SOLICITANTE, CTPS_SOLICITANTE, RG_SOLICITANTE, RG_ORGAO_SOLICITANTE, RG_UF_SOLICITANTE, BAIRRO_SOLICITANTE) VALUES(");
            _comando.Append("'" + P_NOME.Trim().ToString() + "',");
            _comando.Append("'" + P_CPF.Trim().ToString() + "',");
            _comando.Append("'" + P_EMAIL.Trim().ToString() + "',");
            _comando.Append("'" + P_TELEFONE.Trim().ToString() + "',");
            _comando.Append("'" + P_DESCRICAO.ToString() + "',");
            _comando.Append("'" + P_CIDADE.ToString() + "',");
            _comando.Append("'" + P_NACIONALIDADE.ToString() + "',");
            _comando.Append("'" + P_ESTADOCIVIL.ToString() + "',");
            _comando.Append("'" + P_PROFISSAO.ToString() + "',");
            _comando.Append("'" + P_CEP.ToString() + "',");
            _comando.Append("'" + P_ENDERECO.ToString() + "',");
            _comando.Append("'" + P_UF.Trim().ToString() + "',");
            _comando.Append("'" + P_DATA_NASCIMENTO_SOLICITANTE.ToString() + "',");
            _comando.Append("'" + P_CTPS_SOLICITANTE.ToString() + "',");
            _comando.Append("'" + P_RG_SOLICITANTE.ToString().Trim() + "',");
            _comando.Append("'" + P_ORGAO_SOLICITANTE.ToString().Trim() + "',");
            _comando.Append("'" + P_RG_UF_SOLICITANTE.ToString().Trim() + "',");
            _comando.Append("'" + P_BAIRRO_SOLICITANTE.ToString().Trim() + "');");

            MySqlCommand _comm = new MySqlCommand();
            _comm.Connection = _conn;
            _comm.CommandText = _comando.ToString();
            _comm.ExecuteNonQuery();

            _conn.Close();    
            _conn.Dispose();
            _comm.Dispose();


    }
    catch(Exception ex){
    
        throw ex;
    }
   }

    public void InserirSolicitado(string P_NOME, string P_CPFCNPJ, string P_EMAIL, string P_TELEFONE, string P_CIDADE ,string P_NACIONALIDADE, string P_ESTADOCIVIL, string P_PROFISSAO, 
        string P_CEP, string P_ENDERECO, string P_BAIRRO_SOLICITADO, string P_UF_SOLICITADO) {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            _conn.Open();

            StringBuilder _builder = new StringBuilder();
            _builder.Append(" INSERT INTO TB_SOLICITADO (NOME_SOLICITADO, CPFCNPJ, EMAIL_SOLICITADO, TELEFONE, CIDADE_SOLICITADO, NACIONALIDADE, ESTADOCIVIL, PROFISSAO, CEP, ENDERECO, BAIRRO_SOLICITADO, UF_SOLICITADO) VALUES(");
            _builder.Append("'" + P_NOME.ToString() + "',");
            _builder.Append("'" + P_CPFCNPJ.ToString().Trim() + "',");
            _builder.Append("'" + P_EMAIL.ToString() + "',");
            _builder.Append("'" + P_TELEFONE.ToString() + "',");
            _builder.Append("'" + P_CIDADE.ToString() + "',");
            _builder.Append("'" + P_NACIONALIDADE.ToString() + "',");
            _builder.Append("'" + P_ESTADOCIVIL.ToString() + "',");
            _builder.Append("'" + P_PROFISSAO.ToString() + "',");
            _builder.Append("'" + P_CEP.ToString() + "',");
            _builder.Append("'" + P_ENDERECO.ToString() + "',");
            _builder.Append("'" + P_BAIRRO_SOLICITADO.ToString().Trim() + "',");
            _builder.Append("'" + P_UF_SOLICITADO.ToString().Trim() + "');");

            MySqlCommand _comando = new MySqlCommand();
            _comando.Connection = _conn;
            _comando.CommandType = CommandType.Text;
            _comando.CommandText = _builder.ToString();
            _comando.ExecuteNonQuery();

            _conn.Close();
            _conn.Dispose();
            _comando.Dispose();

        }
        catch (Exception ex) {
            throw ex;
        }
    
    
    }

    public int Id_Solicitado(string P_CPFCNPJ)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            _conn.Open();

            string s_comando = "SELECT ID_SOLICITADO FROM TB_SOLICITADO WHERE CPFCNPJ = '" + P_CPFCNPJ.ToString().Trim() + "';";

            MySqlCommand _comando = new MySqlCommand(s_comando, _conn);
            _comando.CommandType = CommandType.Text;
            _comando.CommandText = s_comando.ToString();
            int _retorno = (Convert.ToInt32(_comando.ExecuteScalar()));

            return _retorno;
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }
    public void InserirSolicitacao(string  P_MODALIDADE, string P_DESCRICAO_SOLICITACAO, int P_ID_SOLICITANTE, string P_NOME_SOLICITANTE, int P_ID_SOLICITADO, string P_NOME_SOLICITADO, int P_TIPO_HISTORICO, int P_IDMEDIADOR)

    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            StringBuilder _comando = new StringBuilder();
            _conn.Open();

            _comando.Append(" INSERT INTO TB_SOLICITACAO (MODALIDADE, DESCRICAO_SOLICITACAO, ULTIMO_HISTORICO, IDSOLICITANTE, NOME_SOLICITANTE, IDSOLICITADO, NOME_SOLICITADO, TIPO_HISTORICO, IDMEDIADOR) VALUES(");
            _comando.Append("'" + P_MODALIDADE.ToString().Trim() + "',");
            _comando.Append("'" + P_DESCRICAO_SOLICITACAO.ToString().Trim() + "',");
            _comando.Append("'" + P_TIPO_HISTORICO.ToString().Trim() + "',"); //ESTE PARÂMETRO INSERE O TIPO DE HISTORICO COMO ULTIMO HISTÓRICO, POR SER O INICIO DA SOLICITAÇÃO O TIPO É = 1
            _comando.Append("'" + P_ID_SOLICITANTE.ToString().Trim() + "',");
            _comando.Append("'" + P_NOME_SOLICITANTE.ToString().Trim() + "',");
            _comando.Append("'" + P_ID_SOLICITADO.ToString().Trim() + "',");
            _comando.Append("'" + P_NOME_SOLICITADO.ToString().Trim() + "',");
            _comando.Append("'" + P_TIPO_HISTORICO.ToString().Trim() + "',");
            _comando.Append("(SELECT ID_MEDIADOR FROM TB_MEDIADOR WHERE ID_MEDIADOR = " + P_IDMEDIADOR.ToString() + "));");

            MySqlCommand _comm = new MySqlCommand();
            _comm.Connection = _conn;
            _comm.CommandType = CommandType.Text;
            _comm.CommandText = _comando.ToString();
            _comm.ExecuteNonQuery();

            _conn.Close();
            _conn.Dispose();
            _comm.Dispose();


        }
        catch (Exception ex) {
            throw ex;
        }
    
    }
}