Imports Entidades

Public Class NegocioCalificaciones

    Dim objDatosCalifiaciones As New Datos.DatosCalificaciones


    Public Function ConsultaCalificaciones() As List(Of Calificacion)
        Return objDatosCalifiaciones.ConsultarCalificaciones()
    End Function

    Public Function EliminaCalificacion(IdCalificacion As Double) As String
        Return objDatosCalifiaciones.EliminarCalificacion(IdCalificacion)
    End Function

    Public Function ActualizarCalificaciones(calificacion As Calificacion) As String
        Return objDatosCalifiaciones.ActualizarCalificacion(calificacion)
    End Function

    Public Function CrearEstudiante(calificacion As Calificacion) As String
        Return objDatosCalifiaciones.CrearCalificacion(calificacion)
    End Function


End Class
