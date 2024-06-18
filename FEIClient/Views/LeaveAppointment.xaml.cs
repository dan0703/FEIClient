using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace FEIClient.Views
{
    /// <summary>
    /// Lógica de interacción para LeaveAppointment.xaml
    /// </summary>
    public partial class LeaveAppointment : Window
    {
        /// <summary>
        /// Obtiene la razón para dejar la cita ingresada por el usuario.
        /// </summary>
        public string Reason { get; private set; }

        /// <summary>
        /// Inicializa una nueva instancia de la clase <see cref="LeaveAppointment"/>.
        /// </summary>
        public LeaveAppointment()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Maneja el evento Click del botón Cancel.
        /// Establece el DialogResult a false y cierra la ventana.
        /// </summary>
        /// <param name="sender">El origen del evento.</param>
        /// <param name="e">La instancia <see cref="RoutedEventArgs"/> que contiene los datos del evento.</param>
        private void Button_Cancel_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }

        /// <summary>
        /// Maneja el evento Click del botón Accept.
        /// Establece la propiedad Reason con el texto ingresado en ReasonTextBox,
        /// establece el DialogResult a true y cierra la ventana.
        /// </summary>
        /// <param name="sender">El origen del evento.</param>
        /// <param name="e">La instancia <see cref="RoutedEventArgs"/> que contiene los datos del evento.</param>
        private void Button_Accept_Click(object sender, RoutedEventArgs e)
        {
            Reason = ReasonTextBox.Text;
            DialogResult = true;
            Close();
        }
    }
}
