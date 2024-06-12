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
    /// Lógica de interacción para AppointmentRequest.xaml
    /// </summary>
    public partial class AppointmentRequest : Window
    {
        public AppointmentRequest()
        {
            InitializeComponent();
        }


        internal void ConfigureWindowVariables(string account)
        {
            Label_Name.Content = account;
        }

        private void Button_AcceptRequest_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Button_CancelRequest_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
