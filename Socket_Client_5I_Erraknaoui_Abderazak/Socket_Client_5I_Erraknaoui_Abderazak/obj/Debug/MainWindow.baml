   M S B A M L   `   `   `  ����`  \Socket_Client_5I_Erraknaoui_Abderazak, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:Socket_Client_5I_Erraknaoui_Abderazak%Socket_Client_5I_Erraknaoui_Abderazak  5   	   6    0Socket_Client_5I_Erraknaoui_Abderazak.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:Socket_Client_5I_Erraknaoui_Abderazak     5   	     � Title$  CLIENT��5   	   $	��500��6   $	��700��6%   .��5	      � .+�5
   
   �� -   5         ��Name$ lst_listaMessaggi��5
      $
��Left=�6-   $	��330��6H   $��	10,86,0,0q�6U   $	��Top=�6h   $	��535��6�   $y�Visible=�6�   �� 5   
   -   5         ��Name$ txt_messaggio��5      $
��Left=�6)   $��25��6D   $��
10,421,0,0q�6P    �� TextWrapping$
 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��485��6�      TextBoxStyle1#���   6�   $y�Visible=�6�   .��6�    � 	Resources 5        TextBox.Static.Border �� Color  TextBox.MouseOver.Border  TextBox.Focus.Border �� 
TargetType �� Property �� Value-  'System.Windows.Input.KeyboardNavigation	 �� 
TargetType
 ��Name J� SnapsToDevicePixels ��Name ��Name �� Triggers P� Property P� Value �� 
TargetName �� Triggers ]� 
Conditions �� Property �� Value��%�  &	       &	 #     &	 F     &	  i     7  7  7  �� 5      $ 	#FFABAdB3��6@   �� 5      $ 	#FF7EB4EA��6C   �� 5      $ 	#FF569DE5��6?   �� 5      " ��6.   .�5      ��  � ��# � ��63   �� 5       � ��8   64   �� 5       � ��# � ��63   �� 5       � ��$ 1q�68   �� 5       �@ TabNavigation$
 None=�6I   �� 5       � ��$
 Left=�6C   �� 5       �@�FocusVisualStyle 69   Z� �� 5       �@J�	AllowDrop . 62   �� 5       �@��PanningMode$ VerticalFirst=�6A   �� 5       �@��IsFlicksEnabled .  6?   �� 5       � �� 5      �� 5      "	 ��6.   .R�5   "   �� $
 border��6)   #��z��69   #��z��6e   #��z��6�    . ._�5   &   � .+�5    *   �� $ PART_ContentHost��67   |�.  $��Hidden=�6c   $��Hidden=�6�   �� 5!   *   $ placeHolderTextBlock��5"   -   
�������$��5,0,0,0q�5$   -   #��z��5%   -   $
��Left=�5&   -   $��	Messaggio��5'   -   $y�	Collapsed=�5(   -   5)   '   5*   #    5+   "   P� 5,   &    � {� .  . �5-   *   �� $ border��6D    �@J�Opacity$
 0.56Q�6X   5.   '   P� 5/   &    �@J�IsMouseOver . . �50   *   �� $ border��6H   8   � ��6\   51   '   P� 52   &    �@J�IsKeyboardFocused . . �53   *   �� $ border��6H   8   � ��6\   54   '   P� 55   &    � ��$  ��6>   . �56   *   �� $ placeHolderTextBlock��6G    � y�$ Visible=�6i   6{   57   '   59      5;       5<      ]� 5=       5>      �� 5?   "   + �@��#IsInactiveSelectionHighlightEnabled . 6[   �� 5@   "    �@��IsSelectionActive .  6I   ./�5B      ��  �@��SelectionBrush# � /�6?   5C      5E      5F      .��6!   5G      �� 5H   
   -   5         ��Name$ 
btn_inivia��5H      $
��Left=�6%   $��500,421,0,0q�6@   $	��Top=�6U   $��45��6m   $��25��6x   $y�Visible=�6�    J� RenderTransformOrigin$ 0.524,0.576&�6�    J� OpacityMask 5I      �� 5J       �� ImageSource$ icon_sender.png��6    j� Stretch$ Uniform=�6;   ��5L      �� 5M      ��5O      �� 5P      $ icon_sender.png��6   $ Uniform=�6;   5R      �� 5T   
   -   5        $ txt_IP��5T      $
��Left=�6"   $��20��6=   $��	65,10,0,0q�6I   $
 Wrap=�6\   $�� ��6p   $	��Top=�6x   $	��120��6�   #���   6�   $ 0.545,0.434&�6�   {�. .��6�    5U      ��%�  &	       &	 #     &	 F     &	  i     7  7  7  �� 5V      $ 	#FFABAdB3��6@   �� 5W      $ 	#FF7EB4EA��6C   �� 5X      $ 	#FF569DE5��6?   �� 5Y      " ��6.   .�5Z      ��  � ��# � ��63   �� 5[       � ��8   64   �� 5\       � ��# � ��63   �� 5]       � ��$ 1q�68   �� 5^       �@ TabNavigation$
 None=�6I   �� 5_       � ��$
 Left=�6C   �� 5`       �@�FocusVisualStyle 69   Z� �� 5a       �@J�	AllowDrop . 62   �� 5b       �@��PanningMode$ VerticalFirst=�6A   �� 5c       �@��IsFlicksEnabled .  6?   �� 5d       � �� 5e      �� 5f      "	 ��6.   .R�5g   "   �� $
 border��6)   #��z��69   #��z��6e   #��z��6�    . ._�5h   &   � .+�5i   *   �� $ PART_ContentHost��67   |�.  $��Hidden=�6c   $��Hidden=�6�   �� 5j   *   $ placeHolderTextBlock��5k   -   
�������$��5,0,0,0q�5m   -   #��z��5n   -   $
��Left=�5o   -   $��IP Client....��5p   -   $y�	Collapsed=�5q   -   5r   '   5s   #    5t   "   P� 5u   &    � {� .  . �5v   *   �� $ border��6D    �@J�Opacity$
 0.56Q�6X   5w   '   P� 5x   &    �@J�IsMouseOver . . �5y   *   �� $ border��6H   8   � ��6\   5z   '   P� 5{   &    �@J�IsKeyboardFocused . . �5|   *   �� $ border��6H   8   � ��6\   5}   '   P� 5~   &    � ��$  ��6>   . �5   *   �� $ placeHolderTextBlock��6G    � y�$ Visible=�6i   6{   5�   '   5�      5�       5�      ]� 5�       5�      �� 5�   "   + �@��#IsInactiveSelectionHighlightEnabled . 6[   �� 5�   "    �@��IsSelectionActive .  6I   ./�5�      ��  �@��SelectionBrush# � /�6?   5�      5�      5�      .��6!   5�      �� 5�   
   $
��Left=�6   $��
190,10,0,0q�6/   $
��Wrap=�6C   $��Connessione:��6W   $	��Top=�6k   $��20��6�   �� 5�   
   -   5        $ txt_connessione��5�      $
��Left=�6+   $��20��6F   $��
265,10,0,0q�6R   $
 Wrap=�6f   $�� ��6z   $	��Top=�6�   $��85��6�   {�.  6�   �� 5�   
   $
��Left=�6   $��	10,10,0,0q�6/   $
��Wrap=�6B   $��
IP Client:��6V   $	��Top=�6h   $��20��6�   $��55��6�   �� 5�   
   $
��Left=�6   $��
360,10,0,0q�6/   $
��Wrap=�6C   $��
IP Server:��6W   $	��Top=�6i   $��20��6�   $��60��6�   �� 5�   
   -   5        $ btn_conetti��5�      $��Connetti��6&   $
��Left=�69   $��
562,10,0,0q�6T   $	��Top=�6h   $	��125��6�   $��20��6�   6�   �� 5�   
   -   5        $ txt_IPDestinatario��5�      $
��Left=�6.   $��20��6I   $��
425,10,0,0q�6U   $
 Wrap=�6i   $�� ��6}   $	��Top=�6�   $	��120��6�   #���   6�   $ 0.545,0.434&�6�   {�. .��6   5�      ��%�  &	       &	 #     &	 F     &	  i     7  7  7  �� 5�      $ 	#FFABAdB3��6@   �� 5�      $ 	#FF7EB4EA��6C   �� 5�      $ 	#FF569DE5��6?   �� 5�      " ��6.   .�5�      ��  � ��# � ��63   �� 5�       � ��8   64   �� 5�       � ��# � ��63   �� 5�       � ��$ 1q�68   �� 5�       �@ TabNavigation$
 None=�6I   �� 5�       � ��$
 Left=�6C   �� 5�       �@�FocusVisualStyle 69   Z� �� 5�       �@J�	AllowDrop . 62   �� 5�       �@��PanningMode$ VerticalFirst=�6A   �� 5�       �@��IsFlicksEnabled .  6?   �� 5�       � �� 5�      �� 5�      "	 ��6.   .R�5�   "   �� $
 border��6)   #��z��69   #��z��6e   #��z��6�    . ._�5�   &   � .+�5�   *   �� $ PART_ContentHost��67   |�.  $��Hidden=�6c   $��Hidden=�6�   �� 5�   *   $ placeHolderTextBlock��5�   -   
�������$��5,0,0,0q�5�   -   #��z��5�   -   $
��Left=�5�   -   $��IP Destinatario....��5�   -   $y�	Collapsed=�5�   -   5�   '   5�   #    5�   "   P� 5�   &    � {� .  . �5�   *   �� $ border��6D    �@J�Opacity$
 0.56Q�6X   5�   '   P� 5�   &    �@J�IsMouseOver . . �5�   *   �� $ border��6H   8   � ��6\   5�   '   P� 5�   &    �@J�IsKeyboardFocused . . �5�   *   �� $ border��6H   8   � ��6\   5�   '   P� 5�   &    � ��$  ��6>   . �5�   *   �� $ placeHolderTextBlock��6G    � y�$ Visible=�6i   5�   '   5�      5�       5�      ]� 5�       5�      �� 5�   "   + �@��#IsInactiveSelectionHighlightEnabled . 6[   �� 5�   "    �@��IsSelectionActive .  6I   ./�5�      ��  �@��SelectionBrush# � /�6?   5�      5�      5�      .��6!   5�      �� 5�   
   -   5        $ txt_portaIP��5�      $
��Left=�6'   $��20��6B   $��	65,40,0,0q�6N   $
 Wrap=�6a   $�� ��6u   $	��Top=�6}   $	��120��6�   #���   6�   $ 0.545,0.434&�6�   {�. .��6�    5�      ��%�  &	       &	 #     &	 F     &	  i     7  7  7  �� 5�      $ 	#FFABAdB3��6@   �� 5�      $ 	#FF7EB4EA��6C   �� 5�      $ 	#FF569DE5��6?   �� 5�      " ��6.   .�5�      ��  � ��# � ��63   �� 5�       � ��8   64   �� 5�       � ��# � ��63   �� 5�       � ��$ 1q�68   �� 5�       �@ TabNavigation$
 None=�6I   �� 5�       � ��$
 Left=�6C   �� 5�       �@�FocusVisualStyle 69   Z� �� 5�       �@J�	AllowDrop . 62   �� 5�       �@��PanningMode$ VerticalFirst=�6A   �� 5�       �@��IsFlicksEnabled .  6?   �� 5�       � �� 5�      �� 5�      "	 ��6.   .R�5�   "   �� $
 border��6)   #��z��69   #��z��6e   #��z��6�    . ._�5�   &   � .+�5�   *   �� $ PART_ContentHost��67   |�.  $��Hidden=�6c   $��Hidden=�6�   �� 5�   *   $ placeHolderTextBlock��5�   -   
�������$��5,0,0,0q�5�   -   #��z��5�   -   $
��Left=�5�   -   $��Porta Client....��5�   -   $y�	Collapsed=�5�   -   5�   '   5�   #    5�   "   P� 5�   &    � {� .  . �5�   *   �� $ border��6D    �@J�Opacity$
 0.56Q�6X   5�   '   P� 5�   &    �@J�IsMouseOver . . �5�   *   �� $ border��6H   8   � ��6\   5�   '   P� 5�   &    �@J�IsKeyboardFocused . . �5�   *   �� $ border��6H   8   � ��6\   5�   '   P� 5�   &    � ��$  ��6>   . �5�   *   �� $ placeHolderTextBlock��6G    � y�$ Visible=�6i   5�   '   5     5      5     ]� 5      5     �� 5  "   + �@��#IsInactiveSelectionHighlightEnabled . 6[   �� 5  "    �@��IsSelectionActive .  6I   ./�5
     ��  �@��SelectionBrush# � /�6?   5     5     5     .��6!   5     �� 5  
   $
��Left=�6   $��	10,40,0,0q�6/   $
��Wrap=�6B   $��Porta Client:��6V   $	��Top=�6k   $��20��6�   $��55��6�   �� 5  
   $
��Left=�6   $��
360,40,0,0q�6/   $
��Wrap=�6C   $��Porta Server:��6W   $	��Top=�6l   $��32��6�   $��60��6�   �� 5  
   -	   5        $ txt_PortaDestinatario��5     $
��Left=�61   $��20��6L   $��
425,40,0,0q�6X   $
 Wrap=�6l   $�� ��6�   $	��Top=�6�   $	��120��6�   #���   6�   $ 0.545,0.434&�6�   {�. .��6	   5     ��%�  &	       &	 #     &	 F     &	  i     7  7  7  �� 5     $ 	#FFABAdB3��6@   �� 5     $ 	#FF7EB4EA��6C   �� 5     $ 	#FF569DE5��6?   �� 5     " ��6.   .�5     ��  � ��# � ��63   �� 5      � ��8   64   �� 5      � ��# � ��63   �� 5      � ��$ 1q�68   �� 5      �@ TabNavigation$
 None=�6I   �� 5      � ��$
 Left=�6C   �� 5      �@�FocusVisualStyle 69   Z� �� 5      �@J�	AllowDrop . 62   �� 5       �@��PanningMode$ VerticalFirst=�6A   �� 5!      �@��IsFlicksEnabled .  6?   �� 5"      � �� 5#     �� 5$     "	 ��6.   .R�5%  "   �� $
 border��6)   #��z��69   #��z��6e   #��z��6�    . ._�5&  &   � .+�5'  *   �� $ PART_ContentHost��67   |�.  $��Hidden=�6c   $��Hidden=�6�   �� 5(  *   $ placeHolderTextBlock��5)  -   
�������$��5,0,0,0q�5+  -   #��z��5,  -   $
��Left=�5-  -   $��Porta Destinatario....��5.  -   $y�	Collapsed=�5/  -   50  '   51  #    52  "   P� 53  &    � {� .  . �54  *   �� $ border��6D    �@J�Opacity$
 0.56Q�6X   55  '   P� 56  &    �@J�IsMouseOver . . �57  *   �� $ border��6H   8   � ��6\   58  '   P� 59  &    �@J�IsKeyboardFocused . . �5:  *   �� $ border��6H   8   � ��6\   5;  '   P� 5<  &    � ��$  ��6>   . �5=  *   �� $ placeHolderTextBlock��6G    � y�$ Visible=�6i   5>  '   5@     5B      5C     ]� 5D      5E     �� 5F  "   + �@��#IsInactiveSelectionHighlightEnabled . 6[   �� 5G  "    �@��IsSelectionActive .  6I   ./�5I     ��  �@��SelectionBrush# � /�6?   5J     5L     5M     .��6!   5N     �� 5O  
   -
   5        $ btn_cancellaChat��5O     $
��Left=�6+   $��
562,86,0,0q�6F   $	��Top=�6Z   $��35��6r   $��35��6}   
���   �
���   � 5P     �� 5Q     $ 	trash.png��6   $ Uniform=�65   ��5S     �� 5T     $ 	trash.png��6   $ Uniform=�65   5V     5W     5X     