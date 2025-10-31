<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/App/Site1.Master" CodeBehind="ListadoCalificaciones.aspx.vb" Inherits="WebUI.ListadoCalificaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-2">
                    <asp:Button ID="Btn_Nuevo" OnClick="Btn_Nuevo_Click" CssClass="btn btn-block btn-primary" runat="server" Text="Registrar calificación" />
                </div>
                <div class="">
                </div>
            </div>
            <br />
            <asp:Panel ID="Pnl_Nuevo" CssClass="card card-primary" Visible="false" runat="server">
                <div class="card-header">
                    <div class="card-title">
                        <asp:Label ID="Lbl_Titulo" runat="server" Text="Nueva calificación"></asp:Label>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-2">
                            <asp:DropDownList ID="Ddl_Estudiante" CssClass="form-control" runat="server">
                                <asp:ListItem Value="" Text="Estudiante" />
                                <asp:ListItem Value="M" Text="Masculino" />
                                <asp:ListItem Value="F" Text="Femenino" />
                            </asp:DropDownList>

                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="Txt_Materia" CssClass="form-control" Placeholder="Materia" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv1" ControlToValidate="Txt_Materia" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-2">
                            <asp:DropDownList ID="Ddl_Periodo" CssClass="form-control" runat="server">
                                <asp:ListItem Value="" Text="Periodo" />
                                <asp:ListItem Value="1" Text="1" />
                                <asp:ListItem Value="2" Text="2" />
                                <asp:ListItem Value="3" Text="3" />
                                <asp:ListItem Value="4" Text="4" />
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="Txt_Nota" MaxLength="3" CssClass="form-control" Placeholder="Nota" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv2" ControlToValidate="Txt_Nota" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

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

                    <asp:GridView ID="GV_ListaCalificaciones" DataKeyNames="IdCalificacion,IdEstudiante"
                        EmptyDataText="¡No hay datos que mostrar!"
                        AutoGenerateColumns="false" CssClass="table table-hover text-nowrap" Width="100%" PageSize="7"
                        AllowSorting="True" ShowFooter="True"
                        runat="server">

                        <Columns>
                            <asp:BoundField DataField="IdCalificacion" HeaderText="Id" />
                            <asp:BoundField DataField="IdEstudiante" HeaderText="IdEstudiante" Visible="false" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="Materia" HeaderText="Materia" />
                            <asp:BoundField DataField="Periodo" HeaderText="Periodo" />
                            <asp:BoundField DataField="Nota" HeaderText="Nota" />
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
