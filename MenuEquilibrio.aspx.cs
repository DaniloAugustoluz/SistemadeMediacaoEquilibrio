using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MenuEquilibrio :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LabelInformacao.Text = "Sistema de Mediação, Arbitragem e Conciliação.";


        // Verifica se os arquivos já foram adicionados e avisa o usuário.
       Session["email"] = Session["emailacesso"].ToString();
        EquilibrioClasse classe = new EquilibrioClasse();
        var retorno = classe.ObterFlagArquivo(Session["email"].ToString());

        if (retorno.Equals(1))
        {
        }
        else 
        {
            //Response.Write("<script type/textjavascript>alert('POR FAVOR ACESSE A PÁGINA DE ARQUIVOS, PARA ANEXAR SEUS DOCUMENTOS.')</script>");
        }
    }

    public int salvarFlag() {
        flag classe = new flag();
        int flag = classe.Mflag;

        return flag;
    }

    protected void ImageButtonSAIR_Click(object sender, ImageClickEventArgs e)
    {
        Session["Controle"] = 0;
        Response.Redirect("Acesso.aspx");
    }

    protected void ImageButtonColaborador_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Response.Redirect("AdicionaCV.aspx");
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void ImageButtonAgenda_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("InserirDocumento.aspx");
    }
    protected void ImageButtonConfigurador_Load(object sender, EventArgs e)
    {
        LabelDescritivo.Text = "Configura os acessos e locais de arquivos";
    }
    protected void ImageButtonColaborador_Load(object sender, EventArgs e)
    {
        LabelDescritivo.Text = "Cadastro de Mediador";
    }
    protected void ImageButtonConfigurador_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButtonAlocaMediador_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Response.Redirect("AlocarMediador.aspx");
    
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void ImageButtonAponta_Click(object sender, ImageClickEventArgs e)
    {
        //QUERY - STRING
        Response.Redirect("AgendaDiaria.aspx?Media=1");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (salvarFlag() == 1)
        {
            Session["verificacao"] = salvarFlag();
        }
        Response.Redirect("AdicionaCV.aspx");
    }
}