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
    /// Lógica de interacción para LeaveShift.xaml
    /// </summary>
    public partial class LeaveShift : Window
    {
        public LeaveShift()
        {
            InitializeComponent();
        }

        private void Button_Leave_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Cancel_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        internal static void ConfigureWindowVariables(string account)
        {
            
        }
    }
}
