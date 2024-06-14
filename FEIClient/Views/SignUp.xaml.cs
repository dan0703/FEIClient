using FEIClient.FEIService;
using FEIClient.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Text.RegularExpressions;
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
    /// Clase de lógica de interacción para la ventana de registro (SignUp.xaml).
    /// Esta clase maneja los eventos y la lógica detrás de la interfaz de usuario
    /// de la ventana de registro, incluyendo validaciones y comunicación con
    /// el backend para registrar nuevos estudiantes.
    /// </summary>
    public partial class SignUp : Window
    {
        private TutorClient tutorClient;
        private CareerClient careerClient;
        private StudentClient studentClient;

        private List<Tutor> tutorList;
        private List<Career> careerList;

        public SignUp()
        {
            InitializeComponent();
            tutorClient = new TutorClient();
            careerClient = new CareerClient();
            studentClient = new StudentClient();

            tutorList = new List<Tutor>();
            careerList = new List<Career>();

            GetTutorList();
            GetCareerList();
        }

        private void GoToLogIn()
        {
            Login loginWindow = new Login();
            Close();
            loginWindow.ShowDialog();
        }

        private void Button_Login_Click(object sender, RoutedEventArgs e)
        {
            GoToLogIn();
        }
        private void RegisterStudent(ViewStudentInfo student)
        {
            try
            {

                if (studentClient.RegisterStudent(student))
                {
                    MessageBox.Show(Properties.Resources.MessageBox_Success_RegisterSucessfull, "FEI", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    MessageBox.Show(Properties.Resources.MessageBox_Error_RegisterError, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);

                }
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

        private void Button_SignUp_Click(object sender, RoutedEventArgs e)
        {
            if (AreAllFieldsFilled())
            {
                if (IsPasswordValid(PasswordBox_Password.Password))
                {
                    if (IsValidMatricula(TextBox_Matricula.Text))
                    {
                        if (TextBox_ShowPassword.Visibility == Visibility.Visible)
                        {
                            PasswordBox_Password.Password = TextBox_ShowPassword.Text;
                        }
                        ViewStudentInfo studentInfo = new ViewStudentInfo()
                        {
                            password = Complements.EncryptPassword(PasswordBox_Password.Password),
                            fullName = TextBox_User.Text,
                            idStudent = TextBox_Matricula.Text.ToLower(),
                            idCareer = (int)ComboBox_EducationalProgram.SelectedValue,
                            idTutor = (int)ComboBox_Tutor.SelectedValue,
                        };

                        RegisterStudent(studentInfo);
                    }
                    else
                    {
                        MessageBox.Show(Properties.Resources.MessageBox_SingUp_BadMatricula, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                else
                {
                    MessageBox.Show(Properties.Resources.MessageBox_SingUp_BadPassword, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show(Properties.Resources.MessageBox_Error_EmptyFields, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            
        }

        private bool AreAllFieldsFilled()
        {
            bool allFieldsFilled = true;

            if (ComboBox_Tutor.SelectedValue == null)
            {
                allFieldsFilled = false;
            }
            else if (ComboBox_EducationalProgram.SelectedValue == null)
            {
                allFieldsFilled = false;
            }
            else if (string.IsNullOrWhiteSpace(TextBox_Matricula.Text))
            {
                allFieldsFilled = false;
            }
            else if (string.IsNullOrWhiteSpace(TextBox_User.Text))
            {
                allFieldsFilled = false;
            }
            else if (string.IsNullOrWhiteSpace(TextBox_ShowPassword.Text))
            {
                allFieldsFilled = false;
            }

            return allFieldsFilled;
        }
        private bool IsValidMatricula(string matricula)
        {
            return Regex.IsMatch(matricula, @"^zs\d{8}$");
        }


        private void Button_ShowPassword_Click(object sender, RoutedEventArgs e)
        {
            if (TextBox_ShowPassword.Visibility == Visibility.Collapsed)
            {
                TextBox_ShowPassword.Visibility = Visibility.Visible;
                TextBox_ShowPassword.Text = PasswordBox_Password.Password;
                PasswordBox_Password.Visibility = Visibility.Hidden;
            }
            else
            {
                PasswordBox_Password.Password = TextBox_ShowPassword.Text;
                TextBox_ShowPassword.Visibility = Visibility.Collapsed;
                PasswordBox_Password.Visibility = Visibility.Visible;
            }
        }

        private void GetTutorList()
        {

                tutorList = tutorClient.GetTutorsList().ToList();
                ComboBox_Tutor.ItemsSource = tutorList;
                ComboBox_Tutor.DisplayMemberPath = "fullName";
                ComboBox_Tutor.SelectedValuePath = "idTutor";

        }

        private void GetCareerList()
        {

                careerList = careerClient.GetCareerList().ToList();
                ComboBox_EducationalProgram.ItemsSource = careerList;
                ComboBox_EducationalProgram.DisplayMemberPath = "name";
                ComboBox_EducationalProgram.SelectedValuePath = "idCareer";

        }

        private bool IsPasswordValid(string password)
        {
            bool isValid = true;
            if (password.Length < 8)
            {
                isValid= false;
            }

            if (!Regex.IsMatch(password, @"\d"))
            {
                isValid = false;
            }

            if (!Regex.IsMatch(password, @"[^\w\d]"))
            {
                isValid = false;
            }

            return isValid;
        }
    }
}
