using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            LabelData.Text = "São Paulo, " + DateTime.Now.ToLongDateString();
            Timer1.Enabled = true;
            Timer1.Interval = 10000;
            LabelHora.Text = DateTime.Now.ToShortTimeString();
           // Response.Redirect("procedimentoinicial.aspx");
        }
        Response.Redirect("MenuEquilibrio.aspx");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        LabelHora.Text = DateTime.Now.ToShortTimeString();
    }
    protected void btnAcesso_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MenuEquilibrio.aspx");
    }
}