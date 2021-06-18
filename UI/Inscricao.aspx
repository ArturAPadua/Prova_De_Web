<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscricao.aspx.cs" Inherits="DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.UI.Inscricao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <title>Inscricao</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <asp:HyperLink NavigateUrl="~/UI/Index.aspx" Text="Home" runat="server"></asp:HyperLink>
                    </li>
                   
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="~/UI/Consulta.aspx" Text="Consulta" runat="server"></asp:HyperLink>
                    </li>
                </ul>
            </div>
        </nav>
        <section>

            <h1 class="green">REALIZAR INSCRIÇÕES</h1>
        </section>
    </header>
    <form id="form1" runat="server">


        <div>
            <asp:HiddenField ID="id" runat="server" />

            <div>
                <asp:Label for="nome" Text="Nome" runat="server"></asp:Label>
                <asp:TextBox ID="nome" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label for="telefone" Text="Telefone" runat="server"></asp:Label>
                <asp:TextBox ID="telefone" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label for="email" Text="Email" runat="server"></asp:Label>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label for="foto" Text="Foto" runat="server"></asp:Label>
                <asp:FileUpload ID="foto" runat="server"></asp:FileUpload>
            </div>

            <div>
                <asp:Button ID="Salvar" runat="server" Text="Enviar" />
            </div>

            <div class="form-group">
                <asp:Label Text="" ID="msgOK" ForeColor="Green" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
                <asp:Label Text="" ID="msgErro" ForeColor="Red" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
            </div>

        </div>
    </form>
    <footer>
        <div>
            &copy; Copyright 2021 
            <h2 class="yellow">Desenvolvido por: Artur Almeida de Pádua</h2>
        </div>
    </footer>
</body>
</html>
