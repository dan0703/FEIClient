using FEIClient.FEIService;
using FEIClient.Logic;
using log4net;
using System;
using System.ServiceModel;
using System.Windows;


namespace FEIClient.Views
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(Login));
        private ViewStudentInfoClient studentInfoClient;
        public Login()
        {
            InitializeComponent();
            studentInfoClient = new ViewStudentInfoClient();

        }
        private void ShowMessageBoxServiceExceptionError()
        {
            MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
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

        private void Button_Login_Click(object sender, RoutedEventArgs e)
        {
            if (!IsUserOrPasswordEmpty())
            {
                LogIn();
            }
            
        }

        private void Button_SignUp_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var signUpWindow = new SignUp();
                Close();
                signUpWindow.ShowDialog();
            }          
            catch (CommunicationException ex)
            {
                ShowMessageBoxServiceExceptionError();
                log.Error(ex);

            }
            catch (TimeoutException ex)
            {
                ShowMessageBoxServiceExceptionError();
                log.Error(ex);

            }
            catch (Exception ex)
            {
                ShowMessageBoxServiceExceptionError();
                log.Error(ex);
            }

        }
        private bool IsUserOrPasswordEmpty()
        {
            bool isEmpty = false;
            if ((TextBox_User.Text == "") || (PasswordBox_Password.Password == ""))
            {
                MessageBox.Show(Properties.Resources.MessageBox_Error_EmptyFields, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                isEmpty = true;
            }
            return isEmpty;
        }
        private void LogIn()
        {
            if(TextBox_ShowPassword.Visibility == Visibility.Visible)
            {
                PasswordBox_Password.Password = TextBox_ShowPassword.Text;
            }
            string passwordHashed = Complements.EncryptPassword(PasswordBox_Password.Password);
            string user = TextBox_User.Text;
            try
            {
                var newAccount = studentInfoClient.LogIn(user, passwordHashed);
                if (newAccount != null)
                {
                    var menuWindow = new Menu();
                    menuWindow.ConfigureMenuWindow(newAccount);
                    Close();
                    menuWindow.ShowDialog();
                }
                else
                {
                    MessageBox.Show(Properties.Resources.MessageBox_SignIn_IncorrectCredentials, "FEI", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            catch (CommunicationException ex)
            {
                MessageBox.Show(ex.Message);
                ShowMessageBoxServiceExceptionError();
                log.Error(ex);

            }
            catch (TimeoutException ex)
            {
                MessageBox.Show(ex.Message);

                ShowMessageBoxServiceExceptionError();
                log.Error(ex);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);

                ShowMessageBoxServiceExceptionError();
                log.Error(ex);

            }
        }
    }
}
