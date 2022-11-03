using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   
        //Carrega o DropDown com a VIEW MEDIADOR;
        if (!IsPostBack) {
            DataTable _dtRetorno;

            EquilibrioClasse _classe = new EquilibrioClasse();

            _dtRetorno = _classe.RetornaCvMediador();
            DropDownList1.DataSource = _dtRetorno;
            DropDownList1.DataTextField = "NOME";
            DropDownList1.DataValueField = "ID_MEDIADOR";
            DropDownList1.DataBind();
        
        }
    }

    protected void ImageButtonContinuar_Click(object sender, ImageClickEventArgs e)
    {
        

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    //Método para carregar dropdown com mediadores e seus dados dos Arquivos (Currículo e Foto)
    

    protected void DropDownList1_Load(object sender, EventArgs e)
    {
        

    }
}