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
using BusinessObjects;
using Services;

namespace DNASystem
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        private readonly IUserService iUserService;
        public LoginWindow()
        {
            InitializeComponent();
            iUserService = new UserService();
            this.WindowState = WindowState.Maximized;
        }

        private void btnTrangChu_Click(object sender, RoutedEventArgs e)
        {

        }

        private void chkGhiNhoDangNhap_Checked(object sender, RoutedEventArgs e)
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
            User user = iUserService.GetAccountByUsername(txtTenDangNhap.Text);
            if (user != null && user.Password.Equals(txtPassword.Password) && user.RoleId.Equals("R001"))
            {
            
                AdminWindow adminWindow = new AdminWindow();
                adminWindow.ShowDialog();
                Close();
            }
            else if (user != null && user.Password.Equals(txtPassword.Password) && user.RoleId.Equals("R002"))
            {
                HomeWindow cusWindow = new HomeWindow(user);
                cusWindow.ShowDialog();
                Close();
            }
            else if (user != null && user.Password.Equals(txtPassword.Password) && user.RoleId.Equals("R003"))
            {
                SatffWindow staffWindow = new SatffWindow(user);
                staffWindow.ShowDialog();
                Close();
            }
            else
            {
                MessageBox.Show("Tên đăng nhập hoặc mật khẩu không đúng!", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void btnDangKy_Click(object sender, RoutedEventArgs e)
        {
            RegisterWindow registerWindow = new RegisterWindow();   
            registerWindow.ShowDialog();
            Close();
        }

        private void btnQuenMatKhau_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnGoogle_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnFacebook_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnGioiThieu_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnTinTuc_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnChinhSach_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
