using FEIClient.FEIService;
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
    /// Lógica de interacción para TurnCard.xaml
    /// </summary>
    public partial class TurnCard : UserControl
    {
        private StudentClient studentClient;
        private Student student;
        public TurnCard()
        {
            InitializeComponent();
            studentClient = new StudentClient();
        }

        public void ConfigureTurnCardWindow(Appointment appointment)
        {
            GetStudentNameById(appointment.student_IdStudent);
            Label_Matricula.Content = appointment.student_IdStudent;
            

        }
        
        private void GetStudentNameById(string idStudent)
        {
            this.student = studentClient.GetStudentNameById(idStudent);
            Label_Name.Content = student.fullName;
        }
    }
}
