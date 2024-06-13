
using System.ServiceModel;
using System.Windows;
using FEIClient.FEIService;
using FEIClient.Logic;

namespace FEIClient.Views
{
    /// <summary>
    /// Lógica de interacción para LeaveShift.xaml
    /// </summary>
    public partial class LeaveShift : Window
    {
        private Menu _menuWindow;

        public LeaveShift(Menu menu)
        {
            InitializeComponent();
            _menuWindow = menu;
        }

        private void Button_Leave_Click(object sender, RoutedEventArgs e)
        {
            if (!TextBoxIsEmpty())
            {
                if (TextBox_LeaveReazon.Text.Length <= 250)
                {
                    _menuWindow.LeaveAppointment(TextBox_LeaveReazon.Text);
                    this.Close();
                }
                else
                {
                    MessageBox.Show("El texto es demasiado largo, no debe de pasar de 250 caracteres","Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("El campo de texto no puede estar vacío.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private bool TextBoxIsEmpty()
        {
            return TextBox_LeaveReazon.Text=="";
        }

        private void Button_Cancel_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
