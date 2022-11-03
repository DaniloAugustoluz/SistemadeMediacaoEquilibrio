using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AgendaDiaria : System.Web.UI.Page
{
    int id_mediador = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //id_mediador = Convert.ToInt16 (Request.QueryString["Media"]);

        ObjectDSAgenda.SelectMethod = "ObterAgendaDiaria";
        ObjectDSAgenda.SelectParameters[0].DefaultValue = id_mediador.ToString ();
        ObjectDSAgenda.SelectParameters[1].DefaultValue = "0";
        ObjectDSAgenda.DataBind();
    }
    protected void ButtonAgenda_Click(object sender, EventArgs e)
    {
        try
        {
            TextBoxAcao.Text = "ag"; // agenda
            PanelAgenda.Visible = true;
            PanelAgenda.Enabled = true;
            RadioButtonAtual.Enabled = true;
            RadioButtonEmAndamento.Enabled = true;
            RadioButtonEncerrado.Enabled = true;
            

            PanelAtendimento.Visible = false;
            PanelAtendimento.Enabled = false;
        }
        catch (Exception ex )
        {
            
            throw ex;
        }
    }
    protected void ButtonAtendimento_Click(object sender, EventArgs e)
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
                Response.Write("<script type=text/javascript>alert('Por favor, escolha um item na lista de atendimento ') </script>");
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }

    }
    protected void RadioButtonAtual_CheckedChanged(object sender, EventArgs e)
    {
        ObjectDSAgenda.SelectMethod = "ObterAgendaDiaria";
        ObjectDSAgenda.SelectParameters[0].DefaultValue = DropDownListMediador.SelectedValue.ToString ();
        ObjectDSAgenda.SelectParameters[1].DefaultValue = "2,3";
        ObjectDSAgenda.DataBind();
        RadioButtonEmAndamento.Checked = false;
        RadioButtonEncerrado.Checked = false;
        GridViewAgenda1.DataBind();
    }
    protected void RadioButtonEmAndamento_CheckedChanged(object sender, EventArgs e)
    {
        ObjectDSAgenda.SelectParameters[0].DefaultValue = id_mediador.ToString();
        ObjectDSAgenda.SelectParameters[1].DefaultValue = "4";
        ObjectDSAgenda.DataBind();
        RadioButtonAtual.Checked = false;
        RadioButtonEncerrado.Checked = false;
        FreeTextBoxAgenda.EnableToolbars = true;
        FreeTextBoxAgenda.ReadOnly = false;
    }
    protected void RadioButtonEncerrado_CheckedChanged(object sender, EventArgs e)
    {
        RadioButtonEmAndamento.Checked = false;
        RadioButtonAtual .Checked = false;
    }
    protected void ImageButtonConfirma_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            EquilibrioClasse _objAgenda = new EquilibrioClasse();
            _objAgenda.InserirAgendamento(Convert.ToInt32(GridViewAgenda1.SelectedDataKey["ID_CONFLITO"].ToString())
                                            , 0, Convert.ToDateTime (GridViewAgenda1.SelectedDataKey["DATA_INICIO"].ToString())
                                            , 1, FreeTextBoxAgenda.Text
                                            , Convert.ToInt32 (GridViewAgenda1.SelectedDataKey["ID_MEDIADOR"].ToString())
                                            , DateTime.Now
                                            , 4
                                            , GridViewAgenda1.SelectedDataKey["HORA_INICIO"].ToString()
                                            , DateTime.Now.ToShortTimeString());
            TextBoxComentarios.Text = string.Empty;
            FreeTextBoxAtende.Text = string.Empty;
            Response.Write("<script type=text/javascript>alert(' Registro Processado ') </script>");

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
        FreeTextBoxAgenda.Text = GridViewAgenda1.SelectedDataKey ["CONTEUDO"].ToString ();
        FreeTextBoxAtende.Text = GridViewAgenda1.SelectedDataKey["CONTEUDO"].ToString();
        FreeTextBoxAgenda.EnableToolbars = false;
        FreeTextBoxAgenda.ReadOnly = true;

//   busca os documentos
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
            FreeTextBoxAtende.Text = _objConteudo.ObterConteudoDocumento(Convert.ToInt32 (DropDownListDocAgenda.SelectedValue)).ToString();
        }
        catch (Exception ex )
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
            FreeTextBoxAgenda.Text = GridViewAgenda1.SelectedDataKey ["CONTEUDO"].ToString ();
        }
        catch (Exception ex )
        {
            
            throw ex;
        }
    }
    protected void DropDownListMediador_SelectedIndexChanged(object sender, EventArgs e)
    {
        id_mediador = Convert.ToInt16 (DropDownListMediador.SelectedValue);
    }
}