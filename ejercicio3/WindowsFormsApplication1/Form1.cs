using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace WindowsFormsApplication1
{

    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
           
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        { 

        }
        private void button1_Click_1(object sender, EventArgs e)
        {
            string query = "SELECT nombre, apellidos, fechaNacimiento FROM Persona";

            // Crear una conexión a la base de datos
            using (SqlConnection connection = ConexionBD.ObtenerConexion())
            {
                try
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                       
                        using(SqlDataReader reader= command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Leer los valores de los campos y asignarlos a los TextBox
                                textBox1.Text = reader["nombre"].ToString();
                                textBox2.Text = reader["apellidos"].ToString();
                                textBox3.Text = reader["fechaNacimiento"].ToString();
                            }
                            else
                            {
                                // Si no se encontraron resultados, mostrar un mensaje o tomar otra acción
                                MessageBox.Show("No se encontraron datos.");
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error al ejecutar la consulta: " + ex.Message);
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string query = "SELECT numeroCuenta, tipoCuenta, saldo FROM Cuenta";

            // Crear una conexión a la base de datos
            using (SqlConnection connection = ConexionBD.ObtenerConexion())
            {
                try
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                       
                        using(SqlDataReader reader= command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Leer los valores de los campos y asignarlos a los TextBox
                                textBox1.Text = reader["numeroCuenta"].ToString();
                                textBox2.Text = reader["tipoCuenta"].ToString();
                                textBox3.Text = reader["saldo"].ToString();
                            }
                            else
                            {
                                // Si no se encontraron resultados, mostrar un mensaje o tomar otra acción
                                MessageBox.Show("No se encontraron datos.");
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error al ejecutar la consulta: " + ex.Message);
                }
            }
        }        
    }
    public class ConexionBD
    {
        public static SqlConnection ObtenerConexion()
        {
            string connectionString = "Data Source=DESKTOP-DG08RBR;Initial Catalog=DBPABLO;User ID=sa;Password=123456";
            SqlConnection connection = new SqlConnection(connectionString);
            return connection;
        }
    }
}
