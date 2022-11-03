using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
/// <summary>
/// Summary description for flag
/// </summary>
public class flag : System.Web.UI.Page
{
    private int _flag;
    private string _retornaAcao;

    public string MAcao 
    {
        get { return _retornaAcao;}
        set { _retornaAcao = value; }
       
    }

    public int Mflag
    {
        get {return _flag; } 
        set { _flag = value; }
    }
    	
    public int flagretorno(int retorno)
	{
       Mflag = retorno;

       return Mflag;
	}

    public string flagAcaoretorno(string retorno)
    {
        MAcao = retorno;

        return MAcao;
    }

    public string Acao(){
        return _retornaAcao;
    }
    public bool retornaFlag(int flag) {
        
        bool retornaflag = false;
        int retorno = flag;
        
        if(retorno == 1){
            retornaflag = true;      
        }

        return retornaflag;
    }

    public string retornaflagAcao(){
        string flagAcao = this.MAcao;
        return flagAcao;
    }

    public string retornaAcao(string acao) {
        _retornaAcao = acao;

        return _retornaAcao;
    }

    public string SalvarTxt(string txt) {
        _retornaAcao = txt;
        
        return _retornaAcao;
    }
}