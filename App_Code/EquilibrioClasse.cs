using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Text;
using System.Data;
using System.EnterpriseServices;
using br.com.correios.apps;
using System.Data.SqlClient;

/// <summary>
/// Summary description for EquilibrioClasse
/// </summary>
public class EquilibrioClasse
{
	public EquilibrioClasse()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private string TextoEmail;
    
    public string _textoEmail { 
    
        get{return TextoEmail;}
        set { TextoEmail = value; } 
    
    }

    public string retornaTexto(string p_texto) {
        this.TextoEmail = p_texto;
        return TextoEmail;
    }

    public DataTable ObterFlagArquivo(string email) {
        
        DataTable _retorno = new DataTable();
        MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());

        string s_comando = " SELECT FLG_ARQUIVO FROM TB_USUARIO WHERE EMAIL = '" + email.ToString().Trim() +"';";

        MySqlDataAdapter dt_retorno = new MySqlDataAdapter(s_comando, _conn);

        try
        {
            dt_retorno.Fill(_retorno);
            return _retorno;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally {
            dt_retorno.Dispose();
        }

    }   

    private string _email;

    public string email
    {
        get { return _email; }
        set { _email = value; }

    }

    public string retornaEmail(string p_email)
    {
        _email = p_email;

        return _email;
    }
    
    public bool ValidaUsuario(string email, string senha)
    {
        try
        {
            
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
             StringBuilder _comando = new StringBuilder();

             _comando.Append(" CALL PRC_VALIDA_USUARIO (");
              _comando.Append("'" + email.Trim() + "',");
             _comando.Append ("'"+senha.Trim().ToString()+"');");

            MySqlCommand _commsql = new MySqlCommand();
            // abre conexao
             _conn.Open();
             _commsql.Connection = _conn;
             _commsql.CommandType = CommandType.Text;
             _commsql.CommandText = _comando.ToString();
             int _Retorno_banco = 0;
             _Retorno_banco = Convert.ToInt16(_commsql.ExecuteScalar().ToString());

            // fecha conexao e desmonta objetos

             _conn.Close();
             _commsql.Dispose();
             _conn.Dispose();

             return _Retorno_banco == 0 ? false : true;
        }
        catch (Exception ex) 
        {
            
            throw ex;
        }
       }


    public bool ValidaPreCad(string email, string senha) {
        try
        {

            
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            StringBuilder _builder = new StringBuilder();

            _builder.Append(" CALL PRC_VALIDA_PRECAD(");
            _builder.Append("'" + email.Trim() + "',");
            _builder.Append("'" + senha.Trim().ToString() + "');");

            //Abre conexão
            MySqlCommand _comando = new MySqlCommand();
            _conn.Open();
            _comando.Connection = _conn;
            _comando.CommandText = _builder.ToString();
            int retorno = 0;
            retorno = Convert.ToInt16(_comando.ExecuteScalar().ToString());

            //fechando conexão
            _conn.Close();
            _conn.Dispose();
            _comando.Dispose();
            return retorno == 0 ? false : true;

        }
        catch (Exception ex) {
            throw ex;
        }
    }


    public void InserirSolicitado(string P_NOME, string P_CPFCPNJ, string P_EMAIL, string P_TELEFONE, string P_NACIONALIDADE,
        string P_ESTADOCIVIL, string P_PROFISSAO, string P_CEP, string P_ENDERECO)
    {

        try
        {
            //INSERINDO SOLICITADO
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            _conn.Open();

            StringBuilder _com = new StringBuilder();

            _com.Append(" INSERT INTO TB_SOLICITADO(NOME, CPFCNPJ, EMAIL, TELEFONE, NACIONALIDADE, ESTADOCIVIL, PROFISSÃO, CEP, ENDERECO) VALUES(");
            _com.Append("'" + P_NOME.ToString() + "',");
            _com.Append("'" + P_CPFCPNJ.ToString().Trim() + "',");
            _com.Append("'" + P_EMAIL.ToString() + "',");
            _com.Append("'" + P_TELEFONE.ToString() + "',");
            _com.Append("'" + P_NACIONALIDADE.ToString() + "',");
            _com.Append("'" + P_ESTADOCIVIL.ToString() + "',");
            _com.Append("'" + P_PROFISSAO.ToString() + "',");
            _com.Append("'" + P_CEP.ToString() + "',");
            _com.Append("'" + P_ENDERECO.ToString() + "');");

            MySqlCommand _comando = new MySqlCommand();
            _comando.CommandType = CommandType.Text;
            _comando.CommandText = _com.ToString();
            _comando.ExecuteNonQuery();

            _conn.Close();
            _conn.Dispose();
            _comando.Dispose();

        }
        catch(Exception ex)
        {
            throw ex;
        }
    }

    public void InserirPessoas(int tipo, string nome, string endereco, string cep, string bairro, string cidade, string uf,string cnpj,string telefone,
            string celular,string email ,byte tipo_contato,string email_contato,string nome_contato,string numero,string complemento)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
             StringBuilder _comando = new StringBuilder();
             _comando.Append(" CALL PRC_MED_INS_PESSOA (");
             _comando.Append(tipo.ToString() + ",");
             _comando.Append("'" + nome.Trim() + "',");
             _comando.Append ("'"+endereco.ToString()+"',");
             _comando.Append("'" + cep.ToString() + "',");
             _comando.Append("'" + bairro.ToString() + "',");
             _comando.Append("'" + cidade.ToString() + "',");
             _comando.Append("'" + uf.ToString() + "',");
             _comando.Append("'" + cnpj.ToString() + "',");
             _comando.Append("'" + telefone.ToString() + "',");
             _comando.Append("'" + celular.ToString() + "',");
             _comando.Append("'" + email.ToString() + "',");
             _comando.Append("'" + tipo_contato.ToString() + "',");
             _comando.Append("'" + email_contato.ToString() + "',");
             _comando.Append("'" + nome_contato.ToString() + "',");
             _comando.Append("'" + numero.ToString() + "',");
             _comando.Append("'" + complemento.ToString() + "');");

             MySqlCommand _commsql = new MySqlCommand();
            // abre conexao
             _conn.Open();
             _commsql.Connection = _conn;
             _commsql.CommandText = _comando.ToString();
             _commsql.ExecuteNonQuery();

            // fecha conexao e desmonta objetos

             _conn.Close();
             _commsql.Dispose();
             _conn.Dispose();
        }
        catch (Exception ex) 
        {
            
            throw ex;
        }
    }

    public void InserirUsuarios(string nome, string telefone, string senha, string email, string cpf)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            StringBuilder _comando = new StringBuilder();
            _comando.Append(" CALL PRC_INS_USUARIO(");
            _comando.Append("'" + nome.Trim() + "',");
            _comando.Append("'" + telefone.ToString() + "',");
            _comando.Append("'" + senha.ToString() + "',");
            _comando.Append("'" + email.ToString() + "',");
            _comando.Append("'" + cpf.ToString() + "');");
 
            MySqlCommand _commsql = new MySqlCommand();
            // abre conexao
            _conn.Open();
            _commsql.Connection = _conn;
            _commsql.CommandText = _comando.ToString();
            _commsql.ExecuteNonQuery();

            // fecha conexao e desmonta objetos

            _conn.Close();
            _commsql.Dispose();
            _conn.Dispose();
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
    public void AlterarMediador(int ID_MEDIADOR, string NOME, string ENDERECO, string CEP, string BAIRRO, string CIDADE, string UF, string EMAIL_MED, string FUNCAO, int FLG_ATIVO, string LOCALCV, string LOCALFOTO, int FLG_ARQUIVO)
    {

        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MEDIACAO"].ToString());
            MySqlCommand _comando = new MySqlCommand("PRC_UPD_MEDIADOR");

            _comando.CommandType = CommandType.StoredProcedure;

            _comando.Parameters.Add("P_ID_MEDIADOR", MySqlDbType.Int32, 10).Value = ID_MEDIADOR;
            _comando.Parameters.Add("P_NOME", MySqlDbType.VarChar, 100).Value = NOME;
            _comando.Parameters.Add("P_ENDERECO", MySqlDbType.VarChar, 100).Value = ENDERECO;
            _comando.Parameters.Add("P_CEP", MySqlDbType.VarChar, 9).Value = CEP;
            _comando.Parameters.Add("P_BAIRRO", MySqlDbType.VarChar, 50).Value = BAIRRO;
            _comando.Parameters.Add("P_CIDADE", MySqlDbType.VarChar, 100).Value = CIDADE;
            _comando.Parameters.Add("P_UF", MySqlDbType.String, 2).Value = UF;
            //   _comando.Parameters.Add("P_MINI_CV", MySqlDbType.String, 100).Value = MINI_CV;
            _comando.Parameters.Add("P_EMAIL_MED", MySqlDbType.VarChar, 40).Value = EMAIL_MED;
            _comando.Parameters.Add("P_FUNCAO", MySqlDbType.VarChar, 50).Value = FUNCAO;
            _comando.Parameters.Add("P_FLG_ATIVO", MySqlDbType.Byte).Value = FLG_ATIVO;
            _comando.Parameters.Add("P_LOCALCV", MySqlDbType.VarChar, 100).Value = LOCALCV;
            _comando.Parameters.Add("P_LOCALFOTO", MySqlDbType.VarChar, 100).Value = LOCALFOTO;
            _comando.Parameters.Add("P_FLG_ARQUIVO", MySqlDbType.Byte).Value = FLG_ARQUIVO;

            _conn.Open();
            _comando.Connection = _conn;
            _comando.ExecuteNonQuery();
            _conn.Close();


        }

        catch (Exception ex)
        {
            throw ex;

        }

    }

    public int Id_Solicitado(string P_EMAIL)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            _conn.Open();

            string s_comando = "SELECT ID_SOLICITADO FROM TB_SOLICITADO WHERE EMAIL_SOLICITADO =" + P_EMAIL.ToString() + ";";

            MySqlCommand _comando = new MySqlCommand(s_comando, _conn);
            _comando.CommandType = CommandType.Text;
            _comando.CommandText = s_comando.ToString();
            int _retorno = (Convert.ToInt32(_comando.ExecuteScalar().ToString()));

            return _retorno;
        }
        catch (Exception ex) {
            throw ex;
        }   
    
    }

    public int Id_Solicitante(string P_CPF) {
        MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
        _conn.Open();
        
        try {
            string _comando = "CALL PRC_RETORNA_SOLICITANTE('" + P_CPF.ToString() + "');";
            
            MySqlCommand _comandoSql = new MySqlCommand();
            _comandoSql.Connection = _conn;
            _comandoSql.CommandType = CommandType.Text;
            _comandoSql.CommandText = _comando.ToString();
            int s_retorno = Convert.ToInt32(_comandoSql.ExecuteScalar().ToString());
            return s_retorno;

        }
        catch (Exception ex){ 
            throw ex;
        }
        finally
        {
            _conn.Close();
        } 
    }
    public DataTable ObterDemandante(string email) {
        
            DataTable _retorno = new DataTable();
            string _conn = ConfigurationManager.ConnectionStrings["Mediacao"].ToString();


            string _comando = "CALL PRC_RETORNA_DEMANDANTE('" + email + "');";

            MySqlDataAdapter _adapter = new MySqlDataAdapter(_comando, _conn);
            try
            {
                _adapter.Fill(_retorno);
                return _retorno;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                _adapter.Dispose();
            }       
    }

   
    public DataTable ObterMediador()
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "SELECT ID_MEDIADOR, NOME, ENDERECO, CEP, BAIRRO, CIDADE, UF, DATA_CADASTRO, EMAIL_MED, FUNCAO, CASE FLG_ATIVO WHEN 1 THEN 'True' ELSE 'False' END AS FLG_ATIVO  FROM TB_MEDIADOR ORDER BY NOME";


        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }


    public DataTable RetornaCvMediador()
    {

        DataTable _dataTable = new DataTable();
        MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
        _conn.Open();
        string s_comando = "SELECT * FROM EXIBECV;";

        MySqlCommand _comando = new MySqlCommand(s_comando, _conn);
        MySqlDataReader _adapter = _comando.ExecuteReader();

        try
        {
            _dataTable.Load(_adapter);
            return _dataTable;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            _conn.Close();
            _conn.Dispose();
        }
    }

    public DataTable ObterUsuario(string email)
    {
        DataTable _table = new DataTable();
        string _conn = ConfigurationManager.ConnectionStrings["Mediacao"].ToString();

        string s_comndo = "SELECT NOME FROM TB_MEDIADOR WHERE EMAIL = '" + email + "';";

        MySqlDataAdapter _adpter = new MySqlDataAdapter(s_comndo, _conn);
        try
        {
            _adpter.Fill(_table);
            return _table;

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            _adpter.Dispose();
        }

    } 
    public DataTable ObterMediador(string funcao)
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "SELECT ID_MEDIADOR, NOME, ENDERECO, CEP, BAIRRO, CIDADE, UF, DATA_CADASTRO, EMAIL_MED, FUNCAO, CASE FLG_ATIVO WHEN 1 THEN 'True' ELSE 'False' END AS FLG_ATIVO  FROM TB_MEDIADOR WHERE FUNCAO = '"+ funcao.ToString().Trim ()  +"' ORDER BY NOME";


        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }

    public DataTable ObterClientes()
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "CALL PRC_LISTA_CLIENTE_CONTRATO();";

        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }
    
    public DataTable ObterColaborador(string funcao)
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "CALL PRC_LISTA_COLABORADOR('"+funcao.ToString().Trim () + "');";

        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }
    public DataTable ObterDocumentos(string uso)
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "CALL PRC_LISTA_DOCUMENTO('"+ uso.ToString ().Trim () + "');";

        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }



    public string  ObterUsoDocumento(int id_conflito)
    {
        string s_retorno = "";
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "SELECT SERVICO FROM TB_CONFLITOS WHERE ID_PROCEDIMENTO = " + id_conflito.ToString().Trim() + ";";

        MySqlConnection _objconn = new MySqlConnection(sconexao);
        MySqlCommand _objcomando = new MySqlCommand(); 
        
        try
        {
            _objconn.Open();
            _objcomando.CommandType = CommandType.Text;
            _objcomando.Connection = _objconn;
            _objcomando.CommandText = s_Comando;
            s_retorno = _objcomando.ExecuteScalar().ToString();
         
            return s_retorno ;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _objconn.Close();
            _objconn.Dispose();
            _objcomando.Dispose();
        }
    }

    public string ObterConteudoDocumento(int id_documentos)
    {
        string s_retorno = "";
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "SELECT CONTEUDO FROM TB_DOCUMENTOS WHERE ID_DOCUMENTOS = " + id_documentos.ToString().Trim() + ";";

        MySqlConnection _objconn = new MySqlConnection(sconexao);
        MySqlCommand _objcomando = new MySqlCommand();

        try
        {
            _objconn.Open();
            _objcomando.CommandType = CommandType.Text;
            _objcomando.Connection = _objconn;
            _objcomando.CommandText = s_Comando;
            s_retorno = _objcomando.ExecuteScalar().ToString();

            return s_retorno;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            _objconn.Close();
            _objconn.Dispose();
            _objcomando.Dispose();
        }
    }

    public void AlterarDocumento(int id_documento,string descricao, string conteudo, bool flg_ativo, string uso, string modalidade)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            MySqlCommand _comm = new MySqlCommand();
            _conn.Open();

            _comm.Connection = _conn;
            _comm.CommandType = CommandType.StoredProcedure;
            _comm.Parameters.Add("P_DESCRICAO", MySqlDbType.VarChar, 60).Value = descricao.ToString();
            _comm.Parameters.Add("P_CONTEUDO", MySqlDbType.Text).Value = conteudo.ToString();
            _comm.Parameters.Add("P_FLG_ATIVO", MySqlDbType.Byte).Value = flg_ativo;
            _comm.Parameters.Add("P_USO_DOC", MySqlDbType.VarChar, 25).Value = uso.ToString();
            _comm.Parameters.Add("P_MODALIDADE", MySqlDbType.VarChar, 20).Value = modalidade.ToString();
            _comm.Parameters.Add("P_ID_DOCUMENTOS", MySqlDbType.Int32).Value = id_documento.ToString();
            _comm.CommandText = "PRC_UPD_DOCUMENTO";
            _comm.ExecuteNonQuery();

        }

        catch (Exception ex)
        {

            throw ex;
        }
    }




    public void InserirDocumento(string descricao,string conteudo,bool flg_ativo,string uso,string modalidade)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            MySqlCommand _comm = new MySqlCommand();
            _conn.Open();

            _comm.Connection = _conn;
            _comm.CommandType = CommandType.StoredProcedure;
            _comm.Parameters.Add("P_DESCRICAO", MySqlDbType.VarChar ,60).Value  = descricao.ToString();
            _comm.Parameters.Add("P_CONTEUDO", MySqlDbType.Text ).Value = conteudo.ToString();
            _comm.Parameters.Add("P_FLG_ATIVO", MySqlDbType.Byte).Value = flg_ativo;
            _comm.Parameters.Add("P_USO_DOC", MySqlDbType.VarChar ,25).Value = uso.ToString () ;
            _comm.Parameters.Add("P_MODALIDADE", MySqlDbType.VarChar, 20).Value = modalidade.ToString();
              _comm.CommandText = "PRC_INS_DOCUMENTO";
            _comm.ExecuteNonQuery();

        }
        catch (Exception ex)
        {

            throw ex;
        }
    }



    public void Inserir_Mediador(string NOME, string ENDERECO, string CEP, string BAIRRO, string CIDADE, string UF, string EMAIL_MED, string FUNCAO, int FLG_ATIVO, string LOCALCV, string LOCALFOTO, int FLG_ARQUIVO)
    {

        try
        {
            var _conn = ConfigurationManager.ConnectionStrings["Mediacao"].ToString();
            MySqlConnection _connection = new MySqlConnection(_conn);
            _connection.Open();

            //String Builder _comandoStr
            StringBuilder _comandoStr = new StringBuilder();
            _comandoStr.Append(" INSERT INTO TB_MEDIADOR (NOME, ENDERECO, CEP, BAIRRO, CIDADE, UF, EMAIL_MED, FUNCAO, FLG_ATIVO, LOCALCV, LOCALFOTO, FLG_ARQUIVO) Values(");
            _comandoStr.Append("'" + NOME.ToString() + "',");
            _comandoStr.Append("'" + ENDERECO.ToString() + "',");
            _comandoStr.Append("'" + CEP.ToString() + "',");
            _comandoStr.Append("'" + BAIRRO.ToString() + "',");
            _comandoStr.Append("'" + CIDADE.ToString() + "',");
            _comandoStr.Append("'" + UF.ToString() + "',");
            _comandoStr.Append("'" + EMAIL_MED.ToString() + "',");
            _comandoStr.Append("'" + FUNCAO.ToString() + "',");
            _comandoStr.Append("'" + FLG_ATIVO.ToString() + "',");
            _comandoStr.Append("'" + LOCALCV.ToString() + "',");
            _comandoStr.Append("'" + LOCALFOTO.ToString() + "',");
            _comandoStr.Append("'" + FLG_ATIVO.ToString() + "');");

            //Configurando o SQLComand
            MySqlCommand _comand = new MySqlCommand();
            _comand.Connection = _connection;
            _comand.CommandText = _comandoStr.ToString();
            _comand.ExecuteNonQuery();

            _comand.Dispose();
            _connection.Close();
            _connection.Dispose();

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public void AlterarUsuarios(int id_usuario, string nome, string telefone, string senha, string email, string cpf)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            StringBuilder _comando = new StringBuilder();
            _comando.Append(" CALL PRC_INS_USUARIO(");
            _comando.Append("'" + nome.Trim() + "',");
            _comando.Append("'" + telefone.ToString() + "',");
            _comando.Append("'" + senha.ToString() + "',");
            _comando.Append("'" + email.ToString() + "',");
            _comando.Append("'" + cpf.ToString() + "');");

            MySqlCommand _commsql = new MySqlCommand();
            // abre conexao
            _conn.Open();
            _commsql.Connection = _conn;
            _commsql.CommandText = _comando.ToString();
            _commsql.ExecuteNonQuery();

            // fecha conexao e desmonta objetos

            _conn.Close();
            _commsql.Dispose();
            _conn.Dispose();
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    public void InserirAgendamentoAdm(int id_solicitacao,int id_motivo,DateTime data_inicio,byte flg_avanco,string texto,int id_mediador,DateTime data_historico,byte tipo_historico,string hora_inicio,string hora_fim, string email_convidado,string link_video)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            MySqlCommand _comm = new MySqlCommand();
            _conn.Open();

            _comm.Connection = _conn;
            _comm.CommandType = CommandType.StoredProcedure;
            _comm.Parameters.Add("P_ID_SOLICITACAO", MySqlDbType.Int32).Value = id_solicitacao.ToString();
            _comm.Parameters.Add("P_ID_MOTIVO", MySqlDbType.Byte).Value = id_motivo.ToString();
            _comm.Parameters.Add("P_DATA_INICIO", MySqlDbType.Datetime).Value = data_inicio;
            _comm.Parameters.Add("P_FLG_AVANCO", MySqlDbType.Byte).Value = flg_avanco;
            _comm.Parameters.Add("P_TEXTO", MySqlDbType.Text).Value = texto;
            _comm.Parameters.Add("P_ID_MEDIADOR", MySqlDbType.Int16).Value = id_mediador.ToString();
            _comm.Parameters.Add("P_DATA_HISTORICO", MySqlDbType.Datetime).Value = data_historico;
            _comm.Parameters.Add("P_TIPO_HISTORICO", MySqlDbType.Byte).Value = tipo_historico;
            _comm.Parameters.Add("P_HORA_INICIO", MySqlDbType.VarChar, 10).Value = hora_inicio;
            _comm.Parameters.Add("P_HORA_FIM", MySqlDbType.VarChar, 10).Value = hora_fim;
            _comm.Parameters.Add("P_EMAIL_CONVIDADO", MySqlDbType.VarChar, 100).Value = email_convidado.ToString();
            _comm.Parameters.Add("P_LINK_VIDEO", MySqlDbType.VarChar, 10).Value = link_video.ToString();


            _comm.CommandText = "PRC_AGENDA_ADMINISTRATIVO";
            _comm.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public void InserirAgendamento(int id_conflito, int id_motivo, DateTime data_inicio, byte flg_avanco, string texto, int id_mediador, DateTime data_historico, byte tipo_historico, string hora_inicio, string hora_fim)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            MySqlCommand _comm = new MySqlCommand();
            _conn.Open();

            _comm.Connection = _conn;
            _comm.CommandType = CommandType.StoredProcedure;

            _comm.Parameters.Add("P_ID_CONFLITO", MySqlDbType.Int32).Value = id_conflito.ToString();
            _comm.Parameters.Add("P_ID_MOTIVO", MySqlDbType.Byte).Value = id_motivo.ToString();
            _comm.Parameters.Add("P_DATA_INICIO", MySqlDbType.Datetime).Value = data_inicio;
            _comm.Parameters.Add("P_FLG_AVANCO", MySqlDbType.Byte).Value = flg_avanco;
            _comm.Parameters.Add("P_TEXTO", MySqlDbType.Text).Value = texto;
            _comm.Parameters.Add("P_ID_MEDIADOR", MySqlDbType.Int16).Value = id_mediador.ToString();
            _comm.Parameters.Add("P_DATA_HISTORICO", MySqlDbType.Datetime).Value = data_historico;
            _comm.Parameters.Add("P_TIPO_HISTORICO", MySqlDbType.Byte).Value = tipo_historico;
            _comm.Parameters.Add("P_HORA_INICIO", MySqlDbType.VarChar, 10).Value = hora_inicio;
            _comm.Parameters.Add("P_HORA_FIM", MySqlDbType.VarChar, 10).Value = hora_fim;

            _comm.CommandText = "PRC_AGENDA_SERVICO";
            _comm.ExecuteNonQuery();

        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    public void InserirProcedimento(string p_nome_req,string p_email_req,string p_uf_req,
                                    string p_cid_req,string p_conflito,decimal p_vlr_causa,string p_cpf_req,
                                    string p_rg_req ,string p_rg_org_req,
                                    string p_tel_req,string p_cel_req,string p_end_req,string p_cep_req,string p_bairro_req,
                                    string p_tipo_pes_requerida,string p_razao_nome_reqr,
                                    string p_cnpj_cpf_reqr,string p_end_reqr,string p_cep_reqr,string p_bairro_reqr,
                                    string p_uf_reqr,string p_cid_reqr,string p_email_requerido,string p_modalidade)
    {
        try
        {
            MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
            StringBuilder _comando = new StringBuilder();
//set @P_ID_PESSOA_REQUERENTE = <def value for this type>;
//set @P_NOME_REQUERENTE = <def value for this type>;
//set @P_EMAIL_REQUERENTE = <def value for this type>;
//set @P_UF_REQUERENTE = <def value for this type>;
//set @P_CIDADE_REQUERENTE = <def value for this type>;
//set @P_CONFLITO = <def value for this type>;
//set @P_VALOR_CAUSA = <def value for this type>;
//set @P_CPF_REQUERENTE = <def value for this type>;
//set @P_DT_NASC_REQUERENTE = <def value for this type>;
//set @P_ESTADO_CIVIL_REQ = <def value for this type>;
//set @P_PROFISSAO_REQUERENTE = <def value for this type>;
//set @P_NACIONAL_REQUERENTE = <def value for this type>;
//set @P_CTPS_REQUERENTE = <def value for this type>;
//set @P_RG_REQUERENTE = <def value for this type>;
//set @P_RG_ORGAO_REQUERENTE = <def value for this type>;
//set @P_TEL_REQUERENTE = <def value for this type>;
//set @P_CEL_REQUERENTE = <def value for this type>;
//set @P_END_REQUERENTE = <def value for this type>;
//set @P_CEP_REQUERENTE = <def value for this type>;
//set @P_BAIRRO_REQUERENTE = <def value for this type>;
//set @P_IND_REPRESENTANTE = <def value for this type>;
//set @P_TIPO_PESSOA_REQUERIDA = <def value for this type>;
//set @P_RAZAO_NOME_REQUERIDO = <def value for this type>;
//set @P_CNPJ_CPF_REQUERIDO = <def value for this type>;
//set @P_DT_NASC_REQUERIDO = <def value for this type>;
//set @P_PROFISSAO_REQUERIDO = <def value for this type>;
//set @P_NACIONAL_REQUERIDO = <def value for this type>;
//set @P_END_REQUERIDO = <def value for this type>;
//set @P_CEP_REQUERIDO = <def value for this type>;
//set @P_BAIRRO_REQUERIDO = <def value for this type>;
//set @P_UF_REQUERIDO = <def value for this type>;
//set @P_CIDADE_REQUERIDO = <def value for this type>;
//set @P_EMAIL_REQUERIDO = <def value for this type>;
//CALL `PRC_GERA_PROCEDIMENTO`( @P_ID_PROCEDIMENTO, @P_ID_PESSOA_REQUERENTE, @P_NOME_REQUERENTE, @P_EMAIL_REQUERENTE, @P_UF_REQUERENTE, @P_CIDADE_REQUERENTE, @P_CONFLITO, @P_VALOR_CAUSA, @P_CPF_REQUERENTE, @P_DT_NASC_REQUERENTE, @P_ESTADO_CIVIL_REQ, @P_PROFISSAO_REQUERENTE, @P_NACIONAL_REQUERENTE, @P_CTPS_REQUERENTE, @P_RG_REQUERENTE, @P_RG_ORGAO_REQUERENTE, @P_TEL_REQUERENTE, @P_CEL_REQUERENTE, @P_END_REQUERENTE, @P_CEP_REQUERENTE, @P_BAIRRO_REQUERENTE, @P_IND_REPRESENTANTE, @P_TIPO_PESSOA_REQUERIDA, @P_RAZAO_NOME_REQUERIDO, @P_CNPJ_CPF_REQUERIDO, @P_DT_NASC_REQUERIDO, @P_PROFISSAO_REQUERIDO, @P_NACIONAL_REQUERIDO, @P_END_REQUERIDO, @P_CEP_REQUERIDO, @P_BAIRRO_REQUERIDO, @P_UF_REQUERIDO, @P_CIDADE_REQUERIDO, @P_EMAIL_REQUERIDO);          

            //_comando.Append("SET P_ID_PROCEDIMENTO = '';");
            _comando.Append(" SET @P_ID_PESSOA_REQUERENTE ='' ;");
            _comando.Append (" SET @P_NOME_REQUERENTE = '" + p_nome_req.ToString ()+ "';");
            _comando.Append(" SET @P_EMAIL_REQUERENTE = '" + p_email_req.ToString() + "';");
            _comando.Append(" SET @P_UF_REQUERENTE = '" + p_uf_req.ToString() + "';");
            _comando.Append(" SET @P_CIDADE_REQUERENTE = '" + p_cid_req. ToString() + "';");
            _comando.Append(" SET @P_CONFLITO = '" + p_conflito.ToString() + "';");
            _comando.Append(" SET @P_VALOR_CAUSA = " + Convert.ToDecimal(p_vlr_causa).ToString() +";");
            _comando.Append(" SET @P_CPF_REQUERENTE = '" + p_cpf_req.ToString() + "';");
            _comando.Append(" SET @P_DT_NASC_REQUERENTE = '1900-01-01';");
            _comando.Append(" SET @P_ESTADO_CIVIL_REQ = 'INDEFINIDO';");
            _comando.Append(" SET @P_PROFISSAO_REQUERENTE = 'INDEFINIDO';");
            _comando.Append(" SET @P_NACIONAL_REQUERENTE = 'INDEFINIDO';");
            _comando.Append(" SET @P_CTPS_REQUERENTE = 'INDEFINIDO';");
            _comando.Append(" SET @P_RG_REQ_REQUERENTE= 'INDEF';");
            _comando.Append(" SET @P_RG_UF_REQUERENTE = '"+p_rg_req.ToString()+"';");
            _comando.Append(" SET @P_RG_ORGAO_REQUERENTE = '" + p_rg_org_req.ToString() + "';");
            _comando.Append(" SET @P_TEL_REQUERENTE = '" + p_tel_req.ToString() + "';");
            _comando.Append(" SET @P_CEL_REQUERENTE = '" + p_cel_req.ToString() + "';");
            _comando.Append(" SET @P_END_REQUERENTE = 'INDEFINIDO';");
            _comando.Append(" SET @P_CEP_REQUERENTE = '00000-000';");
            _comando.Append(" SET @P_BAIRRO_REQUERENTE = 'INDEFINIDO';");
            _comando.Append(" SET @P_IND_REPRESENTANT = 'N';");
            _comando.Append(" SET @P_TIPO_PESSOA_REQUERIDA = '" + p_tipo_pes_requerida.ToString() + "';");
            _comando.Append(" SET @P_RAZAO_NOME_REQUERIDO = '" + p_razao_nome_reqr.ToString() + "';");
            _comando.Append(" SET @P_CNPJ_CPF_REQUERIDO = '" + p_cnpj_cpf_reqr.ToString() + "';");
            _comando.Append(" SET @P_DT_NASC_REQUERIDO = '1900-01-01';");
            _comando.Append(" SET @P_PROFISSAO_REQUERIDO = 'INDEFINIDO';");
            _comando.Append(" SET @P_NACIONAL_REQUERIDO = 'INDEFINIDO';");
            _comando.Append(" SET @P_END_REQUERIDO = '" + p_end_reqr.ToString() + "';");
            _comando.Append(" SET @P_CEP_REQUERIDO = '" + p_cep_reqr.ToString() + "';");
            _comando.Append(" SET @P_BAIRRO_REQUERIDO = '" + p_bairro_reqr.ToString() + "';");
            _comando.Append(" SET @P_UF_REQUERIDO = '" + p_uf_reqr.ToString() + "';");
            _comando.Append(" SET @P_CIDADE_REQUERIDO = '" + p_cid_reqr.ToString() + "';");
            _comando.Append(" SET @P_EMAIL_REQUERIDO = '" + p_email_requerido.ToString() + "';");
            _comando.Append(" SET @P_MODALIDADE = '" + p_modalidade.ToString() + "';");

            _comando.Append(" CALL `PRC_GERA_PROCEDIMENTO`(  @P_ID_PESSOA_REQUERENTE, @P_NOME_REQUERENTE, @P_EMAIL_REQUERENTE, @P_UF_REQUERENTE, @P_CIDADE_REQUERENTE, @P_CONFLITO, @P_VALOR_CAUSA, @P_CPF_REQUERENTE, @P_DT_NASC_REQUERENTE, @P_ESTADO_CIVIL_REQ, @P_PROFISSAO_REQUERENTE, @P_NACIONAL_REQUERENTE, @P_CTPS_REQUERENTE, @P_RG_REQUERENTE, @P_RG_UF_REQUERENTE, @P_RG_ORGAO_REQUERENTE, @P_TEL_REQUERENTE, @P_CEL_REQUERENTE, @P_END_REQUERENTE, @P_CEP_REQUERENTE, @P_BAIRRO_REQUERENTE, @P_IND_REPRESENTANTE, @P_TIPO_PESSOA_REQUERIDA, @P_RAZAO_NOME_REQUERIDO, @P_CNPJ_CPF_REQUERIDO, @P_DT_NASC_REQUERIDO, @P_PROFISSAO_REQUERIDO, @P_NACIONAL_REQUERIDO, @P_END_REQUERIDO, @P_CEP_REQUERIDO, @P_BAIRRO_REQUERIDO, @P_UF_REQUERIDO, @P_CIDADE_REQUERIDO, @P_EMAIL_REQUERIDO,@P_MODALIDADE);");
                
            //                CALL `PRC_GERA_PROCEDIMENTO`(  @P_ID_PESSOA_REQUERENTE, @P_NOME_REQUERENTE, @P_EMAIL_REQUERENTE, @P_UF_REQUERENTE, @P_CIDADE_REQUERENTE, @P_CONFLITO, @P_VALOR_CAUSA, @P_CPF_REQUERENTE, @P_DT_NASC_REQUERENTE, @P_ESTADO_CIVIL_REQ, @P_PROFISSAO_REQUERENTE, @P_NACIONAL_REQUERENTE, @P_CTPS_REQUERENTE, @P_RG_REQUERENTE, @P_RG_UF_REQUERENTE, @P_RG_ORGAO_REQUERENTE, @P_TEL_REQUERENTE, @P_CEL_REQUERENTE, @P_END_REQUERENTE, @P_CEP_REQUERENTE, @P_BAIRRO_REQUERENTE, @P_IND_REPRESENTANTE, @P_TIPO_PESSOA_REQUERIDA, @P_RAZAO_NOME_REQUERIDO, @P_CNPJ_CPF_REQUERIDO, @P_DT_NASC_REQUERIDO, @P_PROFISSAO_REQUERIDO, @P_NACIONAL_REQUERIDO, @P_END_REQUERIDO, @P_CEP_REQUERIDO, @P_BAIRRO_REQUERIDO, @P_UF_REQUERIDO, @P_CIDADE_REQUERIDO, @P_EMAIL_REQUERIDO, @P_MODALIDADE);

            MySqlCommand _sql_comm = new MySqlCommand();

            string s_comando;
            s_comando = _comando.ToString();
            s_comando = s_comando.Replace('{',' ');


            _conn.Open();
            _sql_comm.CommandText = s_comando;
            _sql_comm.Connection = _conn;
            _sql_comm.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }

    public DataTable ObterValorServico(int id_servico)
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "SELECT * FROM TB_VALORES WHERE ID_SERVICO =  ";
        s_Comando += id_servico.ToString();
 
        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }

    public DataTable ObterPreCad(string email) {
        DataTable _retornoTabela = new DataTable();
        
        MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
        string s_Comando = "SELECT NOME, EMAIL,  DESCRICAO AS  'ORIGEM DO CLIENTE'  FROM TB_USUARIO;";

        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, _conn);
        try
        {
            _adapter.Fill(_retornoTabela);
            return _retornoTabela;

        }
        
        catch (Exception ex)
        {
            
            throw ex;
        
        }
        
        finally { 
            //Fechar conexão
            _conn.Close();
            _conn.Dispose();
            _adapter.Dispose();
        }
        
    }



    public DataTable ObterHistorico()
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = " SELECT DATA_INICIO,DESCRICAO,INICIO_TEXTO,SUBSTRING(CONTEUDO,1,30) AS CONTEUDO,LINK_VIDEO,DEMANDANTE,DEMANDADO,VALOR_CAUSA,ID_HISTORICO FROM TBV_HISTORICO  ";
       

        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }

    public DataTable ObterPesquisaSolicitacao(string p_solicitado)
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = " CALL PRC_LISTA_CONFLITOS_PESQUISA(" + p_solicitado.ToString() + ");";


        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }


    public DataTable ObterConflitos(string nome_solicitado) //Verificar uso do método.
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = " CALL PRC_LISTA_CONFLITOS_PESQUISA(" + nome_solicitado.ToString() + ");";


        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }


    //Adicionar parametros
    public DataTable ObterSolicitacao()
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = " CALL PRC_LISTA_SOLICITACAO();";
        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);

        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }


    public DataTable ObterSolicitacao_Cliente()
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = " CALL PRC_LISTA_SOLICITACAO_CLIENTE();";
        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);

        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }

    public DataTable ObterConflitos(string id_solicitado,int id_solicitante)
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = " CALL PRC_LISTA_CONFLITO_UNICO("+id_solicitante.ToString() + ",'" + id_solicitado.ToString().Trim()  + "');";

        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }

    public DataTable ObterHistorico(string nome,int opcao )
    {
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "SELECT DATA_INICIO,DESCRICAO,INICIO_TEXTO,SUBSTRING(CONTEUDO,1,30) AS CONTEUDO,LINK_VIDEO,DEMANDANTE,DEMANDADO,VALOR_CAUSA,ID_HISTORICO FROM TBV_HISTORICO WHERE ";
        if (opcao == 0)
        {
            s_Comando += " DEMANDANTE = '" + nome.Trim().ToString() + "'";
        }
        else
        {
            s_Comando += " DEMANDADO = '" + nome.Trim().ToString() + "'";
        }
        s_Comando += " ORDER BY ID_HISTORICO ;";
        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            _adapter.Fill(_dtRetorno);
            return _dtRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }

    public string ObterNome(string email)
    {
        string _sRetorno = "";
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;

        string s_Comando = "SELECT NOME FROM TB_USUARIO  WHERE EMAIL = '" + email.ToString().Trim() + "'  LIMIT 1;";
        MySqlConnection _conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mediacao"].ToString());
        MySqlCommand _comm = new MySqlCommand();      
        try
        {
            _conn.Open();
            _comm.Connection = _conn;
            _comm.CommandText = s_Comando;
            _sRetorno = _comm.ExecuteScalar().ToString();
   
            _conn.Close();

            return _sRetorno;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _comm.Dispose();
            _conn.Dispose();
            
        }
    }

    public DataTable CarregarMediador(string email)
    {
        DataTable _table = new DataTable();
        string _conn = ConfigurationManager.ConnectionStrings["Mediacao"].ToString();

        string _comando = "SELECT NOME FROM TB_MEDIADOR WHERE EMAIL_MED = '" + email.ToString() + "';";

        MySqlDataAdapter _adapter = new MySqlDataAdapter(_comando, _conn);
        try
        {
            _adapter.Fill(_table);
            return _table;
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    public DataTable ObterAgendaMediador(string email, string tipo_historico)
    {
        DataTable _table = new DataTable();
        string _conn = ConfigurationManager.ConnectionStrings["Mediacao"].ToString();
        //Comando select para trazer a agenda do mediador usando seu email como referência.
        string _comando = "SELECT SOLICITACAO.ID_SOLICITACAO, SOLICITACAO.DATA_SOLICITACAO, SOLICITACAO.MODALIDADE, SOLICITACAO.SERVICO, SOLICITACAO.ULTIMO_HISTORICO, SUBSTRING(SOLICITACAO.DESCRICAO_SOLICITACAO, 1,30) AS DESCRICAO,";
        _comando += "(CASE SOLICITACAO.TIPO_HISTORICO WHEN 1 THEN 'CRIADO' WHEN 2 THEN 'AGENDADO' WHEN 3 THEN 'REAGENDADO' WHEN 4 THEN 'EM ANDAMENTO' WHEN 5 THEN 'ENCERRADO' END) AS TIPO_HISTORICO  , MEDIADOR.ID_MEDIADOR, MEDIADOR.NOME, MEDIADOR.RG, MEDIADOR.CPF, MEDIADOR.CIDADE , MEDIADOR.ENDERECO ,MEDIADOR.EMAIL_MED, SOLICITADO.NOME_SOLICITADO, SOLICITADO.CPFCNPJ  , SOLICITADO.EMAIL_SOLICITADO, SOLICITADO.ENDERECO  , SOLICITADO.`BAIRRO_SOLICITADO`, SOLICITADO.CIDADE_SOLICITADO, SOLICITADO.TELEFONE";
        _comando += "FROM TB_SOLICITACAO SOLICITACAO INNER JOIN TB_SOLICITANTE SOLICITANTE ON SOLICITANTE.ID_SOLICITANTE = `SOLICITACAO`.IDSOLICITANTE JOIN TB_SOLICITADO  SOLICITADO ON SOLICITADO.ID_SOLICITADO = `SOLICITACAO`.IDSOLICITADO JOIN TB_MEDIADOR  MEDIADOR ON MEDIADOR.ID_MEDIADOR = SOLICITACAO.IDMEDIADOR WHERE MEDIADOR.EMAIL_MED = " + email.ToString() + "AND SOLICITACAO.TIPO_HISTORICO IN (" + tipo_historico.ToString() + ");";
       
        MySqlDataAdapter _adapter = new MySqlDataAdapter(_comando, _conn);
        try
        {
            _adapter.Fill(_table);
            return _table;
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }
    public DataTable ObterAgendaDiaria(int id_mediador,string tipo_historico)
    {
        
        DataTable _dtRetorno = new DataTable();
        string sconexao = ConfigurationManager.ConnectionStrings["Mediacao"].ConnectionString;
        //if (id_mediador == 0)
        //{ tipo_historico = "NDND"; }
        //string s_Comando = @"call PRC_LISTA_AGENDA (";
        //s_Comando += id_mediador.ToString() + ",'" + tipo_historico.ToString() + "');";
        string s_Comando = "";
        s_Comando = "SELECT  date_format(`TB_HISTORICO`.`DATA_INICIO`, '%d/%m/%Y') AS `DATA_INICIO`,";
        s_Comando += "substr(`TB_HISTORICO`.`TEXTO`, 1, 30) AS `INICIO_TEXTO`,";
        s_Comando += "`TB_HISTORICO`.`FLG_AVANCO` AS `FLG_AVANCO`,";
        s_Comando += " `TB_HISTORICO`.`LINK_VIDEO` AS `LINK_VIDEO`,";
        s_Comando += " `TB_DOCUMENTOS`.`DESCRICAO` AS `DESCRICAO`,";
        s_Comando += " `TB_HISTORICO`.`TEXTO` AS `CONTEUDO`,";
        s_Comando += " `TB_CONFLITOS`.`NOME_REQUERENTE` AS `DEMANDANTE`,";
        s_Comando += " `TB_CONFLITOS`.`RAZAO_NOME_REQUERIDO` AS `DEMANDADO`,";
        s_Comando += " `TB_CONFLITOS`.`VALOR_CAUSA` AS `VALOR_CAUSA`," ;
        s_Comando += " `TB_HISTORICO`.`ID_HISTORICO` AS `ID_HISTORICO`,";
        s_Comando += " `TB_MEDIADOR`.`NOME` AS `NOME`," ;
        s_Comando += " `TB_MEDIADOR`.`ID_MEDIADOR` AS `ID_MEDIADOR`,";
        s_Comando += " `TB_HISTORICO`.`TIPO_HISTORICO` AS `TIPO_HISTORICO`,";
        s_Comando += "  `TB_HISTORICO`.`DATA_HISTORICO` AS `DATA_HISTORICO`,";
        s_Comando += " `TB_HISTORICO`.`DATA_ENCERRAMENTO` AS `DATA_ENCERRAMENTO`,";
        s_Comando += " `TB_HISTORICO`.`ID_CONFLITO` AS `ID_CONFLITO`,";
        s_Comando += " `TB_HISTORICO`.`HORA_INICIO` AS `HORA_INICIO`,";
        s_Comando += " `TB_HISTORICO`.`HORA_FIM` AS `HORA_FIM`,";
        s_Comando += " (case `TB_HISTORICO`.`TIPO_HISTORICO`";
        s_Comando += "  when 1 then 'CRIADO'";
        s_Comando += "   when 2 then 'AGENDA'";
        s_Comando += "   when 3 then 'REAGENDADO'";
        s_Comando += "   when 4 then 'EM ANDAMENTO'";
        s_Comando += "   when 5 then 'ENCERRADO' end) AS `DESC_TIPO_HISTORICO`";
        s_Comando += " from ";
        s_Comando += " (((`TB_HISTORICO`";
        s_Comando += " join `TB_CONFLITOS` on ((`TB_HISTORICO`.`ID_CONFLITO` = `TB_CONFLITOS`.`ID_PROCEDIMENTO`)))";
        s_Comando += " left join `TB_DOCUMENTOS` on ((`TB_HISTORICO`.`ID_DOCUMENTOS` = `TB_DOCUMENTOS`.`ID_DOCUMENTOS`))) ";
        s_Comando += " join `TB_MEDIADOR` on ((`TB_MEDIADOR`.`ID_MEDIADOR` = `TB_HISTORICO`.`ID_MEDIADOR`)))";
        s_Comando += " WHERE `TB_MEDIADOR`.ID_MEDIADOR = " + id_mediador.ToString();
        s_Comando += " AND TIPO_HISTORICO IN ( " + tipo_historico.ToString() + ");";


        MySqlDataAdapter _adapter = new MySqlDataAdapter(s_Comando, sconexao);
        try
        {
            
                _adapter.Fill(_dtRetorno);
                return _dtRetorno;
            
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            _adapter.Dispose();
        }
    }
}