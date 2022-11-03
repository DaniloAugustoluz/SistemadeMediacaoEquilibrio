using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PesquisaAcao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        LabelPesquisador.Text = Session["nome_usuario"].ToString();
        

    }
    protected void ImageButtonPesquisa_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (RadioButtonListDemanda.SelectedValue.ToString() == "0") // demandante 
            {

            }
            ObjectServicos.SelectParameters[0].DefaultValue = Session["nome_usuario"].ToString().Trim();
            ObjectServicos.SelectParameters[1].DefaultValue = RadioButtonListDemanda.SelectedValue.ToString();
            ObjectServicos.DataBind();
            GridViewHistorico.DataBind();
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void GridViewHistorico_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}