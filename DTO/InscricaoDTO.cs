using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.DTO
{
    public class InscricaoDTO
    {

        private int id;
        private string nome, telefone, email, foto;

        public int Id { get => id; set => id = value; }

        public string Nome
        {
            set
            {
                if (value != string.Empty)
                {
                    this.nome = value;
                }
                else
                {

                    throw new Exception("Campo nome é obrigatório!");
                }

            }
            get { return this.nome; }

        }

        public string Telefone
        {
            set
            {
                if (value != string.Empty)
                {
                    this.telefone = value;
                }
                else
                {

                    throw new Exception("Campo telefone é obrigatório!");
                }

            }
            get { return this.telefone; }

        }

        public string Email
        {
            set
            {
                if (value != string.Empty)
                {
                    this.email = value;
                }
                else
                {

                    throw new Exception("Campo telefone é obrigatório!");
                }

            }
            get { return this.email; }

        }

        public string Foto
        {
            set
            {
                if (value != string.Empty)
                {
                    this.foto = value;
                }
                else
                {

                    throw new Exception("Campo telefone é obrigatório!");
                }

            }
            get { return this.foto; }

        }
    }
}