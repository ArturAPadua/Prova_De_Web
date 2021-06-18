using DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.BLL;
using DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.UI
{
    public partial class Inscricao : System.Web.UI.Page
    {
        InscricaoDTO inscricaoDTO = new InscricaoDTO();
        InscricaoBLL inscricaoBLL = new InscricaoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            try
            {
                inscricaoDTO.Nome = nome.Text;
                inscricaoDTO.Telefone = telefone.Text;
                inscricaoDTO.Email = email.Text;
                inscricaoDTO.Foto = foto.FileName.ToString();
                inscricaoBLL.Inserir(inscricaoDTO);
                //Upload da imagem para o porjeto
                string localFoto = Server.MapPath("/IMG/" + inscricaoDTO.Foto);
                foto.SaveAs(localFoto);

                // alert
                string mensagem = "Produto inserido com sucesso!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + mensagem + "')", true);

            }
            catch (Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;
            }

        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            nome.Text = "";
            telefone.Text = "";
            email.Text = "";
            // completar
        }
    }
}