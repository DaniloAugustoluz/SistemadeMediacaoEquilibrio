using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Pega o email do demandante e retorna uma mensagem informando sobre a solicitação.
        string email = Session["EmailRetorno"].ToString();
        LabelMensagem.Text = "Aguarde o retorno da nossa equipe que será enviado no email " + email;

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://equilibrio.volitsistemas.com.br/site");
    }
}