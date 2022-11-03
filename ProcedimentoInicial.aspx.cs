using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using br.com.correios.apps;

public partial class ProcedimentoInicial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnPesquisaCep_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            AtendeClienteService _obcep = new AtendeClienteService();
            txtend_req.Text = _obcep.consultaCEP(txtCEP_req.Text).end.ToString();
            txtBairro_Req.Text = _obcep.consultaCEP(txtCEP_req.Text).bairro.ToString();
            txtCidade_Req.Text = _obcep.consultaCEP(txtCEP_req.Text).cidade.ToString();
            ddlUF_Req.SelectedValue = _obcep.consultaCEP(txtCEP_req.Text).uf.ToString();
            _obcep.Dispose();

        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void TextBox19_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnConfirma_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            EquilibrioClasse _objProc = new EquilibrioClasse();
            _objProc.InserirProcedimento(txtnome_req.Text.ToString(),
                                         txtemail_req.Text,
                                         ddlUF_Req.SelectedItem.ToString(),
                                         txtCidade_Req.Text.ToString(),
                                         txtconflito.Text,
                                         Convert.ToDecimal(txtValorCausa.Text),
                                         txtCPF_Req.Text,
                                         txtRG_Req.Text,
                                         txtOrgao_Req.Text,
                                         txtTel_Req.Text,
                                         txtCel_Req.Text,
                                         "",
                                         "",
                                         "",
                                         ddlTipoReqr.SelectedValue.ToString(),
                                         txtRazao_Demandado.Text,
                                         CNPJ_CPF_Demandado.Text,
                                         txtEndereco_Demanda.Text,
                                         txtCEP_Demanda.Text,
                                         txtBairro_Demanda.Text,
                                         ddlUF_Demanda.SelectedValue.ToString(),
                                         txtCidade_Demanda.Text,
                                         txtEmail_Demandado.Text,
                                         ddlModalidade.SelectedItem.ToString());
   
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void BtnPesquisaCep0_Click(object sender, ImageClickEventArgs e)
    {
        AtendeClienteService _obcep = new AtendeClienteService();
        txtEndereco_Demanda.Text = _obcep.consultaCEP(txtCEP_Demanda.Text).end.ToString();
        txtBairro_Demanda.Text = _obcep.consultaCEP(txtCEP_Demanda.Text).bairro.ToString();
        txtCidade_Demanda.Text = _obcep.consultaCEP(txtCEP_Demanda.Text).cidade.ToString();
        ddlUF_Demanda.SelectedValue = _obcep.consultaCEP(txtCEP_Demanda.Text).uf.ToString();
        _obcep.Dispose();

    }
    protected void btnSegue_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Agendamento.aspx");
    }
}