using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Acesso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
              

    }

    protected void btnNovo_Click(object sender, EventArgs e)
    {
        Session["opcaoacesso"] = "c";  // novo
        btnConfirma.Visible = true;
        Panel1.Visible = true;
        
    }
    protected void btnConfirma_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Session["emailacesso"] = txtemail.Text;
            if (Session["opcaoacesso"] == "c")
            {
                // fazer a consistencia do usuario e senha que estão acessando.
                EquilibrioClasse _objUsuario = new EquilibrioClasse();
                if(_objUsuario.ValidaPreCad(txtemail.Text.Trim(), txtsenha.Text.Trim()) == true)
                {
                    //Cadastro do site para mediador, conciliador ou arbitro
                    Session["nome_usuario"] = _objUsuario.ObterNome(txtemail.Text);
                    Response.Redirect("MenuEquilibrio.aspx");
                }
                else if (_objUsuario.ValidaUsuario(txtemail.Text.Trim(), txtsenha.Text.Trim()) == true)
                {
                    Session["nome_usuario"] = _objUsuario.ObterNome(txtemail.Text);
                    Response.Redirect("PesquisaAcao.aspx");
                }
                else
                {
                    Response.Write("<script type=text/javascript>alert('Verifique senha e usuario, por favor ') </script>");
                }
            }           
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void btnCliente_Click(object sender, EventArgs e)
    {
   
    }
    protected void ImageButtonNovoCadastro_Click(object sender, ImageClickEventArgs e)
    {
        Session["opcaoacesso"] = "n";  // cliente
        //btnConfirma.Visible = false;
        Panel1.Visible = false;
        Response.Redirect("CadastroMediador.aspx");
    }
    protected void ImageButton1Cliente_Click(object sender, ImageClickEventArgs e)
    {
        Session["opcaoacesso"] = "c";  // cliente
        btnConfirma.Visible = true;
        Panel1.Visible = true;
    }
    protected void btnSair_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Acesso.aspx");
    }

    protected void ImageButtonSolicitarServico_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SolicitaServico.aspx");
    }
}