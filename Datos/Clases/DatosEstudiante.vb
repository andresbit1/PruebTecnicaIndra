Imports System.Configuration
Imports System.Data.SqlClient
Imports Entidades

Public Class DatosEstudiante
    Private ReadOnly connectionString As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString


    Public Function ConsultarEstudiantes() As List(Of Estudiante)
        Dim listaEstudiantes As New List(Of Estudiante)()
        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Estudiantes_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "SELECT")
                Using reader As SqlDataReader = cmd.ExecuteReader()
                    While reader.Read()
                        Dim estudiante As New Estudiante()
                        estudiante.IdEstudiante = Convert.ToInt32(reader("IdEstudiante"))
                        estudiante.Nombre = reader("Nombre").ToString()
                        estudiante.Apellido = reader("Apellido").ToString()
                        estudiante.Edad = reader("Edad").ToString()
                        estudiante.Sexo = reader("Sexo").ToString()
                        estudiante.Curso = reader("Curso").ToString()
                        estudiante.DocumentoIdentidad = reader("DocumentoIdentidad").ToString()
                        listaEstudiantes.Add(estudiante)
                    End While
                End Using
            End Using
        End Using
        Return listaEstudiantes
    End Function

    Public Function ConsultaEstudianteDdl() As List(Of Estudiante)
        Dim listaEstudiantes As New List(Of Estudiante)()
        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Estudiantes_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "SELECT2")
                Using reader As SqlDataReader = cmd.ExecuteReader()
                    While reader.Read()
                        Dim estudiante As New Estudiante()
                        estudiante.IdEstudiante = Convert.ToInt32(reader("IdEstudiante"))
                        estudiante.Nombre = reader("Nombre").ToString()
                        estudiante.Edad = reader("Edad").ToString()
                        estudiante.Sexo = reader("Sexo").ToString()
                        estudiante.Curso = reader("Curso").ToString()
                        estudiante.DocumentoIdentidad = reader("DocumentoIdentidad").ToString()
                        listaEstudiantes.Add(estudiante)
                    End While
                End Using
            End Using
        End Using
        Return listaEstudiantes
    End Function

    Public Function EliminarEstudiante(IdEstudiante As Double) As String
        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Estudiantes_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "DELETE")
                cmd.Parameters.AddWithValue("@IdEstudiante", IdEstudiante)

                Try

                    Return cmd.ExecuteNonQuery()
                Catch ex As Exception
                    Return ex.ToString
                End Try

            End Using
        End Using
    End Function

    Public Function ActualizarEstudiante(estudiante As Estudiante) As String
        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Estudiantes_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "UPDATE")
                cmd.Parameters.AddWithValue("@IdEstudiante", estudiante.IdEstudiante)
                cmd.Parameters.AddWithValue("@Nombre", estudiante.Nombre)
                cmd.Parameters.AddWithValue("@Apellido", estudiante.Apellido)
                cmd.Parameters.AddWithValue("@Sexo", estudiante.Sexo)
                cmd.Parameters.AddWithValue("@Curso", estudiante.Curso)
                cmd.Parameters.AddWithValue("@Edad", estudiante.Edad)
                cmd.Parameters.AddWithValue("@DocumentoIdentidad", estudiante.DocumentoIdentidad)

                Try

                    Return cmd.ExecuteNonQuery()
                Catch ex As Exception
                    Return ex.ToString
                End Try

            End Using
        End Using
    End Function

    Public Function CrearEstudiante(estudiante As Estudiante) As String

        Using cnn As SqlConnection = New SqlConnection(connectionString)
            cnn.Open()
            Using cmd As SqlCommand = New SqlCommand("sp_Estudiantes_CRUD", cnn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Accion", "INSERT")
                cmd.Parameters.AddWithValue("@Nombre", estudiante.Nombre)
                cmd.Parameters.AddWithValue("@Apellido", estudiante.Apellido)
                cmd.Parameters.AddWithValue("@Sexo", estudiante.Sexo)
                cmd.Parameters.AddWithValue("@Curso", estudiante.Curso)
                cmd.Parameters.AddWithValue("@DocumentoIdentidad", estudiante.DocumentoIdentidad)
                cmd.Parameters.AddWithValue("@Edad", estudiante.Edad)

                Try

                    Return cmd.ExecuteNonQuery()
                Catch ex As Exception
                    Return ex.ToString
                End Try

            End Using
        End Using
    End Function



End Class
