<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/App/Site1.Master" CodeBehind="ListadoEstudiantes.aspx.vb" Inherits="WebUI.ListadoEstudiantes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-2">
                    <asp:Button ID="Btn_Nuevo" OnClick="Btn_Nuevo_Click" CssClass="btn btn-block btn-primary" runat="server" Text="Nuevo estudiante" />
                </div>
                <div class="">
                </div>
            </div>
            <br />
            <asp:Panel ID="Pnl_Nuevo" CssClass="card card-primary" Visible="false" runat="server">
                <div class="card-header">
                    <div class="card-title">
                        <asp:Label ID="Lbl_Titulo" runat="server" Text="Nuevo Estudiante"></asp:Label>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-2">
                            <asp:TextBox ID="Txt_Documento" CssClass="form-control" Placeholder="Documento" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv1" ControlToValidate="Txt_Documento" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                        <div class="col-md-5">
                            <asp:TextBox ID="Txt_Nombre" CssClass="form-control" Placeholder="Nombre" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Txt_Nombre" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-5">
                            <asp:TextBox ID="Txt_Apellido" CssClass="form-control" Placeholder="Apellido" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Txt_Apellido" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:TextBox ID="Txt_Edad" CssClass="form-control" Placeholder="Edad" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Txt_Edad" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList ID="Ddl_Sexo" CssClass="form-control" runat="server">
                                <asp:ListItem Value="" Text="Sexo" />
                                <asp:ListItem Value="M" Text="Masculino" />
                                <asp:ListItem Value="F" Text="Femenino" />
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="Txt_Curso" CssClass="form-control" Placeholder="Curso" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Txt_Curso" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="Btn_Guardar" OnClick="Btn_Guardar_Click" Width="100%" CssClass="btn btn-block btn-primary" Text="Guardar" runat="server" />
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="Btn_Cancelar" OnClick="Btn_Cancelar_Click" Width="100%" CssClass="btn btn-block btn-danger" Text="Cancelar" runat="server" CausesValidation="false" />
                        </div>

                    </div>
                    <br />

                </div>


            </asp:Panel>
            <div class="row">
                <div class="col-md-12">

                    <asp:GridView ID="GV_ListaEstudiantes" DataKeyNames="IdEstudiante"
                        EmptyDataText="¡No hay datos que mostrar!"
                        AutoGenerateColumns="false" CssClass="table table-hover text-nowrap" Width="100%" PageSize="7"
                        AllowSorting="True" ShowFooter="True"
                        runat="server">

                        <Columns>
                            <asp:BoundField DataField="IdEstudiante" HeaderText="Id" />
                            <asp:BoundField DataField="DocumentoIdentidad" HeaderText="Documento" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                            <asp:BoundField DataField="Edad" HeaderText="Edad" />
                            <asp:BoundField DataField="Sexo" HeaderText="Sexo" />
                            <asp:BoundField DataField="Curso" HeaderText="Curso" />
                            <asp:ButtonField ButtonType="Image" CommandName="ir" HeaderText="Editar"
                                CausesValidation="false" ItemStyle-Width="16" ItemStyle-Height="16" ItemStyle-HorizontalAlign="Center" ImageUrl="../dist/img/pencil-outline.svg" HeaderStyle-HorizontalAlign="Center" />
                            <asp:ButtonField ButtonType="Image" CommandName="del" HeaderText="Eliminar"
                                CausesValidation="false" ItemStyle-Width="16" ItemStyle-Height="16" ItemStyle-HorizontalAlign="Center" ImageUrl="../dist/img/skull-outline.svg" HeaderStyle-HorizontalAlign="Center" />

                        </Columns>

                    </asp:GridView>
                    <asp:HiddenField ID="Hf_IdEstudiante" runat="server" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
