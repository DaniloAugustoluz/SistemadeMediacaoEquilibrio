using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InserirDocumento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownListUso_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            ObjDSDocumento.SelectParameters[0].DefaultValue = DropDownListUso.SelectedValue.ToString();
            ObjDSDocumento.DataBind();
        }
        catch (Exception ex) 
        {
            
            throw ex;
        }
    }
    protected void GridViewDocumento_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            TextBoxAcao.Text = "A";
            DropDownListUso.SelectedValue = GridViewDocumento.SelectedDataKey ["USO_DOCUMENTO"].ToString ();
            DropDownListModalidade.SelectedValue = GridViewDocumento.SelectedDataKey["MODALIDADE"].ToString();
            TextBoxDocumento.Text = GridViewDocumento.SelectedDataKey["DESCRICAO"].ToString();
            CheckBoxFLG_ATIVO.Checked = Convert.ToBoolean (GridViewDocumento.SelectedDataKey["FLG_ATIVO"]);
            FreeTextBoxDoc.Text = GridViewDocumento.SelectedDataKey["CONTEUDO"].ToString();
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
    protected void ImageButtonCadDoc_Click(object sender, ImageClickEventArgs e)
    {
        try
        { 
            EquilibrioClasse _objdocumento = new EquilibrioClasse();
            if (TextBoxAcao .Text == "I")
            {
                _objdocumento.InserirDocumento(TextBoxDocumento.Text, FreeTextBoxDoc.Text, Convert.ToBoolean(CheckBoxFLG_ATIVO.Checked), DropDownListUso.SelectedValue.ToString(),DropDownListModalidade.SelectedValue .ToString ());
                Response.Write("<script type=text/javascript>alert('Cadastro Concluido com Sucesso!') </script>");
            }
            else
            {
                _objdocumento.AlterarDocumento(Convert.ToInt32(GridViewDocumento.SelectedDataKey["ID_DOCUMENTOS"].ToString()), TextBoxDocumento.Text, FreeTextBoxDoc.Text, Convert.ToBoolean(CheckBoxFLG_ATIVO.Checked), DropDownListUso.SelectedValue.ToString(), DropDownListModalidade.SelectedValue.ToString());
                Response.Write("<script type=text/javascript>alert('Cadastro Alterado com Sucesso!') </script>");

            }
            Atualiza_Pagina();
          
            TextBoxAcao.Text = "I";
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    void Atualiza_Pagina()
    {
        ObjDSDocumento.DataBind();
        GridViewDocumento.DataBind();
        TextBoxDocumento.Text = string.Empty;
        FreeTextBoxDoc.Text = string.Empty;
        DropDownListModalidade.SelectedIndex = 0;
        DropDownListUso.SelectedIndex = 0;

    }
}