   M S B A M L   `   `   `  ����U  QConfig SQL Server For Apps, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Config_SQL_Server_For_AppsConfig_SQL_Server_For_Apps  5   	   +    %Config_SQL_Server_For_Apps.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   4local(clr-namespace:Config_SQL_Server_For_Apps  5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65    � WindowState$ Normal=�6Z    � WindowStyle$
 None=�6o    � 
ResizeMode$ NoResize=�6�   .��5
      � .+�5   
   � -   5        $	��Top=�5      $��35��6B   ���	#FF0069c0.+�5      �� -   5         ��Name$ btnClose��5      $��Right=�6>   $��50��6Z   $��0q�6{    � ToolTip$ Close��6�   ��6e   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6*   $��25��67   $��25��6B   
�������6N   5      �� 5      -   5        $ btnMinimize��5      $��Right=�6D   $��0 0 55 0q�6`   $��50��6r   $��0q�6�   $ Minimize��6�   ��6}   Z� ��6�   Z� .��5        $ WindowMinimize=�6*   $��25��6@   $��25��6K   
�������6W   5      5      �� 5   
   $��jokerman)�6   $��36(�6&   $��Connect To The Server��64   $
��Left=�6T   $��	55,51,0,0q�6o   $	��Top=�6�   �� 5   
   $��Images/SQLServer.png��6   $
��Fill=�6.   $
��Left=�6=   $��89��6X   $��
525,40,0,0q�6d   $	��Top=�6x   $	��210��6�   �� 5   
    �� Orientation$ Vertical=�6   $	��150��6,   $��179,135,471,70q�68   .+�5      �� $��5q�6   $��Service Type��6   $��16(�66   6F   �� 5      $��5q�6   $��Server Name��6   $��16(�65   6E   �� 5      $��5q�6   $��Authentication��6   $��16(�68   6H   �� 5      $��5q�6   $��Username��6   $��16(�62   6B   �� 5      $��5q�6   $��Password��6   $��16(�62   6B   �� 5      $��5q�6   $��Database��6   $��16(�62   6B   5      �� 5   
   $	��250��6   $ Vertical=�6!   $��360,134,190,60q�68   .+�5      �� $��5q�6   $��Database Engine��6   $��16(�69   6I   �� 5      -   5        	 ��Name$	 txtServerName��5      $��14(�6-   $��5q�6;   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$ 
 DESKTOP-8ZG6PV6\SQLEXPRESS��6F   $��28��6�   $�� ��6�   6�   �� 5       -   5         ��Name$ cmbAuthenticationType��5    Q   $��16(�6q   $��5q�6   $
 Choose Authntication Type��6�   .@�5!      �� .��6   Windows Authentication67   �� 5"      .��6   SQL Server Authentication6:   5#      �� 5$      -   5        $	 txtUsername��5$      $��5q�6+   $��14(�66   $��28��6D   $�� ��6P   6[   �� 5%      -   5        $	 txtPassword��5%      $��5q�6+   $��14(�66   $��28��6D   $�� ��6P   6[   �� 5&      -   5        $ 
cmbDatabae��5&   B   $��16(�6V   $��5q�6d   $
 Choose Database��6o   5'      5(      �� 5)   
   -	   5        $��Connect��5)      ���	#FF0069c0���	#FF0069c0$��370,395,288,23q�6g   5*      5+      