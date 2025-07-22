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
    /// Interaction logic for SatffWindow.xaml
    /// </summary>
    public partial class SatffWindow : Window
    {
        private readonly BookingService bookingService;
        private readonly KitService kitService;
        public User user { get; set; }
        public SatffWindow()
        {
            InitializeComponent();
        }

        public SatffWindow(User am)
        {
            InitializeComponent();
            user = am;
            bookingService = new BookingService(new BookingRepository());
            kitService = new KitService();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            LoadDataBooking();
        }

        private void LoadDataBooking()
        {
            var booking = bookingService.GetAllBookings();
            lvBooking.ItemsSource = null;
            lvBooking.ItemsSource = booking;
        }

        private void btnAddKit_Click(object sender, RoutedEventArgs e)
        {
            Booking selected = lvBooking.SelectedItem as Booking;
            if (selected == null)
            {
                MessageBox.Show("Chọn khách hàng để tạo Kit!", "Tạo Kit", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                KitWindow kitWindow = new KitWindow(user);
                kitWindow.EditedOne = selected;
                kitWindow.ShowDialog();
                LoadDataBooking();
            }
        }

        private void btnAddTest_Click(object sender, RoutedEventArgs e)
        {
            Booking selected = lvBooking.SelectedItem as Booking;
            if (selected == null)
            {
                MessageBox.Show("Chọn khách hàng để tạo kết quả xét nghiệm!", "Tạo kết quả xét nghiệm", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                TestResultWindow testResult = new TestResultWindow(user);
                testResult.EditedOne = selected;
                testResult.ShowDialog();
                LoadDataBooking();
            }
        }
    }
}
