Imports Entidades
Imports Negocio

Public Class ListadoEstudiantes
    Inherits System.Web.UI.Page
    Dim objNegocioEstudiante As New NegocioEstudiante
    Dim objEstudiantes As New Estudiante()


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        CargaGrid()
    End Sub


    Private Sub CargaGrid()

        Dim listaEstudiantes As List(Of Entidades.Estudiante) = objNegocioEstudiante.ConsultarEstudiantes()
        GV_ListaEstudiantes.DataSource = listaEstudiantes
        GV_ListaEstudiantes.DataBind()
    End Sub

    Private Sub GV_ListaEstudiantes_RowCommand1(sender As Object, e As GridViewCommandEventArgs) Handles GV_ListaEstudiantes.RowCommand
        Dim FilaSeleccion As Integer = Convert.ToInt32(e.CommandArgument)
        Dim Dkeys As DataKey = GV_ListaEstudiantes.DataKeys(FilaSeleccion)
        Dim keyId As String = Dkeys.Values("IdEstudiante").ToString

        If (e.CommandName = "ir") Then
            Cambios_Estilos_Panel(True)
            Pnl_Nuevo.Visible = True

            Txt_Documento.Text = Convert.ToString(GV_ListaEstudiantes.Rows(FilaSeleccion).Cells(1).Text)
            Txt_Nombre.Text = Convert.ToString(GV_ListaEstudiantes.Rows(FilaSeleccion).Cells(2).Text)
            Txt_Apellido.Text = Convert.ToString(GV_ListaEstudiantes.Rows(FilaSeleccion).Cells(3).Text)
            Txt_Edad.Text = Convert.ToString(GV_ListaEstudiantes.Rows(FilaSeleccion).Cells(4).Text)
            Ddl_Sexo.SelectedValue = Convert.ToString(GV_ListaEstudiantes.Rows(FilaSeleccion).Cells(5).Text)
            Txt_Curso.Text = Convert.ToString(GV_ListaEstudiantes.Rows(FilaSeleccion).Cells(6).Text)
            Hf_IdEstudiante.Value = keyId
        End If

        If (e.CommandName = "del") Then

            Dim mensaje As String = objNegocioEstudiante.EliminarEstudiante(Convert.ToDouble(keyId))
            CargaGrid()
            Dim msjAlert As String
            If IsNumeric(mensaje) Then
                CargaGrid()
                msjAlert = "Se ha eliminado el estudiante"
            Else
                msjAlert = "¡Se genero un error, no se puede eliminar al estudiante!"
                Pnl_Nuevo.Visible = False

            End If
            Mensajes(msjAlert)
        End If


    End Sub

    Protected Sub Btn_Nuevo_Click(sender As Object, e As EventArgs)
        Pnl_Nuevo.Visible = True
        Cambios_Estilos_Panel(False)

    End Sub

    Protected Sub Btn_Guardar_Click(sender As Object, e As EventArgs)

        Dim msjAlert As String = String.Empty
        Dim mensaje As String
        objEstudiantes.DocumentoIdentidad = Txt_Documento.Text
        objEstudiantes.Nombre = Txt_Nombre.Text
        objEstudiantes.Apellido = Txt_Apellido.Text
        objEstudiantes.Edad = Convert.ToInt32(Txt_Edad.Text)
        objEstudiantes.Sexo = Convert.ToChar(Ddl_Sexo.SelectedValue)
        objEstudiantes.Curso = Txt_Curso.Text


        If Btn_Guardar.Text.Equals("Guardar") Then

            mensaje = objNegocioEstudiante.CrearEstudiante(objEstudiantes)
            If IsNumeric(mensaje) Then
                msjAlert = "Se ha creado el estudiante"
            Else
                msjAlert = mensaje
            End If

        ElseIf Btn_Guardar.Text.Equals("Actualizar") Then
            objEstudiantes.IdEstudiante = Convert.ToDouble(Hf_IdEstudiante.Value)
            mensaje = objNegocioEstudiante.ActualizarEstudiante(objEstudiantes)
            If IsNumeric(mensaje) Then
                msjAlert = "Se ha actualizado el estudiante"
            Else
                msjAlert = mensaje
            End If
        End If
        Mensajes(msjAlert)
        Pnl_Nuevo.Visible = False
        CargaGrid()

    End Sub

    Protected Sub Cambios_Estilos_Panel(ByVal accion As Boolean)
        LimpiarCampos()
        If accion Then
            Pnl_Nuevo.CssClass = "card card-success"
            Lbl_Titulo.Text = "Actualizar Estudiante"
            Btn_Guardar.Text = "Actualizar"
            Btn_Guardar.CssClass = "btn btn-success"
            Txt_Documento.Enabled = False

        Else
            Pnl_Nuevo.CssClass = "card card-primary"
            Lbl_Titulo.Text = "Nuevo Estudiante"
            Btn_Guardar.Text = "Guardar"
            Btn_Guardar.CssClass = "btn btn-primary"
            Txt_Documento.Enabled = True

        End If

    End Sub

    Protected Sub Btn_Cancelar_Click(sender As Object, e As EventArgs)
        Pnl_Nuevo.Visible = False
        LimpiarCampos()
    End Sub

    Protected Sub LimpiarCampos()
        Txt_Documento.Text = String.Empty
        Txt_Nombre.Text = String.Empty
        Txt_Apellido.Text = String.Empty
        Txt_Edad.Text = String.Empty
        Ddl_Sexo.SelectedIndex = 0
        Txt_Curso.Text = String.Empty
    End Sub

    Protected Sub Mensajes(ByVal mensaje As String)
        ScriptManager.RegisterStartupScript(Me, Page.GetType, Guid.NewGuid().ToString(), "alert('" & mensaje & "');", True)
    End Sub
End Class