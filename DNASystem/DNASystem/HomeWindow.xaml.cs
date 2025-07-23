using System;
using System.Collections.Generic;
using System.Linq;
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
using BusinessObjects;
using Services;

namespace DNASystem
{
    /// <summary>
    /// Interaction logic for HomeWindow.xaml
    /// </summary>
    public partial class HomeWindow : Window
    {
        public User currentuser { get; set; }
        ContextMenu userMenu = new ContextMenu();
        private readonly IServiceService serviceService;
        public HomeWindow(User user)
        {
            InitializeComponent();
            serviceService = new ServiceService();
            this.WindowState = WindowState.Maximized;
            currentuser = user;
            txtWelcomeUser.Text = $"Welcome, "+ currentuser.Fullname;
            

            btnHuyetThong.IsChecked = true;
            LoadServices("Huyết thống");
        }

        private void LoadServices(string type)
        {
            try
            {
                if (serviceService == null)
                {

                    return;
                }

                var services = serviceService.GetServicesByType(type);

                if (services == null)
                {
                    MessageBox.Show("❌ Services list is NULL");
                }
                else
                {
                    icServiceList.ItemsSource = services;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi LoadServices: " + ex.Message);
            }
        }

        private void btnTrangChu_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnDichVu_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnVeChungToi_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnBlog_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnLienHe_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnDangNhap_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnDangKy_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ServiceTab_Checked(object sender, RoutedEventArgs e)
        {
            var clicked = sender as ToggleButton;

            if (btnHuyetThong != null && clicked != btnHuyetThong) btnHuyetThong.IsChecked = false;
            if (btnHanhChinh != null && clicked != btnHanhChinh) btnHanhChinh.IsChecked = false;
            if (btnDanSu != null && clicked != btnDanSu) btnDanSu.IsChecked = false;

            if (clicked?.Content is string type)
            {
                LoadServices(type);
            }
        }

        private void btnXemChiTietChaCon_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnXemChiTietMeCon_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnXemChiTietAnhEm_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnDangKyTuVan_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnChiTiet_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button btn && btn.DataContext is Service selectedService)
            {
                var bookingWindow = new BookingWindow(selectedService,currentuser);
                bookingWindow.Show();
                this.Hide();
            }
        }

        private void MenuProfile_Click(object sender, RoutedEventArgs e)
        {

        }

        private void MenuLogout_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnUserMenu_Click(object sender, RoutedEventArgs e)
        {
            UserPopup.IsOpen = true;
        }
        

        private void btnProfile_Click(object sender, RoutedEventArgs e)
        {
            CustomerProfileWindow profileWindow = new CustomerProfileWindow(currentuser);
            profileWindow.Show();
            this.Close();
        }

        private void btnHistory_Click(object sender, RoutedEventArgs e)
        {
            TestHistoryWindow testHistoryWindow = new TestHistoryWindow(currentuser);
            testHistoryWindow.Show();
            this.Close();
        }

        private void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            LoginWindow loginWindow = new LoginWindow();
            loginWindow.Show();
            this.Close();
        }
    }
}
