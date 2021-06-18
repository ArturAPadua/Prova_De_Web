<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="DEVWEB_3B1_PF_PAR_ArturAlmeidaDePadua.UI.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="CSS/style.css" />
   <title>Consulta</title>
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
                        <asp:HyperLink NavigateUrl="~/UI/Inscricao.aspx" Text="Inscrições" runat="server"></asp:HyperLink>
                    </li>
                </ul>
            </div>
        </nav>
        <section>

            <h1 class="red">CONSULTAR INSCRIÇÕES</h1>
             </section>
    </header>
    <form id="form1" runat="server">
               <div>
             <asp:TextBox ID="TextBoxPesq" placeholder="Pesquisar por parte do nome" runat ="server"></asp:TextBox>
           <asp:Button ID="BtnPesquisar" Class="btn btn-lg btn-primary mb-4" runat="server" Text="Pesquisar" OnClick="BtnPesquisar_Click"/>
        </div>

        <div>
            <asp:GridView ID="GridConsulta" AutoGenerateColumns="false"
                OnRowEditing="GridConsulta_RowEditing"
                OnRowCancelingEdit="GridConsulta_RowCancelingEdit"
               OnRowUpdating="GridConsulta_RowUpdating"
                DataKeyNames="id"
                OnRowDeleting="GridConsulta_RowDeleting" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="Código">
                        <ItemTemplate>
                            <asp:Label ID="labelId" runat="server" Text='<%# Eval("id")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nome">
                        <ItemTemplate>
                            <asp:Label ID="labelNome" runat="server" Text='<%# Eval("nome")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textNome" Text='<%# Bind("nome")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefone">
                        <ItemTemplate>
                            <asp:Label ID="labelTelefone" runat="server" Text='<%# Eval("nome")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textTelefone" Text='<%# Bind("telefone")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="labelEmail" runat="server" Text='<%# Eval("nome")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textEmail" Text='<%# Bind("email")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Foto">
                        <ItemTemplate>
                            <asp:Image ID="labelFoto" runat="server" ImageUrl='<%# "~/IMG/Produtos/" + Eval("foto")%>' Width="240" Height="160"></asp:Image>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="fileupFoto" runat="server">
                            </asp:FileUpload>
                        </EditItemTemplate>
                   </asp:TemplateField>
                   <asp:CommandField ShowEditButton="true" ButtonType="Image" HeaderText="Editar" EditImageUrl="~/IMG/editar.png" 
                       CancelImageUrl="~/IMG/cancelar.png" UpdateImageUrl="~/IMG/atualizar.png" runat="server">
                   </asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
     <footer>
        <div>
            &copy; Copyright 2021 
            <h2 class="blue">Desenvolvido por: Artur Almeida de Pádua</h2>
        </div>
    </footer>
</body>
</html>
