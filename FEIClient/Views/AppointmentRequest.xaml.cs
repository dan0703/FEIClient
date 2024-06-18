using FEIClient.FEIService;
using FEIClient.Logic;
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
    /// Lógica de interacción para AppointmentRequest.xaml
    /// </summary>
    public partial class AppointmentRequest : Window
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(Login));
        ProcedureClient procedureClient;
        private Menu _menuWindow;
        private ViewStudentInfo student;
        public AppointmentRequest(Menu menu )
        {
            InitializeComponent();
            _menuWindow = menu;
            procedureClient = new ProcedureClient();
        }
        private void GoToLogIn()
        {
            Complements.GoToLogIn();
            this.Close();
        }

        private void ShowMessageBoxServiceExceptionError()
        {
            MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        internal void ConfigureWindowVariables(ViewStudentInfo student)
        {
            this.student = student;
            Label_Name.Content = student.fullName;
            Label_AcademicTutor.Content = student.tutorName;
            Label_Date.Content = DateTime.Now.ToString("dd/MM/yyyy");
            Label_Matricula.Content = student.idStudent;
            Label_EducationalProgram.Content = student.careerName;
            GetProcedureList();
        }

        private void GetProcedureList()
        {
            try
            {
                var procedureList = procedureClient.GetProcedureList().ToList();
                ComboBox_Procedure.ItemsSource = procedureList;
                ComboBox_Procedure.DisplayMemberPath = "name";
                ComboBox_Procedure.SelectedValuePath = "idProcedure";
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

        private void Button_AcceptRequest_Click(object sender, RoutedEventArgs e)
        {
            if (ComboBox_Procedure.SelectedValue != null)
            {
                Appointment appointment = new Appointment()
                {
                    attendedDate = DateTime.Now,
                    status = (int)AppointmentStatus.Pending,
                    student_IdStudent = student.idStudent,
                    procedure_IdProcedure = (int)ComboBox_Procedure.SelectedValue
                };
                _menuWindow.RequestAppointment(appointment);
                Close();

            }
            else
            {
                MessageBox.Show(Properties.Resources.MessageBox_Error_EmptyFields, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Button_CancelRequest_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
