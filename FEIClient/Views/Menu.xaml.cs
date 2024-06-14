using FEIClient.FEIService;
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
        private bool allreadyHaveAppointment = false;
        private  AppointmentClient appointmentClient;
        private List<Appointment> appointmentList;
        private ViewStudentInfo student;
        private  TutorClient tutorClient;
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
                AddTurnCardsToGrid();
            }
            catch (CommunicationException ex)
            {
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                GoToLogIn();
            }
            catch (TimeoutException ex)
            {
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                GoToLogIn();
            }
            catch (Exception ex)
            {
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
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
                Console.WriteLine(ex.Message);
            }
            return tutorName;
        }

        private void GetAppointmentList()
        {
            appointmentList = appointmentClient.GetAllAppointments().ToList();
        }

        private void AddTurnCardsToGrid()
        {
            StackPanel_TurnCardContainer.Children.Clear();
            Label actualLabel = new Label
            {
                Content = "Actual",
                FontSize = 22,
                FontWeight = FontWeights.Bold,
                Margin = new Thickness(6, 0, 0, 10),
                HorizontalAlignment = HorizontalAlignment.Left
            };
            StackPanel_TurnCardContainer.Children.Add(actualLabel);
            if (appointmentList.Count==0)
            {
                allreadyHaveAppointment = false;
            }
            for (int i = 0; i < appointmentList.Count; i++)
            {
                if (appointmentList[i].student_IdStudent == student.idStudent && !allreadyHaveAppointment)
                {
                    if (i == 1)
                    {
                        MessageBox.Show(Properties.Resources.MessageBox_Notification_YourTurnNext, "FEI", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    }else if (i == 0)
                    {
                        MessageBox.Show(Properties.Resources.MessageBox_Notification_YourTurn, "FEI", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    }
                    Label yourTurnLabel = new Label
                    {
                        Content = "Tu turno",
                        FontSize = 18,
                        Margin = new Thickness(6, 20, 0, 10),
                        HorizontalAlignment = HorizontalAlignment.Center
                    };
                    StackPanel_TurnCardContainer.Children.Add(yourTurnLabel);
                    allreadyHaveAppointment = true;
                }
                

                if (i == 1 && !allreadyHaveAppointment)
                {
                    Label siguienteLabel = new Label
                    {
                        Content = "Siguiente: ",
                        FontSize = 22,
                        FontWeight = FontWeights.Bold,
                        Margin = new Thickness(6, 20, 0, 20),
                        HorizontalAlignment = HorizontalAlignment.Left
                    };
                    StackPanel_TurnCardContainer.Children.Add(siguienteLabel);
                    
                }

                TurnCard turnCard = new TurnCard();
                turnCard.ConfigureTurnCardWindow(appointmentList[i]);
                turnCard.Margin = new Thickness(0, 0, 0, 20); 

                StackPanel_TurnCardContainer.Children.Add(turnCard);
            }
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
            Login loginWindow = new Login();
            student = null;
            Close();
            loginWindow.ShowDialog();
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
            AddTurnCardsToGrid();
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
            }
            catch (CommunicationException ex)
            {
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                GoToLogIn();
            }
            catch (TimeoutException ex)
            {
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                GoToLogIn();
            }
            catch (Exception ex)
            {
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
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
                    MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                catch (TimeoutException ex)
                {
                    MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
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
