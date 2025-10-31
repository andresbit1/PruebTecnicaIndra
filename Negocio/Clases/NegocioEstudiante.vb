Public Class NegocioEstudiante

    Dim objDatosEstudiante As New Datos.DatosEstudiante

    Public Function ConsultarEstudiantes() As List(Of Entidades.Estudiante)
        Return objDatosEstudiante.ConsultarEstudiantes()
    End Function

    Public Function EliminarEstudiante(IdEstudiante As Double) As String
        Return objDatosEstudiante.EliminarEstudiante(IdEstudiante)
    End Function

    Public Function ActualizarEstudiante(estudiante As Entidades.Estudiante) As String
        Return objDatosEstudiante.ActualizarEstudiante(estudiante)
    End Function

    Public Function CrearEstudiante(estudiante As Entidades.Estudiante) As String
        Return objDatosEstudiante.CrearEstudiante(estudiante)
    End Function

    Public Function ConsultaEstudianteDdl() As List(Of Entidades.Estudiante)
        Return objDatosEstudiante.ConsultaEstudianteDdl()
    End Function



End Class
