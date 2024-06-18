using FEIClient.FEIService;
using FEIClient.Logic;
using log4net;
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
    public partial class Menu : Window, IAppointmentCallback
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(Login));

        private bool allreadyHaveAppointment = false;
        private  AppointmentClient appointmentClient;
        private List<Appointment> appointmentList;
        private ViewStudentInfo student;
        private  TutorClient tutorClient;
        private bool AllreadyInAppointment = false;
        public Menu()
        {
            InitializeComponent();
            appointmentClient = new AppointmentClient(new InstanceContext(this));
            appointmentList = new List<Appointment>();
            tutorClient = new TutorClient();
            Button_LeaveShift.Effect = new System.Windows.Media.Effects.BlurEffect();
        }
        public void ConfigureMenuWindow(ViewStudentInfo account)
        {
            try
            {
                this.student = account;
                Label_Name.Content = student.fullName;
                Label_AcademicTutor.Content = GetTutorById(student.idTutor);
                Label_EducationalProgram.Content = student.careerName;
                Label_StudentId.Content = student.idStudent;
                appointmentClient.JoinToSesion(student.idStudent);
                GetAppointmentList();
                AddTurnCardsToGridStackPanel();
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

        private string GetTutorById(int idTutor)
        {
            string tutorName = "";
            try
            {
                tutorName = tutorClient.GetTutorById(idTutor).fullName;
            }catch (Exception ex)
            {
                ShowMessageBoxServiceExceptionError();
                log.Error(ex);
                GoToLogIn();

            }
            return tutorName;
        }

        private void GetAppointmentList()
        {
            appointmentList = appointmentClient.GetAllAppointments().ToList();
        }

        private void ConfigureAllreadyHaveAppointmentFlag()
        {
            if (appointmentList.Count>0)
            {
                for (int i = 0; i < appointmentList.Count; i++)
                {
                    if (appointmentList[i].student_IdStudent == student.idStudent)
                    {
                        allreadyHaveAppointment = true;
                        break;
                    }
                    else
                    {
                        allreadyHaveAppointment = false;
                    }
                }
            }
            else
            {
                allreadyHaveAppointment = false;
            }
        }

        private void AddTurnCardsToGridStackPanel()
        {
            StackPanel_TurnCardContainer.Children.Clear();
            InsertTagToStackPanel("Actual: ");
            ConfigureAllreadyHaveAppointmentFlag();

            bool isMyTurn = false;
            for (int i = 0; i < appointmentList.Count; i++)
            {
                if (!isMyTurn && appointmentList[i].student_IdStudent == student.idStudent )
                {
                    if (i == 1 )
                    {
                        MessageBox.Show(Properties.Resources.MessageBox_Notification_YourTurnNext, "FEI", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    }
                    else if (i == 0 && !AllreadyInAppointment)
                    {
                        MessageBox.Show(Properties.Resources.MessageBox_Notification_YourTurn, "FEI", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                        AllreadyInAppointment = true;

                    }
                    InsertTagToStackPanel("Tu turno");
                    isMyTurn = true;
                }
                
                if (i == 1 && !isMyTurn)
                {
                    InsertTagToStackPanel("Siguiente: ");
                }

                TurnCard turnCard = new TurnCard();
                turnCard.ConfigureTurnCardWindow(appointmentList[i]);
                turnCard.Margin = new Thickness(0, 0, 0, 20); 
                StackPanel_TurnCardContainer.Children.Add(turnCard);
            }
            ConfigureRequestAndLeaveButtons();
        }

        private void InsertTagToStackPanel(string text)
        {
             Label yourTurnLabel = new Label
             {
                Content = text,
                FontSize = 18,
                Margin = new Thickness(6, 20, 0, 10),
                HorizontalAlignment = HorizontalAlignment.Center
             };
             StackPanel_TurnCardContainer.Children.Add(yourTurnLabel);
        }

        private void ConfigureRequestAndLeaveButtons()
        {
            if (allreadyHaveAppointment)
            {
                Button_AppointmentRequest.IsEnabled = false;
                Button_AppointmentRequest.Effect = new System.Windows.Media.Effects.BlurEffect();
                Button_LeaveShift.IsEnabled = true;
                Button_LeaveShift.Effect = null;
            }
            else
            {
                Button_AppointmentRequest.IsEnabled = true;
                Button_AppointmentRequest.Effect = null;
                Button_LeaveShift.IsEnabled = false;
                Button_LeaveShift.Effect = new System.Windows.Media.Effects.BlurEffect();
            }
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

        private void Button_LogOut_Click(object sender, RoutedEventArgs e)
        {

            MessageBoxResult result = MessageBox.Show("¿Deseas cerrar sesión?", "Cerrar Sesión", MessageBoxButton.YesNo, MessageBoxImage.Question);

            if (result == MessageBoxResult.Yes)
            {
                if (allreadyHaveAppointment)
                {
                    MessageBoxResult leaveShiftResult = MessageBox.Show("¿Deseas abandonar tu turno?", "Abandonar Turno", MessageBoxButton.YesNo, MessageBoxImage.Question);

                    if (leaveShiftResult == MessageBoxResult.No)
                    {
                        LeaveAppointment leaveApointmentBox = new LeaveAppointment();
                        if (leaveApointmentBox.ShowDialog() == true)
                        {
                            string reason = leaveApointmentBox.Reason;
                            LeaveAppointment(reason);
                            GoToLogIn();
                        }
                    }
                    else
                    {
                        GoToLogIn();
                    }
                }
                else
                {
                    GoToLogIn();
                }
            }
        }

        private void Button_AppointmentRequest_Click(object sender, RoutedEventArgs e)
        {
            AppointmentRequest appointmentRequestWindow = new AppointmentRequest(this);
            appointmentRequestWindow.ConfigureWindowVariables(student);
            this.Effect = new System.Windows.Media.Effects.BlurEffect();
            appointmentRequestWindow.ShowDialog();
            this.Effect = null;
        }

        private void Button_LeaveShift_Click(object sender, RoutedEventArgs e)
        {
            LeaveShift leaveShiftWindow = new LeaveShift(this);
            this.Effect = new System.Windows.Media.Effects.BlurEffect();
            leaveShiftWindow.ShowDialog();
            this.Effect = null;
        }

        public void SetAppointments(Appointment[] appointments)
        {
            this.appointmentList = appointments.ToList();
            AddTurnCardsToGridStackPanel();
        }

        public void LeaveAppointment(string notAttendedReason)
        {
            Button_AppointmentRequest.IsEnabled = true;
            Button_AppointmentRequest.Effect = null;
            Button_LeaveShift.IsEnabled = false;
            Button_LeaveShift.Effect = new System.Windows.Media.Effects.BlurEffect();
            try
            {
                appointmentClient.LeaveAppointment(student.idStudent, notAttendedReason);
                AllreadyInAppointment = false;
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

        public void RequestAppointment(Appointment appointment)
        {
            if (appointment != null)
            {
                Button_AppointmentRequest.IsEnabled = false;
                Button_AppointmentRequest.Effect = new System.Windows.Media.Effects.BlurEffect();
                Button_LeaveShift.IsEnabled = true;
                Button_LeaveShift.Effect = null;
                try
                {
                    appointmentClient.AppointmentRequest(appointment);
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
        }

        public void UpdateTimer(TimeSpan elapsedTime)
        {
            string formattedTime = string.Format("{0:D2}:{1:D2}:{2:D2}",
                                         elapsedTime.Hours,
                                         elapsedTime.Minutes,
                                         elapsedTime.Seconds);

            Label_Timer.Content = formattedTime;
        }

        public void NotifyCancellation(string reason)
        {
            MessageBox.Show("Tu cita ha sido cancelada, \nRazón: " + reason,"Turno Cancelado",MessageBoxButton.OK,MessageBoxImage.Information);
        }
    }
}
