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
        public string Reason { get; private set; }

        public LeaveAppointment()
        {
            InitializeComponent();
        }

        private void Button_Cancel_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }

        private void Button_Accept_Click(object sender, RoutedEventArgs e)
        {
            Reason = ReasonTextBox.Text;
            DialogResult = true;
            Close();
        }
    }
}
