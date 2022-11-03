using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Text;
using System.Data;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["CaminhoCV"] = Session["cv"].ToString();
        Session["CaminhoFoto"] = Session["foto"].ToString();
        Session["Arquivos"] = Session["CheckBoxArquivos"].ToString();
    }

    protected void ImageButtonCadMed_Click(object sender, ImageClickEventArgs e)
    {
        if (!ChecarCampos())
        {

        }
        else
        {

            if (TextBoxAcaoMed.Text == "I")
            {
                EquilibrioClasse InsereMed = new EquilibrioClasse();
                InsereMed.Inserir_Mediador(TextBoxNomeMed.Text, TextBoxEndMed.Text, TextBoxCepMed.Text, TextBoxBairroMed.Text, TextBoxCidadeMed.Text, TextBoxUFMed.Text, TextBoxEmailMed.Text, DropDownFUNCAO.SelectedItem.ToString(), CheckBoxFLGAtivo.Checked ? 1 : 0, Session["CaminhoCV"].ToString(), Session["CaminhoFoto"].ToString(), Session["Arquivos"].Equals(1) ? 1 : 0);
                Session["EmailMediador"] = TextBoxEmailMed.Text;
                Response.Write("<script type=text/javascript>alert('Cadastro Concluido com Sucesso!') </script>");
                Response.Redirect("MenuEquilibrio.aspx");
            }

            else
            {
                EquilibrioClasse AlteraMed = new EquilibrioClasse();
                AlteraMed.AlterarMediador(Convert.ToInt32(GridViewMediador.SelectedDataKey["ID_MEDIADOR"].ToString()),
                TextBoxNomeMed.Text, TextBoxEndMed.Text, TextBoxCepMed.Text, TextBoxBairroMed.Text, TextBoxCidadeMed.Text, TextBoxUFMed.Text, TextBoxEmailMed.Text, DropDownFUNCAO.SelectedItem.ToString(), CheckBoxFLGAtivo.Checked ? 1 : 0, Session["CaminhoCV"].ToString(), Session["CaminhoFoto"].ToString(), Session["Arquivos"].Equals(1) ? 1 : 0);
                Response.Write("<script type=text/javascript>alert('Cadastro Alterado com Sucesso!') </script>");

            }
        }

        //Atualizar o grid
        GridViewMediador.DataBind();
        
        //Limpeza da tela
        Limpar_tela();
        TextBoxAcaoMed.Text = "I";
    }

    bool ChecarCampos()
    {
        bool _retorno = true;
        if (TextBoxBairroMed.Text.Trim().Length == 0 ||
                TextBoxCepMed.Text.Trim().Length == 0 ||
                TextBoxCidadeMed.Text.Trim().Length == 0 ||
                TextBoxEmailMed.Text.Trim().Length == 0 ||
                TextBoxEndMed.Text.Trim().Length == 0 ||
                TextBoxNomeMed.Text.Trim().Length == 0 ||
                TextBoxUFMed.Text.Trim().Length == 0)
        {
            Response.Write("<script type=text/javascript>alert('Verifique os dados digitados') </script>");
            _retorno = false;
        }
        return _retorno;
    }

    void Limpar_tela()
    {
        TextBoxAcaoMed.Text = "I";
        TextBoxNomeMed.Text = string.Empty;
        TextBoxEndMed.Text = string.Empty;
        TextBoxCepMed.Text = string.Empty;
        TextBoxBairroMed.Text = string.Empty;
        TextBoxCidadeMed.Text = string.Empty;
        TextBoxUFMed.Text = string.Empty;
        TextBoxEmailMed.Text = string.Empty;
        DropDownFUNCAO.SelectedIndex = -1;
        CheckBoxFLGAtivo.Checked = false;
    }

    protected void GridViewMediador_SelectedIndexChanged(object sender, EventArgs e)
    {

        try
        {
            TextBoxAcaoMed.Text = "A";
            TextBoxNomeMed.Text = GridViewMediador.SelectedDataKey["NOME"].ToString();
            TextBoxEndMed.Text = GridViewMediador.SelectedDataKey["ENDERECO"].ToString();
            TextBoxCepMed.Text = GridViewMediador.SelectedDataKey["CEP"].ToString();
            TextBoxBairroMed.Text = GridViewMediador.SelectedDataKey["BAIRRO"].ToString();
            TextBoxCidadeMed.Text = GridViewMediador.SelectedDataKey["CIDADE"].ToString();
            TextBoxUFMed.Text = GridViewMediador.SelectedDataKey["UF"].ToString();
            TextBoxEmailMed.Text = GridViewMediador.SelectedDataKey["EMAIL_MED"].ToString();
            DropDownFUNCAO.SelectedValue = GridViewMediador.SelectedDataKey["FUNCAO"].ToString();
            CheckBoxFLGAtivo.Checked = Convert.ToBoolean(GridViewMediador.SelectedDataKey["FLG_ATIVO"].ToString());
        }
        catch (Exception ex)
        {
            throw ex;

        }

    }
    protected void ImageButtonSair_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Response.Redirect("Acesso.aspx");
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
    
}