   M S B A M L   `   `   `  ����G  CSpeicherApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:SpeicherApp1SpeicherApp1  5   	       SpeicherApp1.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:SpeicherApp1     5   	     � Title$  
MainWindow��5   	   $	��400��6   $	��800��6)    � 	Resources 5	        SpeicherApp1.ViewModel1   vm1�� 5
   
   %   &	          5      6   5      ��5      �� 5   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      �  � Color$ Black��6   � 5      $ 	#FF494CE6��6    � Offset$ 1Q�6-   5      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $	��10* �6   .+�5   
   ��   ct1#��[ 6   $��0��60   $��0��6=   $��2��6M   �� 5    
   $��1��6I   $��0��6V    � DataContext 6   �� 	 �� Source#	 [  .+�5!      �� -   5        
 ��Name$	
 lv1��5!      
����d���6$   �� *PasswortListe+ �� SelectedItem 6h   �� *SelectedItem1+��5"      �� 5#      .R�5$      �  5%      �� 5&   "   �� 5'   "   .+�5)      �� $��0��6E   ��6$   ��  �� Path$ Id�6E   �� 5*      $��1��6k   ��6$   �� $ Dienst� �� UpdateSourceTrigger$ PropertyChanged=�6k   5+      5,      5.      5/      � 50   
   $��1��6   $��1��6!   $	��400��61   $	��250��6=   $	��Top=�6J   .+�51      �� $/��)Ausgewählter Dienst/Eingabe neuer Dienst��6   $	��400��6G   $��50��6S   $��Center=�6_   ���	#FFD042426�   �� 52      $��Id��6   $	��200��6!   $��50��6-   
�������69   �� 53      -   5         ��Name$
 tbId��53      
�������$	��200��6<   $��50��6H   ��6T   ��  �� ElementName$	 lv1��$ SelectedItem.Id�$ PropertyChanged=��� 54      
�������$��Dienst��6'   $	��200��68   �� 55      -   5        $ tbDienst��55      
�������$	��200��6?   $��50��6K   ��6W   �� $	 lv1��$ SelectedItem.Dienst��� 56      
�������$��
Nutzername��6'   $	��200��6<   �� 57      -   5        $ 
tbPasswort��57      
�������$	��200��6A   $��50��6M   ��6Y   �� $	 lv1��$ SelectedItem.Nutzername��� 58      
�������$��Passwort��6'   $	��200��6:   $��50��6F   �� 59      -   5        $ 
tbLoeschen��59      
�������$	��200��6A   $��50��6M   ��6Y   �� $	 lv1��$ SelectedItem.Passwort�5:      � 5;   
   $��1��6C   $��1��6Q   $	��250��6a    6   �� #	 [   5<      �� 5=      �� 5>       5@      �� 5A      $��50 �6    �� 5B      $��50 �6    �� 5C      $��50 �6    �� 5D      $��50 �6    �� 5E      $��50 �6    .+�5G      �� -   5         ��Name$ 	btnUpdate��5G      $��Update��6(   $��0��69   $��0��6I   ��6V   �� *AddFolderCommand+�� 5H      -   5        $ btnLoeschen��5H      $��Löschen��6*   $��1��6<   $��0��6L   ��6Y   �� *AddFolderCommand2+�� 5I      
�������$��ID��6'   $��1��64   $��0��6A   �� 5J      
�������$��Dienst��6'   $��2��68   $��0��6E   �� 5K      
�������$��
Nutzername��6'   $��3��6<   $��0��6I   �� 5L      
�������$��Passwort��6'   $��4��6:   $��0��6G   �� 5M      
����ح�$��1��6H   $��1��6X   ��6-   �� *	Model1.Id+6X   �� 5N      
����ح�$��1��6L   $��2��6\   ��6-   �� *Model1.Dienst+6\   �� 5O      
����ح�$��1��6P   $��3��6`   ��6-   �� *Model1.Nutzername+6`   �� 5P      
����ح�$��1��6N   $��4��6^   ��6-   �� *Model1.Passwort+6^   5Q      5S      5T      