   M S B A M L   `   `   `  ����D  @DNASystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:DNASystem	DNASystem  5   	   (    "DNASystem.DNATestingServiceLanding   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:DNASystem     5   	     � Title$  DNATestingServiceLanding��5   	   $
��1450��6*   $	��800��68    � 	Resources 5	         ServiceTabToggle �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property	 P� Value  TextLikeButton��%z  &	        &	     �� 5
   
   " d�6)   .�5      ��  � ��$ 5q�6'   �� 5       � ��$
 10,5q�6(   �� 5       � ��
 ���� 6+   �� 5       � ��
 �   �6+   �� 5       � �� �#1E90FF6,   �� 5       � ��$ 1q�60   �� 5       �@�Cursor$
 Hand��6'   �� 5       � �� 5      �� 5      " d�6&   .R�5      �� #��z��6!   #��z��5      #��z��5      $ 5��5      ._�5      �� $��Center=�6/   $��Center=�6L   $��5q�6g   5      5      5       5      P� 5       �@d�	IsChecked$
	 TrueY�6/   . �5       ��  � �� �#1E90FF63   �� 5!       � ��
 �����63   5"      P� 5#       �@J�IsMouseOver$
	 True��61   . �5$      ��  � �� �#00BFFF64   5%      5'      �� 5(   
   " ��6'   .�5)      ��  � ��
 ���� 6+   �� 5*       � ��$ 0q�60   �� 5+       � ��
 �����6+   �� 5,       � ��$ 14(�6)   �� 5-       � ��$
 Left=�64   �� 5.       �@�Cursor$
 Hand��6'   �� 5/       � ��$ 0q�6(   �� 50       � �� 51      �� 52      " ��6&   .R�53      �� #��z��6$   #��z��54      #��z��55      #��z��56      $
��Wrap=�57      58      5:       5;      P� 5<       �@J�IsMouseOver$
	 True��61   . �5=      ��  � ��
 �����63   5>      5@      5A      .��5B      �� $
��Auto=�6   .��5C   
   �� .+�5E      � $��60��6   
�������$	��Top=�62   
 � ColumnDefinitions
 5F      �� 5G      $
��Auto �6'   �� 5H      $��* �6'   �� 5I      $
��Auto �6'   �� 5J      $
��Auto �6'   .+�5M      �� $��0��6   $��DNA Testing VN��6,   $��18(�5N      $
��Bold"�6   $��Center=�5O      $
��20,0q�6'   �� 5Q      $��2��6    �� Orientation$ 
Horizontal=�6-   $��Center=�5R      $��0,0,10,0q�6(   .+�5S      �� -   5         ��Name$ btnTrangChu��5S      $��Trang chủ��62   #��[ 6F   $
��10,0q�6n   
���   �6�   �� 5T      -   5        $ 	btnDichVu��5T      $��Dịch vụ��60   #��[ 6B   $
��10,0q�6j   
���   �6�   �� 5U      -   5        $ btnVeChungToi��5U      $��Về chúng tôi��64   #��[ 6K   $
��10,0q�6s   
���   �6�   �� 5V      -   5        $ btnBlog��5V      $
��Blog��6.   #��[ 6=   $
��10,0q�6e   
���   �6�   �� 5W      -   5        $ btnLienHeHeader��5W      $��
Liên hệ��66   #��[ 6H   $
��10,0q�6p   
���   �6�   5X      �� 5Z      $��3��6   $ 
Horizontal=�6-   $��Center=�5[      $��	10,0,20,0q�60   $��Right=�6C   .+�5\      �� -   5        $ btnUserMenu��5\      
������ 
������ 
���   �$
��10,5q�5^      $	��5,0q�6$    � Cursor$
 Hand��61   .��5`      �� $ 
Horizontal=�6%   .+�5a      �� -   5         ��Name$ txtWelcomeUser��5a   (   ��6@   �� *CurrentUserName+ �� StringFormat$ Welcome, {0}���� 5b      $�� 👤��6(   $��5,0,0,0q�63   5c      5d      5e      � 5g      -   5         �Name$ 	UserPopup��5g      $��Bottom=�5i       � 	StaysOpen$ False��5j       � PlacementTarget 5h      ��  �� ElementName$ btnUserMenu��.��5k      �� 
����������#ccc$��1q�6C   $ 5��6W    �� Padding$ 10q�5l   	   $	��160��6    J� Effect 5m      3  -System.Windows.Media.Effects.DropShadowEffect  5n         Color$ Black��6/      
BlurRadius$ 8Q�6=      ShadowDepth$ 2Q�6L   ._�5p      �� .+�5q      �� -	   5        $ 
btnProfile��5q   %   $��Thông tin cá nhân��69   
������ $��0q�5r   *   $
��Left=�6>   $��5q�5s      $
 Hand��6   6+   �� 5t      -
   5        $ 
btnHistory��5t   %   $��Lịch sử xét nghiệm��69   
������ $��0q�5u      $
��Left=�6.   $��5q�5v      $
 Hand��6   6   �� 5x      -   5        $ 	btnLogout��5x   %   $��Đăng xuất��68   
������ $��0q�5y   *   $
��Left=�6>   $��5q�5z      $
 Hand��6   6+   5{      5|      5}      5~      �� 5�      ���#0B2C4B$ 40q�6*   $��0,0,0,20q�67   ._�5�      � 
 5�      �� 5�      $��3* �6+   �� 5�      $��2* �6+   .+�5�      �� $��0��6!   $��Center=�61   .+�5�      �� $4��.Dịch vụ Xét nghiệm ADN Chuyên nghiệp��6$   $��26(�5�      $
��Bold"�5�      
�������$
��Wrap=�5�      $	��400��5�      �� 5�      $q��kTrung tâm xét nghiệm ADN hàng đầu Việt Nam với tỷ lệ chính xác gần như tuyệt đối.��6$   $��	0,10,0,10q�5�      
�������$��14(�6>   $
��Wrap=�6L   �� 5�      $ 
Horizontal=�6%   $��0,10,0,0q�6>   .+�5�      �� -   5        $ btnDatLichHen��5�   %   $��Đặt lịch hẹn��6<   ���#00BFFF
�������$
��10,5q�6{   $��0,0,10,0q�6�   6�   �� 5�      -   5        $ btnTuVanMienPhiBanner��5�   %   $��Tư vấn miễn phí��6D   
�������$��1q�6r   
�������
������ $
��10,5q�6�   6�   5�      �� 5�      $ 
Horizontal=�6%   $��0,20,0,0q�6>   .+�5�      �� $��99.9899%��6(   
�������$
��Bold"�6K   $��0,0,20,0q�6]   �� 5�      $	��10+��6(   
�������$
��Bold"�6F   $��0,0,20,0q�6X   �� 5�      $��50,000+��6(   
�������$
��Bold"�6J   $��0,0,20,0q�6\   �� 5�      $
��24/7��6(   
�������$
��Bold"�6G   5�      5�      �� 5�      $��1��6   $��/Images/banner1.jpg��6,   $	��100��6I   $��134,33,48,33q�6V   5�      5�      �� 5�      $
��30,0q�6   .+�5�      �� $4��.Dịch vụ xét nghiệm ADN chuyên nghiệp��6   $��20(�6H   $
��Bold"�6V   $��0,0,0,10q�6h   $��Center=�6z   �� 5�      $R��LChúng tôi cung cấp các loại xét nghiệm phù hợp mọi nhu cầu.��6   $��12(�6_   
�������$��Center=�6   A� 5�       A� Columns$ 3��6   $��0,20,0,0q�6*   .+�5�      �� ���#DDD$��1q�60   $ 5��6D   $ 10q�6U   $��5q�6b   ._�5�      �� .+�5�      �� $%��/Images/xetnghiemhuyetthong.jpg��6$   $	��100��6M   $��UniformToFill=�6Z   �� 5�      $#��Xét nghiệm huyết thống��6(   $
��Bold"�6F   $	��0,5q�6X   �� 5�      $��• Bố con��6(   $��12(�68   �� 5�      $��• Mẹ con��6(   $��12(�68   �� 5�      -   5        $ btnXetNghiemHuyetThong��5�   %   $��Tìm hiểu thêm >��6E   $��0,10,0,0q�6_   ���#1E90FF
�������6�   5�      5�      �� 5�      ���#DDD$��1q�60   $ 5��6D   $ 10q�6U   $��5q�6b   ._�5�      �� .+�5�      �� $'��!/Images/xetnghiemadnhanhchinh.jpg��6$   $	��100��6O   $��UniformToFill=�6\   �� 5�      $$��Xét nghiệm ADN hành chính��6(   $
��Bold"�6I   $	��0,5q�6[   �� 5�      $$��• Hành chính – pháp lý��6(   $��12(�6F   �� 5�      $!��• Di chúc – tài sản��6(   $��12(�6C   �� 5�      -   5        $ btnXetNghiemADNHanhChinh��5�   %   $��Tìm hiểu thêm >��6G   $��0,10,0,0q�6a   ���#1E90FF
�������6�   5�      5�      �� 5�      ���#DDD$��1q�60   $ 5��6D   $ 10q�6U   $��5q�6b   ._�5�      �� .+�5�      �� $#��/Images/xetnghiemadndansu.jpg��6$   $	��100��6K   $��UniformToFill=�6X   �� 5�      $!��Xét nghiệm ADN dân sự��6(   $
��Bold"�6E   $	��0,5q�6W   �� 5�      $"��• Truy tìm người thân��6(   $��12(�6E   �� 5�      $��• Nhận con nuôi��6(   $��12(�6?   �� 5�      -   5        $ btnXetNghiemADNDanSu��5�   %   $��Tìm hiểu thêm >��6C   $��0,10,0,0q�6]   ���#1E90FF
�������6�   5�      5�      5�      5�      �� 5�      $��
30,30,30,0q�6   .+�5�      �� $+��%Phương thức thu mẫu linh hoạt��6   $��18(�6A   $
��Bold"�6O   $��Center=�6a   �� 5�      $J��DChúng tôi hỗ trợ thu mẫu tại nhà hoặc tại trung tâm.��6   $��12(�6X   
�������$��Center=�6x   $	��0,5q�6�   A� 5�      $ 2��6   $��0,20,0,0q�6*   .+�5�      �� ���#DDD$��1q�60   $ 5��6D   $ 15q�6U   $��5q�6b   ._�5�      �� .+�5�      �� $��Tự thu mẫu tại nhà��6(   $
��Bold"�6B   $��14(�6T   $��0,0,0,5q�6b   �� 5�      $����Nhận bộ kit thu mẫu chuyên nghiệp và tự thực hiện lấy mẫu tại nhà theo hướng dẫn chi tiết, sau đó gửi mẫu về trung tâm.��6(   $��12(�5�      
�������$
��Wrap=�68   $	��0,5q�6L   �� 5�      $"��✔ Tiện lợi, riêng tư��6(   $��12(�6D   $	��0,2q�6R   �� 5�      $#��✔ Hướng dẫn chi tiết��6(   $��12(�6D   $	��0,2q�6R   �� 5�      $��✔ Kit chuyên nghiệp��6(   $��12(�6C   $	��0,2q�6Q   5�      5�      �� 5�      ���#DDD$��1q�60   $ 5��6D   $ 15q�6U   $��5q�6b   ._�5�      �� .+�5�      �� $%��Thu mẫu tại cơ sở y tế��6(   $
��Bold"�6F   $��14(�6X   $��0,0,0,5q�6f   �� 5�      $����Đặt lịch hẹn và đến cơ sở y tế của chúng tôi để được nhân viên y tế chuyên nghiệp lấy mẫu xét nghiệm.��6(   $��12(�5�      
�������$
��Wrap=�68   $	��0,5q�6L   �� 5�      $&�� ✔ Nhân viên chuyên nghiệp��6(   $��12(�6I   $	��0,2q�6W   �� 5�      $*��$✔ Trang thiết bị hiện đại��6(   $��12(�6I   $	��0,2q�6W   �� 5�      $!��✔ An toàn tuyệt đối��6(   $��12(�6C   $	��0,2q�6Q   5�      5�      5�      5�      �� 5�      $��
30,30,30,0q�6   .+�5�      �� $,��&Khách hàng nói gì về chúng tôi��6   $��18(�6B   $
��Bold"�6P   $��Center=�6b   A� 5�      $ 3��6   $��0,20,0,0q�6*   .+�5�      �� ���#F5F5F5$ 10q�62   $ 5��6?   $��5q�6P   ._�5�      �� .+�5�      �� $��Chị Nguyễn Thị Lan��6(   $
��Bold"�6B   �� 5�      $��★★★★★��6(   
��� ���65   �� 5�      $[��UDịch vụ rất chuyên nghiệp, tư vấn kỹ càng và kết quả chính xác.��6(   $��12(�6o   5�      5�      �� 5�      ���#F5F5F5$ 10q�62   $ 5��6?   $��5q�6P   ._�5�      �� .+�5�      �� $��Anh Charles Lamson��6(   $
��Bold"�6B   �� 5�      $��★★★★★��6(   
��� ���65   �� 5�      $?��9Thủ tục đơn giản, nhanh chóng. Rất hài lòng!��6(   $��12(�6\   5�      5�      �� 5�      ���#F5F5F5$ 10q�62   $ 5��6?   $��5q�6P   ._�5�      �� .+�5�      �� $��Bà Lương Hương��6(   $
��Bold"�6>   �� 5�      $��★★★★★��6(   
��� ���65   �� 5�      $S��MThời gian xét nghiệm đúng hẹn, nhân viên hỗ trợ nhiệt tình.��6(   $��12(�6k   5      5     5     5     �� 5     ���#007ACC$ 40q�6*   $��0,30,0,0q�67   ._�5     �� $��Center=�6   .+�5     �� $1��+Sẵn sàng bắt đầu xét nghiệm ADN?��6    $��20(�6H   $
��Bold"�6V   
������� �� TextAlignment$ Center=�6{   �� 5	     $f��`Đặt lịch ngay hôm nay và nhận tư vấn miễn phí từ chuyên gia của chúng tôi.��6    
�������$��12(�6�   $
��0,10q�6�   �� 5
     -   5        $ 	btnDangKy��5
     $��Đăng ký ngay��60   
����������#007ACC$
��10,5q�6o   $	��120��6~   $��5q�6�   6�   �� 5     -   5        $ btnTuVanMienPhi��5     $��Tư vấn miễn phí��66   ���#007ACC
�������$
��10,5q�6x   $	��120��6�   $��5q�6�   6�   5     5     �� 5     ���#0D1B2A$��0,0,0,0q�6*   $ 30q�6;   ._�5     � 
 5     �� 5     $��* �6+   �� 5     $��* �6+   �� 5     $��* �6+   �� 5     $��* �6+   .+�5     �� $��0��6!   .+�5     �� $��DNA Testing VN��6$   
�������$
��Bold"�6M   $��14(�6_   �� 5     $.��(Chuyên nghiệp - Uy tín - Chính xác��6$   
�������$��12(�6a   �� 5     $\��VTrung tâm xét nghiệm ADN hàng đầu Việt Nam với hơn 10 năm kinh nghiệm.��6$   
�������$��12(�6�   $
��Wrap=�6�   5     �� 5     $��1��6!   .+�5     �� $��Dịch vụ��6$   
�������$
��Bold"�6F   $��14(�6X   �� 5      $#��Xét nghiệm huyết thống��6$   
�������$��12(�6U   �� 5!     $$��Xét nghiệm ADN hành chính��6$   
�������$��12(�6X   �� 5"     $!��Xét nghiệm ADN dân sự��6$   
�������$��12(�6T   5#     �� 5%     $��2��6!   .+�5&     �� $��Về chúng tôi��6$   
�������$
��Bold"�6K   $��14(�6]   �� 5'     $��Giới thiệu��6$   
�������$��12(�6I   �� 5(     $��	Tin tức��6$   
�������$��12(�6F   �� 5)     $��
Liên hệ��6$   
�������$��12(�6F   5*     �� 5,     $��3��6!   .+�5-     �� $��Thông tin liên hệ��6$   
�������$
��Bold"�6P   $��14(�6b   �� 5.     $,��&123 Đường XYZ, Quận ABC, TP. HCM��6$   
�������$��12(�6_   �� 5/     $��Hotline 1900 1234 567��6$   
�������$��12(�6T   �� 50     $��info@dnatestingvn.com��6$   
�������$��12(�6T   51     52     53     54     55     56     