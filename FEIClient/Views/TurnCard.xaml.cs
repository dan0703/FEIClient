using FEIClient.FEIService;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
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
    /// Lógica de interacción para TurnCard.xaml
    /// </summary>
    public partial class TurnCard : UserControl
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(Login));

        private StudentClient studentClient;
        private Student student;
        public TurnCard()
        {
            InitializeComponent();
            studentClient = new StudentClient();
        }

        private void ShowMessageBoxServiceExceptionError()
        {
            MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        private void GoToLogIn()
        {
            Login loginWindow = new Login();
            student = null;

            Window parentWindow = Window.GetWindow(this);
            if (parentWindow != null)
            {
                parentWindow.Close();
            }

            loginWindow.ShowDialog();
        }

        public void ConfigureTurnCardWindow(Appointment appointment)
        {
            try
            {
                GetStudentNameById(appointment.student_IdStudent);
                Label_Matricula.Content = appointment.student_IdStudent;
            }
            catch (CommunicationException ex)
            {
                ShowMessageBoxServiceExceptionError();
                log.Error(ex);
                GoToLogIn();

            }
            catch (TimeoutException ex)
            {
                ShowMessageBoxServiceExceptionError();
                log.Error(ex);
                GoToLogIn();

            }
            catch (Exception ex)
            {
                ShowMessageBoxServiceExceptionError();
                log.Error(ex);
                GoToLogIn();

            }


        }
        
        private void GetStudentNameById(string idStudent)
        {
            this.student = studentClient.GetStudentNameById(idStudent);
            Label_Name.Content = student.fullName;
        }
    }
}
