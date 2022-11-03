using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }

    public string retornaTxt() {
        return TextBoxAcaoCV.Text;
    }

    public string flagTxt() {
        string txtCV = retornaTxt();
        flag classe = new flag();
        classe.SalvarTxt(txtCV);
      
        return txtCV;
    }

    protected void ButtonSalvarFiles_Click(object sender, EventArgs e)
    {
        //Sessão Currículo
        Session["cv"] = Server.MapPath(@"curriculo/") + FileUploadCV.FileName;
        string extensao = Path.GetExtension(FileUploadCV.FileName);

        //Sessão Foto
        Session["foto"] = Server.MapPath(@"foto/") + FileUploadFOTO.FileName;
        string extensaofoto = Path.GetExtension(FileUploadFOTO.FileName);

            if (extensao == ".pdf" && (extensaofoto == ".jpeg" || extensaofoto == ".jpg")) {
            FileUploadCV.PostedFile.SaveAs(Session["cv"].ToString());
            FileUploadFOTO.PostedFile.SaveAs(Session["foto"].ToString());
            Response.Write("<script type=text/javascript>alert('Arquivo carregado com sucesso, clique em OK para continuar e depois no botão azul para prosseguir')</script>");

            }
    }

    //Retorna o valor da ação e salva na classe flag
    public void  retornaAcao(string acao) {
        flag _retorno = new flag();
        _retorno.retornaAcao(TextBoxAcaoCV.Text);
        _retorno.flagAcaoretorno(TextBoxAcaoCV.Text);
    }

    public int retornaValor(int flag) {
        if (flag == 1)
        {
            return 1;
        }
        else {
            return 0;
        }
        
    }
    public bool flag(int flag) {
        
        //passando valor da flag de arquivos
        flag retorno = new flag();
        bool retornoflag = false;
        
        if (retorno.retornaFlag(CheckBoxVerificaCV.Checked ? 1 : 0)) {
            retornoflag = true;
        };

        return retornoflag;
    }



    protected void ImageButtonOk_Click(object sender, ImageClickEventArgs e)
    {

        //Ativa flag de arquivos caso tenha arquivos no fileupload.
        if (FileUploadFOTO.HasFile && FileUploadCV.HasFile)
        {
            CheckBoxVerificaCV.Checked = true;
            TextBoxAcaoCV.Text = "A";
            Session["CheckBoxArquivos"] = CheckBoxVerificaCV.Checked ? 1 : 0;
            Session["acaoCV"] = TextBoxAcaoCV.Text;
        }
        else if (!FileUploadFOTO.HasFile && !FileUploadCV.HasFile)
        {
            CheckBoxVerificaCV.Checked = false;
            TextBoxAcaoCV.Text = "I";
            Session["CheckBoxArquivos"] = CheckBoxVerificaCV.Checked ? 1 : 0;
            Session["acaoCV"] = TextBoxAcaoCV.Text;
        }

       
        //Verifica se há arquivos e salva textboxAcaoCV
        if (TextBoxAcaoCV.Text == "I") 
        {
            Response.Write("<script type=text/javascript>alert('Clique em ok para continuar sem anexar os documentos.')</script>");
            flag(CheckBoxVerificaCV.Checked ? 1 : 0);
            retornaAcao(TextBoxAcaoCV.Text);
            Response.Redirect("CadastroMediador.aspx");

        }
        else if (CheckBoxVerificaCV.Checked  && TextBoxAcaoCV.Text == "A")
        {
            //Retorna Flag de Ação de arquivos, que verifica se eles foram salvos ou não.
            retornaAcao(TextBoxAcaoCV.Text);
            Response.Write("<script type=text/javascript>alert('Documentos anexados com sucesso.')</script>");
            Response.Redirect("CadastroMediador.aspx");
        }

        
        
    }
    protected void ImageButtonVoltar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MenuEquilibrio.aspx");
    }
}