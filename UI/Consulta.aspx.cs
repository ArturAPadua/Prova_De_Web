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
    public partial class Consulta : System.Web.UI.Page
    {
        InscricaoBLL inscricaoBLL = new InscricaoBLL();
        InscricaoDTO inscricaoDTO = new InscricaoDTO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ExibirGridView()
        {

            string pesquisa = "i.nome like '%" + TextBoxPesq.Text + "%'";
            GridConsulta.DataSource = inscricaoBLL.Pesquisar(pesquisa);
            GridConsulta.DataBind();
        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            ExibirGridView();
        }

        protected void GridConsulta_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            inscricaoDTO.Id = Convert.ToInt32(GridConsulta.DataKeys[e.RowIndex].Value.ToString());
            inscricaoBLL.Excluir(inscricaoDTO);
        }

        protected void GridConsulta_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridConsulta.PageIndex = e.NewEditIndex;
            ExibirGridView();
        }

        protected void GridConsulta_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridConsulta.EditIndex = -1;
            ExibirGridView();

        }

        protected void GridConsulta_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            inscricaoDTO.Id = Convert.ToInt32(GridConsulta.DataKeys[e.RowIndex].Value.ToString());
            inscricaoDTO.Nome = e.NewValues[1].ToString();
            inscricaoDTO.Telefone = e.NewValues[2].ToString();
            inscricaoDTO.Email = e.NewValues[3].ToString();

            FileUpload fotoInscricao = (FileUpload)GridConsulta.Rows[e.RowIndex].FindControl("fileupFoto");

            if (fotoInscricao.HasFile)
            {
                String localImagem = Server.MapPath("~/IMG/" + fotoInscricao.FileName);
                fotoInscricao.SaveAs(localImagem);
                inscricaoDTO.Foto = fotoInscricao.FileName.ToString();
            }

            inscricaoBLL.Alterar(inscricaoDTO);
            GridConsulta.EditIndex = -1;
            ExibirGridView();
        }
    }
}