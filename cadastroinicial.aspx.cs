using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cadastroinicial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    Boolean checa_digitacao()
    {
        bool _return = true;
        try
        {
            if(TextBoxEmail.Text.Trim().Length ==0)
            {
                _return = false ;
            }
            else if(TextBoxNome.Text.Trim().Length ==0)
            {
                _return = false;
            }
            else if (TextBoxtelefone.Text.Trim ().Length ==0)
            {
                _return = false;
            }
            else if (TextBoxCPF.Text .Trim().Length ==0)
            {
                _return = false ;
            }

            return _return;
        }
        catch (Exception)
        {
            
            throw;
        }
    }
    Boolean checa_senhas()
    {
        bool _retorna = true;
        try
        {
            if (TextBoxSenha.Text.Trim().Length == 00 || TextBoxConfSenha.Text.Trim().Length == 0)
            {
                _retorna = false;
            }
            if (TextBoxSenha.Text != TextBoxConfSenha.Text )
            {
                _retorna = false;
            }
            return _retorna;
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    void limpa_pagina()
    {
        try
        {
            TextBoxConfSenha.Text = string.Empty;
            TextBoxSenha.Text = string.Empty;
            TextBoxNome.Text = string.Empty;
            TextBoxtelefone.Text = string.Empty;
            TextBoxEmail.Text = string.Empty;
            TextBoxCPF.Text = string.Empty;
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void btnConfirma_Click1(object sender, ImageClickEventArgs e)
    {


        try
        {
            if (!checa_senhas())
            {
                Response.Write("<script type=text/javascript>alert('Verifique as senhas por favor ') </script>");

            }
            else if (!checa_digitacao())
            {
                Response.Write("<script type=text/javascript>alert('Verifique as informacoes por favor ') </script>");
            }
            else
            {
                EquilibrioClasse _objUsuario = new EquilibrioClasse();
                _objUsuario.InserirUsuarios(TextBoxNome.Text, TextBoxtelefone.Text, TextBoxSenha.Text, TextBoxEmail.Text, TextBoxCPF.Text);
                limpa_pagina();
                Response.Write("<script type=text/javascript>alert('Vamos direcionálo pra pagina de serviços ') </script>");
                Response.Redirect("ProcedimentoInicial.aspx");
            }

        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
}