using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Mime;

public partial class AlocarMediador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (DropDownListOrigem.SelectedValue == "<< Selecione >>")
        {
            ImageButtonVoltar.Visible = true;
        }
        else {
            ImageButtonVoltar.Visible = false;
        }
    }

    protected void ImageButtonSair_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void ImageButtonConfirma_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (TextBoxAgenda.Text.Trim().Length == 0)
            {
                Response.Write("<script type=text/javascript>alert('Por favor, informe a data do evento ') </script>");
            }
            else if(TextBoxHoraFim.Text .Trim().Length == 0)
            {
                Response.Write("<script type=text/javascript>alert('Por favor, verifique as horas do evento ') </script>");
            }
            else if (TextBoxHoraInicio.Text.Trim().Length == 0)
            {
                Response.Write("<script type=text/javascript>alert('Por favor, verifique as horas  do evento ') </script>");
            }
            else
            {
                EquilibrioClasse _agenda = new EquilibrioClasse();
                _agenda.InserirAgendamentoAdm(Convert.ToInt16(GridViewContratos.SelectedDataKey["ID_SOLICITACAO"])
                                            , 0, Convert.ToDateTime(TextBoxAgenda.Text), 1,FreeTextBoxConvocacao .Text
                                            , Convert.ToInt32(DropDownListColaborador.SelectedValue), DateTime.Now, 0
                                            , TextBoxHoraInicio.Text, TextBoxHoraFim.Text, TextBoxEmailConvidado.Text,TextBoxlinkvideo.Text);

                GridViewContratos.DataBind();
                
                Response.Write("<script type=text/javascript> alert('Registro processado!') </script>");
                Limpa_tela();
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }

    }
    void Limpa_tela()
    {
        TextBoxHoraFim.Text = string.Empty;
        TextBoxHoraInicio.Text = string.Empty;
        TextBoxlinkvideo.Text = string.Empty ;
        TextBoxEmailConvidado.Text = string.Empty ;
        TextBoxAgenda.Text = string.Empty ;
        TextBoxAgenda.Enabled = false;
        TextBoxHoraFim.Enabled =false ;
        TextBoxHoraInicio.Enabled = false ;
        TextBoxDemandado.Text = string.Empty;
        CheckBoxEmail.Checked = false;
        FreeTextBoxConvocacao.Text = String.Empty;
        //TextBoxEmailConvidado.Enabled = false ;
    }
    void EnviarEmail(string p_email)
    {
        try
        {
            MailMessage _email = new MailMessage();
                _email.From = new MailAddress("danilo.augusto@volit.com.br", "Sistema MOL - Equilibrio", System.Text.Encoding.UTF8);
                _email.To.Add(new MailAddress(p_email));
                _email.To.Add(new MailAddress("zuleica.margutti.mediacaoonline@equilibrio.volitsistemas.com.br"));
                _email.Subject = "Carta convite - Equilibrio Camara de Mediação " ;
                _email.Body = "Prezado Sr, você foi convidado a participar de uma reunião conosco. Segue anexo carta de convite ";
                _email.Body += FreeTextBoxConvocacao.Text;
                _email.IsBodyHtml = true;
                _email.Priority = MailPriority.High;

            //// faz o attach do word
            
            //Attachment data = new Attachment(, MediaTypeNames.Application.Octet);
            ////// Add time stamp information for the file.
            //ContentDisposition disposition = data.ContentDisposition;
            //disposition.CreationDate = System.IO.File.GetCreationTime(arquivo_);
            //disposition.ModificationDate = System.IO.File.GetLastWriteTime(arquivo_);
            //disposition.ReadDate = System.IO.File.GetLastAccessTime(arquivo_);
            //// Add the file attachment to this email message.
            //_email.Attachments.Add(data);

            
            SmtpClient smtp = new SmtpClient();

            smtp.EnableSsl = false;
            smtp.Credentials = new System.Net.NetworkCredential("danilo.augusto@volit.com.br", "Dan@868298");
            //smtp.Credentials = new System.Net.NetworkCredential(_email_envio.Tables[0].Rows[0]["EMAIL_ORIGEM"].ToString(), _email_envio.Tables[0].Rows[0]["SENHA_SMTP"].ToString());
            //smtp.UseDefaultCredentials = true;
            smtp.Host = "smtp.kinghost.net";//GridViewConfigEmail.SelectedDataKey["SMTP"].ToString();
            smtp.Port = 587 ; //Convert.ToInt16(GridViewConfigEmail.SelectedDataKey["PORTA_SMTP"].ToString());

            smtp.Send(_email);

            Response.Write("<script type=text/javascript>alert('Email enviado ') </script>");

        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }

    protected void DropDownListOrigem_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownListOrigem.SelectedValue.ToString().Trim() == "Contrato Cliente")
        {
            ObjDSClient.DataBind();
            DropDownListCliente.DataBind();
            DropDownListCliente.Enabled = true;
        }
        else if (DropDownListOrigem.SelectedValue.ToString().Trim() == "<< Selecione >>")
        {
            DropDownListColaborador.Enabled = false;
            DropDownListModalidade.Enabled = false;
            DropDownListServico.Enabled = false;
            DropDownListCliente.Enabled = false;
        }
        else
        {
            DropDownListServico.Enabled = true; 
        }
        
    }
    protected void DropDownListServico_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DropDownListColaborador.Enabled = true;
            DropDownListModalidade.Enabled = true;
            if (DropDownListOrigem.SelectedIndex == 1)   // se for contrato de cliente, faz pesquisa usando os dados escolhidos
            {
                ObjectDataSourceHIST.SelectMethod = "ObterClientes";
                ObjectDataSourceHIST.SelectParameters.Clear();
                //ObjectDataSourceHIST.SelectParameters.Add("id_cliente",System.Data.DbType.Int16,DropDownListCliente.SelectedValue.ToString ());
                //ObjectDataSourceHIST.SelectParameters.Add("servico",System.Data.DbType.String,DropDownListServico.SelectedItem.ToString());
                ObjectDataSourceHIST.DataBind();
                GridViewContratos.DataBind();
            }
            else   // faz pesquisa vindo do site
            {
                ObjectDataSourceHIST.SelectMethod = "ObterSolicitacao_Cliente";
                ObjectDataSourceHIST.SelectParameters.Clear();
                ObjectDataSourceHIST.DataBind();
            
            }

            // prepara lista dos documentos
            ObjDSDocumento.SelectParameters[0].DefaultValue = DropDownListServico.SelectedItem.ToString ().Trim();
            ObjDSDocumento.DataBind();

            if (GridViewContratos.Rows.Count > 0)
            {
                GridViewContratos.Enabled = true;
            }
            else
            {
                GridViewContratos.Enabled = false ;
            }
            TextBoxAgenda.Enabled = true;
            TextBoxHoraFim.Enabled = true;
            TextBoxHoraInicio.Enabled = true;
            TextBoxDemandado.Enabled = true;
            TextBoxEmailConvidado.Enabled = true;
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void DropDownListModalidade_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if(DropDownListModalidade.SelectedIndex == 0)
            {
                TextBoxlinkvideo.Enabled = false;
            }
            else
            { TextBoxlinkvideo.Enabled = true ; }
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    protected void DropDownListCliente_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownListServico.Enabled = true;
        
    }
    protected void DropDownListDocumento_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            string s_conteudo;
            EquilibrioClasse _objdocumento = new EquilibrioClasse();
            s_conteudo = _objdocumento.ObterConteudoDocumento(Convert.ToInt16 (DropDownListDocumento.SelectedValue)).ToString();
            FreeTextBoxConvocacao.Text = s_conteudo;
            FreeTextBoxConvocacao.ReadOnly = false;
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }

    protected void ImageButtonPesquisa_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBoxDemandado.Text.Trim().Length > 0)
        {
            ObjectDataSourceHIST.SelectMethod = "ObterPesquisaSolicitacao";
            ObjectDataSourceHIST.SelectParameters.Clear();
            ObjectDataSourceHIST.SelectParameters.Add("p_solicitado", System.Data.DbType.String, TextBoxDemandado.Text.Trim());
            //ObjectDataSourceHIST.SelectParameters.Add("id_cliente", System.Data.DbType.Int16, DropDownListCliente.SelectedValue.ToString());
            ObjectDataSourceHIST.DataBind();
            GridViewContratos.DataBind();
        }
    }

    protected void GridViewContratos_SelectedIndexChanged(object sender, EventArgs e)
    {
        PanelDocumento.Visible = true;
        PanelDocumento.Enabled = true;
        DropDownListDocumento.Enabled = true;
        ImageButtonEditar.Visible = true;
    }
    protected void ImageButtonEditar_Click(object sender, ImageClickEventArgs e)
    {
        if (GridViewContratos.SelectedIndex >= 0)
        {
            PanelDocumento.Visible = true;
            PanelDocumento.Enabled = true;
            DropDownListDocumento.Enabled = true;
        }
        else {
            Response.Write("<script type=text/javascript>alert('Por favor, selecione um registro para tratamento ') </script>");
        }
    }
    protected void ImageButtonEnviaEmail_Click(object sender, ImageClickEventArgs e)
    {
        if (CheckBoxEmail.Checked)
        {
            EnviarEmail(TextBoxEmailConvidado.Text);
        }
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
            Response.Redirect("MenuEquilibrio.aspx");
    }
}