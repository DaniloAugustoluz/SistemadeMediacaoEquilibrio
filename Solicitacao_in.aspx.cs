using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using br.com.correios.apps;

public partial class Solicitacao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnConfirma_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (ChecarDigitado() == true)
            {
                int tipo_pessoa;
                tipo_pessoa = (TextBoxCNPJ.Text.Trim().Length >= 18 ? 2 : 1);
                EquilibrioClasse _objpessoa = new EquilibrioClasse();
                _objpessoa.InserirPessoas(tipo_pessoa, TextBoxNome.Text, TextBoxEndereco.Text, TextBoxCEP.Text, TextBoxBairro.Text
                        , TextBoxCidade.Text
                        , ddlUF.SelectedItem.ToString()
                        , TextBoxCNPJ.Text
                        , TextBoxTel.Text
                        , TextBoxCelular.Text
                        , TextBoxEmail.Text
                        , Convert.ToByte(DropDownContato.SelectedValue)
                        , TextBoxEmailContato.Text
                        , TextBoxContato.Text
                        , TextBoxNumero.Text
                        , TextBoxComplemento.Text);
                MostrarMSG(" Registro Processado ", "Portal Equilibrio");
                LimparPagina();
            }
            else { MostrarMSG(" Veja o simbolo (*) e preencha os dados ", "Portal Equilibrio"); }
        }
        catch (Exception Erro)
        {
            
            MostrarErro (Erro.Message ,"02- Aciona Inserir Pessoa ");
        }
    }
    protected void TextBoxTel_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void BtnPesquisaCep_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            AtendeClienteService _objCorreios = new AtendeClienteService();
            TextBoxBairro.Text =  _objCorreios.consultaCEP(TextBoxCEP.Text).bairro;
            TextBoxCidade.Text = _objCorreios.consultaCEP(TextBoxCEP.Text).cidade;
            TextBoxEndereco.Text = _objCorreios.consultaCEP(TextBoxCEP.Text).end;
            TextBoxComplemento.Text = _objCorreios.consultaCEP(TextBoxCEP.Text).complemento2;
            ddlUF.SelectedValue = _objCorreios.consultaCEP(TextBoxCEP.Text).uf;
            _objCorreios.Dispose();
            if (TextBoxDataCadastro.Text.Trim().Length ==0)
            {
            TextBoxDataCadastro.Text = DateTime.Now.ToShortDateString() + DateTime.Now.ToShortTimeString();
            }

        }
        catch (Exception ERRO)
        {
            
            MostrarErro(ERRO.Message ,"01-ProcuraCep");
        }
    }

    void MostrarErro(string Message, string Numero)
    { 
        Response.Write("<script>alert('"+Message.ToString ()+ " Erro num = " +Numero.ToString() + "');</script>");
    }
    void MostrarMSG(string Message, string Caption)
    {
        Response.Write("<script>alert('" + Caption.ToString() + " " + Message.ToString() + "');</script>");
    }
    void LimparPagina()
    { 
     try
     {
         //System.Web.UI.ControlCollection _pagina;
         //_pagina = this.Controls;
         //foreach (Control ctrlObj in _pagina)
         //    { 
         //        // textbox
         //        if (ctrlObj is TextBox)
         //            (ctrlObj as TextBox).Text = string.Empty;
         //        // dropdown
         //        if (ctrlObj is DropDownList)
         //            (ctrlObj as DropDownList).ClearSelection();
         //        // listbox
         //        if (ctrlObj is ListBox)
         //            (ctrlObj as ListBox).ClearSelection();
         //        // checkbox
         //        if (ctrlObj is CheckBox)
         //          text  (ctrlObj as CheckBox).Checked = false;
         //    }

         TextBoxBairro.Text = string.Empty;
         TextBoxCelular.Text = string.Empty;
         TextBoxCEP.Text = string.Empty;
         TextBoxCidade.Text = string.Empty;
         TextBoxCNPJ.Text = string.Empty;
         TextBoxComplemento.Text = string.Empty;
         TextBoxContato.Text = string.Empty;
         TextBoxDataCadastro.Text = string.Empty;
         TextBoxEmail.Text = string.Empty;
         TextBoxEmailContato.Text = string.Empty;
         TextBoxEndereco.Text = string.Empty;
         TextBoxNome.Text = string.Empty;
         TextBoxNumero.Text = string.Empty;
         TextBoxTel.Text = string.Empty;
         ddlUF.ClearSelection();
         DropDownContato.ClearSelection();



        }
     
	catch (Exception ERRO)
        {
            
            MostrarErro(ERRO.Message ,"03-Limpeza da Pagina");
        }
    }

    bool ChecarDigitado()
    {
        bool _retorno = true;
        
        if (TextBoxEndereco.Text.Trim().Length == 0){LabelChkEnd.Visible = true;_retorno = false;}
        else { LabelChkEnd.Visible = false; }

        if (TextBoxNumero.Text.Trim().Length == 0) { LabelChkNumero.Visible = true; _retorno = false; }
        else { LabelChkNumero.Visible = false; }

         
        if(TextBoxComplemento.Text.Trim().Length ==0){LabelChkCompl.Visible = true;_retorno = false ;}
        else {LabelChkCompl.Visible = false;}

        if(TextBoxBairro.Text.Trim().Length ==0 ){LabelChkBairro.Visible = true;_retorno = false;}
        else {LabelChkBairro.Visible = false; }
        
        if(TextBoxCidade.Text.Trim().Length ==0){LabelChkCidade .Visible = true;_retorno = false;}
        else {LabelChkCidade.Visible = false ;}

        if(TextBoxTel.Text.Trim ().Length ==0){LabelChkTel.Visible = true;_retorno = false;}
        else {LabelChkTel.Visible = false;}

        if(TextBoxCelular.Text.Trim().Length ==0){LabelChkCel.Visible = true;_retorno = false;}
        else {LabelChkCel.Visible = false;}

        if (TextBoxEmail.Text.Trim().Length == 0) { LabelChkEmail.Visible = true; _retorno = false; }
        else { LabelChkEmail.Visible = false; }

        if (TextBoxContato.Text.Trim().Length == 0) { LabelChkContato.Visible = true; _retorno = false; }
        else { LabelChkContato.Visible = false; }

        if (TextBoxEmailContato.Text.Trim().Length == 0) { LabelChkEmailCont.Visible = true; _retorno = false; }
        else { LabelChkEmailCont.Visible = false; }

        // checar os emails

        if (!TextBoxEmailContato.Text.Contains("@")) { LabelChkEmailCont.Visible = true; _retorno = false; }
        else { LabelChkEmailCont.Visible = false; }

        if (!TextBoxEmailContato.Text.Contains(".com")) { LabelChkEmailCont.Visible = true; _retorno = false; }
        else { LabelChkEmailCont.Visible = false; }

        if (!TextBoxEmail.Text .Contains("@")) { LabelChkEmail.Visible = true; _retorno = false; }
        else { LabelChkEmail.Visible = false; }

        if (!TextBoxEmail.Text.Contains(".com")) { LabelChkEmail.Visible = true; _retorno = false; }
        else { LabelChkEmail.Visible = false; }


        return _retorno;
    }


}