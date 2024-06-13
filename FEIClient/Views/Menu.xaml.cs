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
    public partial class Menu : Window
    {
        private List<String> items;
        private string account;
        public Menu()
        {
            InitializeComponent();
        }
        public void ConfigureMenuWindow(ViewStudentInfo account)
        {
            try
            {
                this.account = account.fullName;
                Label_Name.Content = account;
                items = new List<string>
                {
                    
                    "AnotherUser",
                    "MoreUsers",
                    "AnotherUser",
                    account.fullName,
                    "MoreUsers",
                    "AnotherUser",
                    "MoreUsers",
                    "AnotherUser",
                    "MoreUsers"
                };
                AddTurnCardsToGrid();
            }
            catch (Exception ex)
            {
                //   log.Error(ex);
                MessageBox.Show(Properties.Resources.MessageBox_Error_ServiceException + ex.Message);
            }
        }

        private void AddTurnCardsToGrid()
        {
            StackPanel_TurnCardContainer.Children.Clear();

            bool isYourTurn = false;

            Label actualLabel = new Label
            {
                Content = "Actual",
                FontSize = 22,
                FontWeight = FontWeights.Bold,
                Margin = new Thickness(6, 0, 0, 10),
                HorizontalAlignment = HorizontalAlignment.Left
            };
            StackPanel_TurnCardContainer.Children.Add(actualLabel);

            for (int i = 0; i < items.Count; i++)
            {
                if (items[i] == account && !isYourTurn)
                {
                    Label yourTurnLabel = new Label
                    {
                        Content = "Tu turno",
                        FontSize = 18,
                        Margin = new Thickness(6, 20, 0, 10),
                        HorizontalAlignment = HorizontalAlignment.Center
                    };
                    StackPanel_TurnCardContainer.Children.Add(yourTurnLabel);
                    isYourTurn = true; 
                }

                if (i == 1 && !isYourTurn)
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
                turnCard.ConfigureTurnCardWindow(items[i]);
                turnCard.Margin = new Thickness(0, 0, 0, 20); 

                StackPanel_TurnCardContainer.Children.Add(turnCard);
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
