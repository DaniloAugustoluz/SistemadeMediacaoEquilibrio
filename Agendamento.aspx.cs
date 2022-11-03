using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Agendamento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownServico_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            EquilibrioClasse _objValor = new EquilibrioClasse();

            //GridViewPrecos.DataSource = ObjVALORES;
                //_objValor.ObterValorServico(Convert.ToInt16(DropDownServico.SelectedValue)).DefaultView;
            ObjVALORES.SelectParameters[0].DefaultValue = DropDownServico.SelectedValue;
            ObjVALORES.DataBind();
            GridViewPrecos.DataBind();
        }
        catch (Exception ex )
        {
            
            throw ex;
        }
    }
    protected void GridViewPrecos_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnConfirma.Visible = true;
    }
    protected void btnConfirma_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Pagamento.aspx");
    }
}