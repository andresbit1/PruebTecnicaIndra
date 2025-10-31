Imports System.Configuration
Imports System.Data.SqlClient
Imports Entidades

Public Class DatosCalificaciones
    Private ReadOnly connectionString As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString

    Public Function ConsultarCalificaciones() As List(Of Calificacion)
        Dim listaCalificaciones As New List(Of Calificacion)()
        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Calificacion_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "SELECT")
                Using reader As SqlDataReader = cmd.ExecuteReader()
                    While reader.Read()
                        Dim calificacion As New Calificacion()
                        calificacion.IdCalificacion = Convert.ToInt32(reader("IdCalificacion"))
                        calificacion.IdEstudiante = Convert.ToInt32(reader("IdEstudiante"))
                        calificacion.Materia = reader("Materia").ToString()
                        calificacion.Nombre = reader("Nombre").ToString()
                        calificacion.Nota = Convert.ToDecimal(reader("Nota"))
                        calificacion.Periodo = Convert.ToDecimal(reader("Periodo"))
                        listaCalificaciones.Add(calificacion)
                    End While
                End Using
            End Using
        End Using
        Return listaCalificaciones
    End Function

    Public Function ConsultarCalificacionesPorEstudiante(IdEstudiante As Double) As List(Of Calificacion)
        Dim listaCalificaciones As New List(Of Calificacion)()
        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Calificacion_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "SELECT_BY_ESTUDIANTE")
                cmd.Parameters.AddWithValue("@IdEstudiante", IdEstudiante)
                Using reader As SqlDataReader = cmd.ExecuteReader()
                    While reader.Read()
                        Dim calificacion As New Calificacion()
                        calificacion.IdCalificacion = Convert.ToInt32(reader("IdCalificacion"))
                        calificacion.IdEstudiante = Convert.ToInt32(reader("IdEstudiante"))
                        calificacion.Materia = reader("Materia").ToString()
                        calificacion.Nota = Convert.ToDecimal(reader("Nota"))
                        listaCalificaciones.Add(calificacion)
                    End While
                End Using
            End Using
        End Using
        Return listaCalificaciones
    End Function

    Public Function EliminarCalificacion(IdCalificacion As Double) As String
        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Calificacion_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "DELETE")
                cmd.Parameters.AddWithValue("@IdCalificacion", IdCalificacion)
                Try
                    Return cmd.ExecuteNonQuery()
                Catch ex As Exception
                    Return ex.ToString
                End Try
            End Using
        End Using
    End Function


    Public Function ActualizarCalificacion(calificacion As Calificacion) As String
        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Calificacion_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "UPDATE")
                cmd.Parameters.AddWithValue("@IdCalificacion", calificacion.IdCalificacion)
                cmd.Parameters.AddWithValue("@IdEstudiante", calificacion.IdEstudiante)
                cmd.Parameters.AddWithValue("@Materia", calificacion.Materia)
                cmd.Parameters.AddWithValue("@Nota", calificacion.Nota)
                Try
                    Return cmd.ExecuteNonQuery()
                Catch ex As Exception
                    Return ex.ToString
                End Try
            End Using
        End Using
    End Function

    Public Function CrearCalificacion(calificacion As Calificacion) As String
        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Calificacion_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "INSERT")
                cmd.Parameters.AddWithValue("@IdEstudiante", calificacion.IdEstudiante)
                cmd.Parameters.AddWithValue("@Materia", calificacion.Materia)
                cmd.Parameters.AddWithValue("@Nota", calificacion.Nota)
                Try
                    Return cmd.ExecuteNonQuery()
                Catch ex As Exception
                    Return ex.ToString
                End Try
            End Using
        End Using
    End Function

End Class
