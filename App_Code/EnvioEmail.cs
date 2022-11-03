using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Web;
using System.Net.Mime;
using System.Net.Configuration;
using System.Net;

/// <summary>
/// Summary description for EnvioEmail
/// </summary>
public class EnvioEmail
{
	public EnvioEmail()
	{
		//
		// TODO: Add constructor logic here
		//
	}
   
	//Envio de Email automático da página de aviso!
	public void EnviarEmail(string P_EMAIL, string TextoEmail)
	{

        try
        {
            MailMessage _mail = new MailMessage();
            _mail.From = new MailAddress("danilo.augusto@volit.com.br", "Sistema de Mediação.", System.Text.Encoding.UTF8);
            _mail.To.Add(new MailAddress("zmargutti@gmail.com"));
            _mail.To.Add(new MailAddress(P_EMAIL));
            _mail.Subject = "Teste de envio de EMAIL";
            _mail.Body = "Prezado, informamos que recebemos sua solicitação e que a mesma se encontra em análise, aguarde o retorno da nossa equipe para prosseguir!  \r\n  \r\nRelato do caso:  " + "\r\n" + TextoEmail;
            _mail.Priority = MailPriority.High;



            SmtpClient _enviar = new SmtpClient();
            _enviar.EnableSsl = false;
            _enviar.Credentials = new System.Net.NetworkCredential("danilo.augusto@volit.com.br", "Dan@868298");
            _enviar.Host = "smtp.kinghost.net"; //"smtp.kinghost.net";
            _enviar.Port = 587;

            _enviar.Send(_mail);
            

        }
        catch (Exception ex) {
            throw ex;
        }


    }
	
	
}