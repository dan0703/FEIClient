using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Security.Principal;
using System.ServiceModel;
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
    /// Lógica de interacción para Menu.xaml
    /// </summary>
    public partial class Menu : Window
    {
        private string account;
        public Menu()
        {
            InitializeComponent();
        }
        public void ConfigureMenuWindow(string account)
        {
            try
            {
                this.account = account;
                

            }
            catch (CommunicationException ex)
            {
                // log.Error(ex);
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException + ex.Message);
            }
            catch (TimeoutException ex)
            {
                //  log.Error(ex);
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException + ex.Message);
            }
            catch (Exception ex)
            {
                //   log.Error(ex);
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException + ex.Message);
            }
        }

        private void Button_LogOut_Click(object sender, RoutedEventArgs e)
        {
            Login loginWindow = new Login();
            account=null;
            Close();
            loginWindow.ShowDialog();
        }

        private void Button_AppointmentRequest_Click(object sender, RoutedEventArgs e)
        {
            AppointmentRequest appointmentRequestWindow = new AppointmentRequest();
            appointmentRequestWindow.ConfigureWindowVariables(account);
            this.Effect = new System.Windows.Media.Effects.BlurEffect();
            appointmentRequestWindow.ShowDialog();
            this.Effect = null;
        }

        private void Button_LeaveShift_Click(object sender, RoutedEventArgs e)
        {
            LeaveShift leaveShiftWindow = new LeaveShift();
            LeaveShift.ConfigureWindowVariables(account);
            this.Effect = new System.Windows.Media.Effects.BlurEffect();
            leaveShiftWindow.ShowDialog();
            this.Effect = null;
        }
    }
}
