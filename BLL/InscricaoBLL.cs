using DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.DAL;
using DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.BLL
{
    public class InscricaoBLL
    {
        private MysqlDAL con = new MysqlDAL();

        // CRUD da Classe

        public void Inserir(InscricaoDTO inscricao)
        {
            string sql = string.Format($@"INSERT INTO inscricao VALUES (NULL, 
                                                '{inscricao.Nome}', 
                                                '{inscricao.Telefone}', 
                                                '{inscricao.Email}', 
                                                '{inscricao.Foto}');");
            con.ExecutarSQL(sql);
        }
        public void Excluir(InscricaoDTO inscricao)
        {
            string sql = string.Format($@"DELETE FROM inscricao WHERE id= {inscricao.Id};");
            con.ExecutarSQL(sql);
        }
        public void Alterar(InscricaoDTO inscricao)
        {
            string sql = string.Format($@"UPDATE inscricao SET nome= '{inscricao.Nome}',
                                                             descricao= '{inscricao.Telefone}',
                                                             valor='{inscricao.Email}',
                                                             foto = '{inscricao.Foto}';");
            con.ExecutarSQL(sql);
        }

        public DataTable ConsultarID(int Id)
        {
            string sql = string.Format($@"SELECT * FROM inscricao WHERE id= {Id};");
            return con.ExecutarConsulta(sql);
        }
        public DataTable Pesquisar(string condicao)
        {

            string sql = string.Format($@"SELECT i.id , i.nome, i.telefone, i.foto FROM inscricao i WHERE" + condicao + " order by Id;");

            return con.ExecutarConsulta(sql);
        }
    }
}