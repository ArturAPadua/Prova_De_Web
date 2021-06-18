<%@ Page Language="C#" Theme="" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.UI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Pagina Inicial</title>
</head>
<body>

    <form id="form1" runat="server">

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <asp:HyperLink NavigateUrl="~/UI/Index.aspx" Text="Home" runat="server"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="~/UI/Inscricao.aspx" Text="Inscrições" runat="server"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="~/UI/Consulta.aspx" Text="Consulta" runat="server"></asp:HyperLink>
                    </li>
                </ul>
            </div>
        </nav>
        <section class=" text-center">

            <h1 class="purple">WORKSHOP DE TECNOLOGIA</h1>
            <h2>Tecnologias que mudam o mundo</h2>
            <asp:Image ID="imgHome" ImageUrl="~/IMG/imgHomeAlterado.jpg" AlternateText="workshop" runat="server" Height="388px" Width="563px" />
        </section>
    </header>


    <main>

        <section class=" text-center">
            <article>
                O Workshop de Tecnologia é um evento que acontece todo ano procurando as melhores ideias para mudar o mundo.

            </article>
        </section>

    </main>

    <section class="text-center">
        <article>
            <p>Programação do evento</p>
            <asp:Table ID="programacao" CellPadding="10"
                GridLines="Both"
                HorizontalAlign="Center" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Horário</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Descrição</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>
                08:00 - 08:30
                    </asp:TableCell>
                    <asp:TableCell>
                Verificacao da inscricao
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                08:40 - 09:00
                    </asp:TableCell>
                    <asp:TableCell>
                Abertura do evento
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                09:10 - 12:00
                    </asp:TableCell>
                    <asp:TableCell>
                Falar e discutir ideias que podem mudar o mundo
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                12:00 - 13:30
                    </asp:TableCell>
                    <asp:TableCell>
                Pausa para almoco
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                13:30 - 15:30
                    </asp:TableCell>
                    <asp:TableCell>
                Escolher as 10 melhores ideias que podem funcionar
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                15:30 - 16:30
                    </asp:TableCell>
                    <asp:TableCell>
                Periodo de saida do evento
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </article>
    </section>
    <section>
        <p class="font-weight-bold">Quer participar desse evento incrível?</p>
        <asp:HyperLink Text="Inscreva-se" NavigateUrl="~/UI/Inscricao.aspx" runat="server"></asp:HyperLink>
    </section>
    <footer>
        <div>
            &copy; Copyright 2021 
            <h2 class="deeppink">Desenvolvido por: Artur Almeida de Pádua</h2>
        </div>
    </footer>
    </form>
</body>
</html>