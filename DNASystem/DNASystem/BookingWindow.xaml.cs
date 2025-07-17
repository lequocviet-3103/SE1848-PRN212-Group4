using System;
using System.Windows;
using BusinessObjects;
using Services;
using Repositories;

namespace DNASystem
{
    public partial class BookingWindow : Window
    {
        private readonly Service selectedService;
        private readonly BookingService bookingService;
        private readonly string? customerId;

        public BookingWindow(Service service, string? currentCustomerId = null)
        {
            InitializeComponent();
            selectedService = service;
            customerId = currentCustomerId;
            this.WindowState = WindowState.Maximized;   // Toàn màn hình
  
            // Khởi tạo BookingService (bạn có thể dùng DI nếu có)
            bookingService = new BookingService(new BookingRepository());

            // Gán dữ liệu dịch vụ lên UI
            txtServiceName.Text = selectedService.Name;
            txtPrice.Text = selectedService.Price.HasValue
                ? selectedService.Price.Value.ToString("N0") + " VNĐ"
                : "Chưa có giá";
            txtDescription.Text = selectedService.Description;
            txtServiceType.Text = selectedService.Type;
        }

        private void btnXacNhan_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Kiểm tra dữ liệu bắt buộc
                if (string.IsNullOrWhiteSpace(txtFullName.Text) ||
                    string.IsNullOrWhiteSpace(txtPhone.Text) ||
                    dpNgayDat.SelectedDate == null ||
                    string.IsNullOrWhiteSpace(txtSampleAddress.Text))
                {
                    MessageBox.Show("Vui lòng nhập đầy đủ các thông tin bắt buộc!", "Thiếu thông tin", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                // Tạo đối tượng Booking
                var booking = new Booking
                {
                    BookingId = bookingService.GenerateNewBookingId(),
                    CustomerId = "U001", // nếu bạn có login, truyền từ constructor
                    Date = dpNgayDat.SelectedDate.Value,
                    StaffId = null, // để null, sẽ cập nhật sau nếu cần
                    ServiceId = selectedService.ServiceId,
                    Address = txtSampleAddress.Text.Trim(),
                    Method = rbHome.IsChecked == true ? "Tự thu mẫu" : "Tại cơ sở y tế",
                    Status = "Chờ xác nhận"
                };

                bookingService.AddBooking(booking);

                MessageBox.Show("Đặt dịch vụ thành công!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
                btnQuayVe_Click(sender, e);
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã xảy ra lỗi khi đặt dịch vụ: " + ex.Message, "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void btnQuayVe_Click(object sender, RoutedEventArgs e)
        {
            var home = new HomeWindow();
            home.Show();
            this.Close();
        }

    }
}
