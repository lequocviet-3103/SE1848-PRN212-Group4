   M S B A M L   `   `   `  ����D  @DNASystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:DNASystem	DNASystem  5   	       DNASystem.AboutUsWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:DNASystem     5   	     � Title$  AboutUsWindow��5   	   $
��1250��6   $	��800��6-    � WindowStartupLocation$ CenterScreen=�69    � 	Resources 5	         TextLikeButton �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property	 P� Value��%V  &	        �� 5
   
   " ��6'   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 0q�60   �� 5       � ��
 �����6+   �� 5       � ��$ 14(�6)   �� 5       � ��$
 Left=�64   �� 5       �@�Cursor$
 Hand��6'   �� 5       � ��$ 0q�6(   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6$   #��z��5      #��z��5      #��z��5      $
��Wrap=�5      5      5       5      P� 5       �@J�IsMouseOver$
	 True��61   . �5      ��  � ��
 �����63   5       5"      5#      .��5$      �� $
��Auto=�6   .��5%   
   �� .+�5'      � $��60��6   
�������$	��Top=�62   
 � ColumnDefinitions
 5(      �� 5)      $
��Auto �6'   �� 5*      $��* �6'   �� 5+      $
��Auto �6'   �� 5,      $
��Auto �6'   .+�5/      �� $��0��6   $��DNA Testing VN��6,   $��18(�50      $
��Bold"�6   $��Center=�51      $
��20,0q�6'   �� 53      $��2��6    �� Orientation$ 
Horizontal=�6-   $��Center=�54      $��0,0,10,0q�6(   .+�55      �� -   5         ��Name$ btnTrangChu��55      $��Trang chủ��62   #��[  6F   $
��10,0q�6n   
���   �6�   �� 56      -   5        $ 	btnDichVu��56      $��Dịch vụ��60   #��[  6B   $
��10,0q�6j   
���   �6�   �� 57      -   5        $ btnVeChungToi��57      $��Về chúng tôi��64   #��[  6K   $
��10,0q�6s   
���   �6�   �� 58      -   5        $ btnBlog��58      $
��Blog��6.   #��[  6=   $
��10,0q�6e   
���   �6�   �� 59      -   5        $ btnLienHeHeader��59      $��
Liên hệ��66   #��[  6H   $
��10,0q�6p   
���   �6�   5:      �� 5<      $��3��6   $ 
Horizontal=�6-   $��Center=�5=      $��	10,0,20,0q�60   $��Right=�6C   .+�5>      �� -   5        $ btnUserMenu��5>      
������ 
������ 
���   �$
��10,5q�5@      $	��5,0q�6$    � Cursor$
 Hand��61   .��5B      �� $ 
Horizontal=�6%   .+�5C      �� -   5         ��Name$ txtWelcomeUser��5C   (   ��6@   �� *CurrentUserName+ �� StringFormat$ Welcome, {0}���� 5D      $�� 👤��6(   $��5,0,0,0q�63   5E      5F      5G      � 5I      -   5         �Name$ 	UserPopup��5I      $��Bottom=�5K       � 	StaysOpen$ False��5L       � PlacementTarget 5J      ��  �� ElementName$ btnUserMenu��.��5M      �� 
����������#ccc$��1q�6C    �� CornerRadius$ 5��6W    �� Padding$ 10q�5N   	   $	��160��6    J� Effect 5O      3  -System.Windows.Media.Effects.DropShadowEffect  5P         Color$ Black��6/      
BlurRadius$ 8Q�6=      ShadowDepth$ 2Q�6L   ._�5R      �� .+�5S      �� -	   5        $ 
btnProfile��5S   %   $��Thông tin cá nhân��69   
������ $��0q�5T   *   $
��Left=�6>   $��5q�5U      $
 Hand��6   6+   �� 5V      -
   5        $ 
btnHistory��5V   %   $��Lịch sử xét nghiệm��69   
������ $��0q�5W      $
��Left=�6.   $��5q�5X      $
 Hand��6   6   �� 5Z      -   5        $ 	btnLogout��5Z   %   $��Đăng xuất��68   
������ $��0q�5[   *   $
��Left=�6>   $��5q�5\      $
 Hand��6   6+   5]      5^      5_      5`      � 5d      $	��180��6   
�������.+�5e      �� $��/Images/Banner.jpg��6   $
��Fill=�64    J� Opacity$	 0.4Q�6C   �� 5f      $��Center=�6   $��Center=�68   .+�5g      �� $��Về chúng tôi��6    $��36(�64   $
��Bold"�6B   
������� �� TextAlignment$ Center=�6g   �� 5h      $��yChúng tôi cung cấp dịch vụ xét nghiệm ADN chuyên nghiệp với kết quả chính xác và đáng tin cậy.��6    $��14(�6�   
�������$ Center=�6�   $	��600��6�   $
��0,10q�6�   5i      5j      �� 5m      ���#F9FAFB$��30q�6*   $ 20q�66   $ 10��6C   ._�5n      � 
 5o      �� 5p      $��2* �6+   �� 5q      $��3* �6+   .+�5s      �� $��0��6!   .+�5t      �� $#��Sứ mệnh của chúng tôi��6$   $��20(�6A   $
��Bold"�6O   $��0,0,0,10q�6a   �� 5u      $����Cung cấp dịch vụ xét nghiệm ADN chính xác, bảo mật và chuyên nghiệp cho mọi đối tượng khách hàng, giúp họ xác định mối quan hệ huyết thống và đưa ra quyết định sáng suốt trong cuộc sống.��6$   $
��Wrap=�6�   �� 5v      $0��*Xem các dịch vụ của chúng tôi →��6$   ���#3B82F6$��0,10,0,0q�6`   5w      �� 5y      $��1��6!   $��20,0,0,0q�61   .+�5{      �� $ 
Horizontal=�6%   $��0,0,0,10q�6>   .+�5|      � $��30��6#   $��30��6.   $��0,0,10,0q�6:   .+�5}   "   A� ���#E0F2FE6*   �� 5~   "   $	��✔��6,   $��Center=�65   $��Center=�6R   $��14(�6m   5      �� 5�      .+�5�   "   �� $&�� Độ chính xác tuyệt đối��6,   $
��Bold"�6J   �� 5�   "   $����Phương pháp xét nghiệm của chúng tôi đạt độ chính xác lên đến 99.9999% cho các mối quan hệ huyết thống.��6,   $
��Wrap=�6�   $��12(�6�   5�      5�      �� 5�      $ 
Horizontal=�6%   $��0,0,0,10q�6>   .+�5�      � $��30��6#   $��30��6.   $��0,0,10,0q�6:   .+�5�   "   A� ���#E0F2FE6*   �� 5�   "   $
��🔒��6,   $��Center=�66   $��Center=�6S   $��14(�6n   5�      �� 5�      .+�5�   "   �� $��Bảo mật thông tin��6,   $
��Bold"�6E   �� 5�   "   $}��wChúng tôi cam kết bảo mật tuyệt đối thông tin cá nhân và kết quả xét nghiệm của khách hàng.��6,   $
��Wrap=�6�   $��12(�6�   5�      5�      �� 5�      $ 
Horizontal=�6%   .+�5�      � $��30��6#   $��30��6.   $��0,0,10,0q�6:   .+�5�   "   A� ���#E0F2FE6*   �� 5�   "   $	��⏱��6,   $��Center=�65   $��Center=�6R   $��14(�6m   5�      �� 5�      .+�5�   "   �� $��Thời gian nhanh chóng��6,   $
��Bold"�6I   �� 5�   "   $����Kết quả xét nghiệm được trả trong thời gian từ 3–5 ngày làm việc, hoặc 24 giờ với dịch vụ xét nghiệm khẩn cấp.��6,   $
��Wrap=�6�   $��12(�6�   5�      5�      5�      5�      5�      �� 5�      $)��#Cơ sở vật chất hiện đại��6   $��20(�67   $
��Bold"�6E   $��30,10q�6W   �� 5�      $ 
Horizontal=�6   $��Center=�62   .+�5�      �� 
����������#E5E7EB$��1q�6B   $	��250��6V   $��10q�6b   $ 10q�6n   $ 5��6{   ._�5�      �� .+�5�      �� $��Images/Selection.jpg��6    $	��100��6>   $��UniformToFill=�6K   $��0,0,0,10q�6c   �� 5�      $&�� Trang thiết bị hiện đại��6$   $
��Bold"�6C   �� 5�      $���zPhòng xét nghiệm được trang bị các thiết bị tiên tiến nhất để đảm bảo kết quả chính xác.��6$   $
��Wrap=�6�   5�      5�      �� 5�      
����������#E5E7EB$��1q�6B   $	��250��6V   $��10q�6b   $ 10q�6n   $ 5��6{   ._�5�      �� .+�5�      �� $%��Images/quytrinhchuyennghiep.jpg��6    $	��100��6I   $��UniformToFill=�6V   $��0,0,0,10q�6n   �� 5�      $!��Quy trình chuyên nghiệp��6$   $
��Bold"�6C   �� 5�      $x��rKhông gian sạch sẽ, tiện nghi để khách hàng cảm thấy thoải mái trong quá trình xét nghiệm.��6$   $
��Wrap=�6�   5�      5�      �� 5�      
����������#E5E7EB$��1q�6B   $	��250��6V   $��10q�6b   $ 10q�6n   $ 5��6{   ._�5�      �� .+�5�      �� $ ��Images/doinguchuyengia.jpg��6    $	��100��6D   $��UniformToFill=�6Q   $��0,0,0,10q�6i   �� 5�      $"��Đội ngũ chuyên nghiệp��6$   $
��Bold"�6A   �� 5�      $d��^Nhân viên và kỹ thuật viên có trình độ chuyên môn cao, phục vụ tận tình.��6$   $
��Wrap=�6t   5�      5�      5�      �� 5�      $/��)Đội ngũ chuyên gia của chúng tôi��6   $��20(�6@   $
��Bold"�6N   $��30,10q�6`   �� 5�      $ 
Horizontal=�6   $��Center=�62   .+�5�      �� ���#F3F4F6$	��250��6.   $��10q�6:   $ 10q�6F   $ 5��6S   ._�5�      �� .+�5�      �� $��Images/bassi1.png��6    $	��100��6;   $��UniformToFill=�6H   $��0,0,0,10q�6`   �� 5�      $��GS.TS. Nguyễn Văn A��6$   $
��Bold"�6?   �� 5�      $v��pChuyên gia Di truyền học với hơn 20 năm kinh nghiệm nghiên cứu và ứng dụng xét nghiệm ADN.��6$   $
��Wrap=�6�   5�      5�      �� 5�      ���#F3F4F6$	��250��6.   $��10q�6:   $ 10q�6F   $ 5��6S   ._�5�      �� .+�5�      �� $��Images/bacsi3.jpg��6    $	��100��6;   $��UniformToFill=�6H   $��0,0,0,10q�6`   �� 5�      $��TS. Trần Thị B��6$   $
��Bold"�6:   �� 5�      $p��jGiám đốc phòng xét nghiệm, chuyên về phân tích ADN và quản lý chất lượng phòng lab.��6$   $
��Wrap=�6   5�      5�      �� 5�      ���#F3F4F6$	��250��6.   $��10q�6:   $ 10q�6F   $ 5��6S   ._�5�      �� .+�5�      �� $��Images/bacsi2.jpg��6    $	��100��6;   $��UniformToFill=�6H   $��0,0,0,10q�6`   �� 5�      $��ThS. Lê Văn C��6$   $
��Bold"�69   �� 5�      $f��`Chuyên viên tư vấn xét nghiệm, giúp khách hàng hiểu rõ quy trình và kết quả.��6$   $
��Wrap=�6x   5�      5�      5�      � 5�      ���#1F2937$��0,30,0,0q�6(   .+�5�      �� $��Center=�6   .+�5�      �� $"��Bạn cần tư vấn thêm?��6    
�������$��20(�6O   $
��Bold"�6]   $ Center=�6o   �� 5�      $ 
Horizontal=�6!   $��Center=�6:   $
��0,10q�6W   .+�5�      �� -   5        $ btnLienHeNgay��5�   !   $��Liên hệ ngay��68   ���#3B82F6
�������$
��10,5q�6w   $��5q�6�   6�   �� 5�      -   5        $ btnXemDichVu��5�   !   $��Xem dịch vụ��67   
�������
���   �$
��10,5q�6s   $��5q�6�   6�   5�      5�      5�      �� 5�      ���#0D1B2A$��0,0,0,0q�6*   $ 30q�6;   ._�5�      � 
 5�      �� 5�      $��* �6+   �� 5�      $��* �6+   �� 5�      $��* �6+   �� 5�      $��* �6+   .+�5�      �� $��0��6!   .+�5�      �� $��DNA Testing VN��6$   
�������$
��Bold"�6M   $��14(�6_   �� 5�      $.��(Chuyên nghiệp - Uy tín - Chính xác��6$   
�������$��12(�6a   �� 5�      $\��VTrung tâm xét nghiệm ADN hàng đầu Việt Nam với hơn 10 năm kinh nghiệm.��6$   
�������$��12(�6�   $
��Wrap=�6�   5�      �� 5�      $��1��6!   .+�5�      �� $��Dịch vụ��6$   
�������$
��Bold"�6F   $��14(�6X   �� 5�      $#��Xét nghiệm huyết thống��6$   
�������$��12(�6U   �� 5�      $$��Xét nghiệm ADN hành chính��6$   
�������$��12(�6X   �� 5�      $!��Xét nghiệm ADN dân sự��6$   
�������$��12(�6T   5�      �� 5�      $��2��6!   .+�5�      �� $��Về chúng tôi��6$   
�������$
��Bold"�6K   $��14(�6]   �� 5�      $��Giới thiệu��6$   
�������$��12(�6I   �� 5�      $��	Tin tức��6$   
�������$��12(�6F   �� 5�      $��
Liên hệ��6$   
�������$��12(�6F   5�      �� 5�      $��3��6!   .+�5      �� $��Thông tin liên hệ��6$   
�������$
��Bold"�6P   $��14(�6b   �� 5     $,��&123 Đường XYZ, Quận ABC, TP. HCM��6$   
�������$��12(�6_   �� 5     $��Hotline 1900 1234 567��6$   
�������$��12(�6T   �� 5     $��info@dnatestingvn.com��6$   
�������$��12(�6T   5     5     5     5     5     5	     