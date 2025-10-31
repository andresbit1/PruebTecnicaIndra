Imports Entidades
Imports Negocio

Public Class ListadoCalificaciones
    Inherits System.Web.UI.Page
    Dim objNegocioCalificaciones As New NegocioCalificaciones
    Dim objNegocioEstudiante As New NegocioEstudiante


    Dim objCalificaciones As New Calificacion()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CargaGrid()
            CargaDDL()

        End If
    End Sub


    Private Sub CargaGrid()

        Dim listaEstudiantes As List(Of Calificacion) = objNegocioCalificaciones.ConsultaCalificaciones()
        GV_ListaCalificaciones.DataSource = listaEstudiantes
        GV_ListaCalificaciones.DataBind()
    End Sub

    Protected Sub Btn_Nuevo_Click(sender As Object, e As EventArgs)
        Pnl_Nuevo.Visible = True
        Cambios_Estilos_Panel(False)
    End Sub

    Protected Sub Btn_Guardar_Click(sender As Object, e As EventArgs)
        Dim msjAlert As String = String.Empty
        Dim mensaje As String

        objCalificaciones.IdEstudiante = Ddl_Estudiante.SelectedValue
        objCalificaciones.Materia = Txt_Materia.Text
        objCalificaciones.Nota = Convert.ToDecimal(Txt_Nota.Text)
        objCalificaciones.Periodo = Convert.ToDecimal(Ddl_Periodo.SelectedValue)


        If Btn_Guardar.Text.Equals("Guardar") Then

            mensaje = objNegocioCalificaciones.CrearEstudiante(objCalificaciones)
            If IsNumeric(mensaje) Then
                msjAlert = "Se ha creado la calificación"
            Else
                msjAlert = mensaje
            End If

        ElseIf Btn_Guardar.Text.Equals("Actualizar") Then
            objCalificaciones.IdCalificacion = Convert.ToDouble(Hf_IdEstudiante.Value)
            mensaje = objNegocioCalificaciones.ActualizarCalificaciones(objCalificaciones)
            If IsNumeric(mensaje) Then
                msjAlert = "Se ha actualizado la calificación"
            Else
                msjAlert = mensaje
            End If
        End If
        Mensajes(msjAlert)
        Pnl_Nuevo.Visible = False
        CargaGrid()
    End Sub

    Protected Sub Btn_Cancelar_Click(sender As Object, e As EventArgs)
        Pnl_Nuevo.Visible = False
        LimpiarCampos()

    End Sub

    Protected Sub Cambios_Estilos_Panel(ByVal accion As Boolean)
        LimpiarCampos()
        If accion Then
            Pnl_Nuevo.CssClass = "card card-success"
            Lbl_Titulo.Text = "Actualizar calificación"
            Btn_Guardar.Text = "Actualizar"
            Btn_Guardar.CssClass = "btn btn-success"

        Else
            Pnl_Nuevo.CssClass = "card card-primary"
            Lbl_Titulo.Text = "Nueva calificación"
            Btn_Guardar.Text = "Guardar"
            Btn_Guardar.CssClass = "btn btn-primary"

        End If

    End Sub

    Protected Sub LimpiarCampos()
        Ddl_Periodo.SelectedIndex = 0
        Ddl_Estudiante.SelectedIndex = 0
        Txt_Nota.Text = String.Empty
        Txt_Materia.Text = String.Empty
    End Sub

    Private Sub GV_ListaCalificaciones_RowCommand1(sender As Object, e As GridViewCommandEventArgs) Handles GV_ListaCalificaciones.RowCommand
        Dim FilaSeleccion As Integer = Convert.ToInt32(e.CommandArgument)
        Dim Dkeys As DataKey = GV_ListaCalificaciones.DataKeys(FilaSeleccion)
        Dim keyId As String = Dkeys.Values("IdCalificacion").ToString
        'Dim keyPeriodo As String = Dkeys.Values("Periodo").ToString

        If (e.CommandName = "ir") Then
            Cambios_Estilos_Panel(True)
            Pnl_Nuevo.Visible = True

            Ddl_Estudiante.SelectedValue = Convert.ToString(Dkeys.Values("IdEstudiante").ToString)
            Txt_Materia.Text = Convert.ToString(GV_ListaCalificaciones.Rows(FilaSeleccion).Cells(3).Text)
            Txt_Nota.Text = Convert.ToString(GV_ListaCalificaciones.Rows(FilaSeleccion).Cells(5).Text)
            Ddl_Periodo.SelectedValue = Convert.ToString(GV_ListaCalificaciones.Rows(FilaSeleccion).Cells(4).Text)

            Hf_IdEstudiante.Value = keyId
        End If

        If (e.CommandName = "del") Then

            Dim mensaje As String = objNegocioCalificaciones.EliminaCalificacion(keyId)
            Dim msjAlert As String
            If IsNumeric(mensaje) Then
                msjAlert = "Se ha eliminado el estudiante"
            Else
                msjAlert = "¡Se genero un error, no se puede eliminar al estudiante!"
            End If
            Mensajes(msjAlert)
            Pnl_Nuevo.Visible = False

        End If
        CargaGrid()
    End Sub
    Protected Sub Mensajes(ByVal mensaje As String)
        ScriptManager.RegisterStartupScript(Me, Page.GetType, Guid.NewGuid().ToString(), "alert('" & mensaje & "');", True)
    End Sub

    Protected Sub CargaDDL()
        Dim lista As List(Of Estudiante) = objNegocioEstudiante.ConsultaEstudianteDdl()
        lista.Add(New Estudiante With {.IdEstudiante = 0, .Nombre = "Seleccione un estudiante"})
        lista = objNegocioEstudiante.ConsultaEstudianteDdl()

        Ddl_Estudiante.DataSource = lista
        Ddl_Estudiante.DataTextField = "Nombre"
        Ddl_Estudiante.DataValueField = "IdEstudiante"
        Ddl_Estudiante.DataBind()

    End Sub

End Class