   M S B A M L   `   `   `  ����D  @DNASystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:DNASystem	DNASystem  5   	       DNASystem.RegisterWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:DNASystem     5   	     � Title$  RegisterWindow��5   	   $	��800��6    $	��800��6-    � WindowStartupLocation$ CenterScreen=�69    � 
ResizeMode$ NoResize=�6^    � 	Resources 5	         BackgroundGradient �� 
StartPoint �� EndPoint � Color � Offset  ModernTextBox �� 
TargetType	 �� Property
 �� Value �� 
TargetType �� CornerRadius ��Name �� Triggers P� Property P� Value  ModernPasswordBox  ModernLabel  ModernButton��%�
  &	        &	 �     &	 �    &	 �    &	 �    �� 5   
   $	 0,0&�69   $	 1,1&�6J   .��5      � $ #667eea��6   $ 0Q�6+   � 5      $ #764ba2��6   $ 1Q�6+   5      �� 5   
   " ��6&   .�5      �� 	 � ��

 �����6+   �� 5      	 � ��
 �#ddd6,   �� 5      	 � ��$
 1q�60   �� 5      	 � ��$

 12,8q�6(   �� 5      	 � ��$
 14(�6)   �� 5      	 � ��$
 Segoe UI)�6+   �� 5      	 � ��$
 40��6'   �� 5      	 � ��
 5      �� 5      " ��6&   .R�5      �� #��z��6!   #��z��5   !   #��z��5   !   $ 8��5   !   ._�5       �� $ PART_ContentHost��6+   #��z��5!   )   $��Center=�5"   )   5#       5$      P� 5%       �@J�	IsFocused$
 True��6;   . �5&   "   �� 	 � ��
 �#667eea6@   �� 5'   "   	 � ��$
 2q�6D   5(      P� 5)       �@J�IsMouseOver$
 True��6=   . �5*   "   �� 	 � ��
 �#9996@   5+      5-      5/      50      �� 53   
   " G�6*   .�54      �� 	 � ��

 �����6+   �� 55      	 � ��
 �#ddd6,   �� 56      	 � ��$
 1q�60   �� 57      	 � ��$

 12,8q�6(   �� 58      	 � ��$
 14(�6)   �� 59      	 � ��$
 Segoe UI)�6+   �� 5:      	 � ��$
 40��6'   �� 5;      	 � ��
 5<      �� 5=      " G�6&   .R�5>      �� #��z��6!   #��z��5?   !   #��z��5@   !   $ 8��5A   !   ._�5B      �� $ PART_ContentHost��6+   #��z��5C   )   $��Center=�5D   )   5E       5F      P� 5G       �@J�	IsFocused$
 True��6;   . �5H   "   �� 	 � ��
 �#667eea6@   �� 5I   "   	 � ��$
 2q�6D   5J      P� 5K       �@J�IsMouseOver$
 True��6=   . �5L   "   �� 	 � ��
 �#9996@   5M      5O      5Q      5R      �� 5U   
   " ��6$   .�5V      �� 	 � ��$
 Segoe UI)�6+   �� 5W      	 � ��$
 14(�6)   �� 5X      	 � ��$
 Medium"�6+   �� 5Y      	 � ��
 �#3336+   �� 5Z      	 � ��$
 0,0,0,5q�6'   5[      �� 5^   
   " ��6%   .�5_      �� 	 � ��
 �#667eea6+   �� 5`      	 � ��

 �����6+   �� 5a      	 � ��$
 Segoe UI)�6+   �� 5b      	 � ��$
 16(�6)   �� 5c      	 � ��$
 SemiBold"�6+   �� 5d      	 � ��$
 45��6'   �� 5e      	 � ��$
 0q�60   �� 5f      	 �@�Cursor$

 Hand��6'   �� 5g      	 � ��
 5h      �� 5i      " ��6&   .R�5j      �� #��z��6!   $ 8��5k   !   #��z��5l   !   ._�5m      �� $��Center=�6/   $��Center=�5n   -   5o       5p      P� 5q       �@J�IsMouseOver$
 True��6=   . �5r   "   �� 	 � ��
 �#5a67d86?   5s      P� 5t       � ��$
 True��6;   . �5u   "   �� 	 � ��
 �#4c51bf6?   5v      5x      5z      5{      5|      .��5~      � #��[  6   .+�5�   
   �� 
�������$ 15��5�      $��30q�5�       �� Padding$ 0q�5�       J� Effect 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�         Color$ Black��6#      	Direction$	 270Q�5�   !      ShadowDepth$ 3Q�5�   !      
BlurRadius$ 10Q�5�   !      Opacity$	 0.2Q�5�   !   ._�5�      � $��40,30q�6    � RowDefinitions 5�      �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $��* �6$   .+�5�      �� $��0��6   $��Create Account��5�      $��Segoe UI)�5�      $��28(�5�      $
��Bold"�5�      ���#333$��Center=�5�      $��0,0,0,20q�5�      �� 5�      $��1��6   $��Email Address��6%   #��[ 6=   �� 5�      -   5         ��Name$ txtEmail��5�   '   $��2��6   #��[ 69   $��0,0,0,15q�6`   �� 5�      $��3��6   $��Username��6%   #��[ 68   �� 5�      -   5        $ txtUsername��5�   '   $��4��6   #��[ 6<   $��0,0,0,15q�6c   �� 5�      $��5��6   $��Password��6%   #��[ 68   G� 5�      -   5         G�Name$ txtPassword��5�   +   $��6��6   #��[ 6@   $��0,0,0,15q�6k   �� 5�      $��7��6   $��	Full Name��6%   #��[ 69   �� 5�      -   5        $ txtFullname��5�   '   $��8��6   #��[ 6<   $��0,0,0,15q�6c   �� 5�      $��9��6   $��Phone Number��6%   #��[ 6<   �� 5�      -   5        $ txtPhone��5�   (   $��10��6   #��[ 6:   $��0,0,0,15q�6a   �� 5�      $��11��6   $��Address��6&   #��[ 68   �� 5�      -   5        $ 
txtAddress��5�   (   $��12��6   #��[ 6<   $��0,0,0,25q�6c   �� 5�      -   5         ��Name$ btnRegister��5�      $��13��5�      $��Create Account��5�      #��[ 5�      5�      5�      5�      5�      