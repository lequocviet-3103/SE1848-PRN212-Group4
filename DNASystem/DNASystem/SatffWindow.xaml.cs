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
        private readonly UserService userService;
        private readonly ServiceService serviceService;
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
            serviceService = new ServiceService();
            userService = new UserService();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            LoadDataBooking();
        }

        private void LoadDataBooking1()
        {
            var booking = bookingService.GetAllBookings();
            var kits = kitService.GetKits();
            var display = booking.Select(b => 
            {
                var kit = kits.FirstOrDefault(k => k.BookingId == b.BookingId);
                var user = userService.GetAllUsers().FirstOrDefault(u => u.UserId == b.CustomerId);
                var service = serviceService.GetAllServices().FirstOrDefault(s => s.ServiceId == b.ServiceId);
                return new ViewBooking
                {
                    BookingId = b.BookingId,
                    Fullname = user.Fullname,
                    ServiceName = service.Name,
                    Date = b.Date,
                    Address = user.Address,
                    Method = b.Method,
                    Status = b.Status,
                    KitStatus = kits.FirstOrDefault(k => k.BookingId == b.BookingId)?.Status ?? "Chưa có Kit"
                };
            
            }).ToList();
            lvBooking.ItemsSource = null;
            lvBooking.ItemsSource = display;
        }

        private void LoadDataBooking()
        {
            var booking = bookingService.GetAllBookings();
            lvBooking.ItemsSource = null;
            lvBooking.ItemsSource = booking;
        }

        private void ActionButton_Loaded(object sender, RoutedEventArgs e)
        {
            if (sender is Button btn && btn.Tag != null)
            {
                var bookingItem = btn.Tag;
                var props = bookingItem.GetType().GetProperties();

                string method = props.FirstOrDefault(p => p.Name == "Method")?.GetValue(bookingItem)?.ToString();
                string status = props.FirstOrDefault(p => p.Name == "Status")?.GetValue(bookingItem)?.ToString();

                string kitStatus = null;

                var kitsProp = props.FirstOrDefault(p => p.Name == "Kits")?.GetValue(bookingItem) as IEnumerable<object>;
                var firstKit = kitsProp?.Cast<object>().FirstOrDefault();
                if (firstKit != null)
                {
                    var kitProps = firstKit.GetType().GetProperties();
                    kitStatus = kitProps.FirstOrDefault(p => p.Name == "Status")?.GetValue(firstKit)?.ToString();
                }

                if (method == "Tại phòng khám" && status == "Đã check in")
                {
                    btn.Content = "Đang thực hiện";
                    btn.Visibility = Visibility.Visible;
                }
                else if (method == "Tại nhà" && status == "Đã gửi mẫu" && kitStatus == "Đang lấy mẫu")
                {
                    btn.Content = "Đã lấy mẫu";
                    btn.Visibility = Visibility.Visible;
                }
                else
                {
                    btn.Visibility = Visibility.Collapsed;
                }
            }
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

        private void ActionButton_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button btn && btn.Tag != null)
            {
                var bookingItem = btn.Tag;
                var props = bookingItem.GetType().GetProperties();

                string bookingId = props.FirstOrDefault(p => p.Name == "BookingId")?.GetValue(bookingItem)?.ToString();
                string action = btn.Content.ToString();

                if (string.IsNullOrEmpty(bookingId)) return;

                switch (action)
                {
                    case "Đã lấy mẫu":
                        kitService.UpdateKitStatus(bookingId, "Đã lấy mẫu");
                        bookingService.UpdateBookingStatus(bookingId, "Đã thực hiện");
                        MessageBox.Show("Đã cập nhật trạng thái nhận Kit.");
                        break;


                    default:
                        break;
                }

                LoadDataBooking();
            }
        }
    }
}
