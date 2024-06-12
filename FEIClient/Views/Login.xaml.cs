using Microsoft.Win32;
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
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
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
            var menuWindow = new Menu();
            menuWindow.ConfigureMenuWindow("dan joshua segura domínguez");
            Close();
            menuWindow.ShowDialog();
        }

        private void Button_SignUp_Click(object sender, RoutedEventArgs e)
        {
            var signUpWindow = new SignUp();
            Close();
            signUpWindow.ShowDialog();
        }
    }
}
