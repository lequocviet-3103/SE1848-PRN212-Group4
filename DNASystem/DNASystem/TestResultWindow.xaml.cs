using BusinessObjects;
using Repositories;
using Services;
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

namespace DNASystem
{
    /// <summary>
    /// Interaction logic for TestResultWindow.xaml
    /// </summary>
    public partial class TestResultWindow : Window
    {
        public User user { get; set; }
        public Booking EditedOne { get; set; }
        private TestResultService testResultService;
        private BookingService bookingService;
        public TestResultWindow()
        {
            InitializeComponent();
        }
        public TestResultWindow(User am)
        {
            InitializeComponent();
            this.user = am;
            testResultService = new TestResultService();
            bookingService = new BookingService(new BookingRepository());
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            TestResult testResult = new TestResult();
                testResult.CustomerId = txtCustomerId.Text;
                testResult.StaffId = txtStaffId.Text;
                testResult.BookingId = txtBookingId.Text;
                testResult.ServiceId = txtServiceId.Text;
                testResult.Date = (DateTime)dpReceiveDate.SelectedDate;
                testResult.Description = txtDescription.Text;
                testResult.Status = cbStatus.Text;
            testResultService.AddTestResult(testResult);
            bookingService.UpdateBookingStatus(EditedOne.BookingId, "Hoàn thành");
            MessageBox.Show("Thêm kết quả xét nghiệm thành công!", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Information);
            Close();
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            FillElement();
        }

        
        private void FillElement()
        {
            txtBookingId.Text = EditedOne.BookingId;
            txtStaffId.Text = user.UserId;
            txtCustomerId.Text = EditedOne.CustomerId;
            txtServiceId.Text = EditedOne.ServiceId;
        }
    }
}
