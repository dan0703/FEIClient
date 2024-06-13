using FEIClient.FEIService;
using FEIClient.Logic;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace FEIClient.Views
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        private ViewStudentInfoClient studentInfoClient;
        public Login()
        {
            InitializeComponent();
            studentInfoClient = new ViewStudentInfoClient();

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
}
