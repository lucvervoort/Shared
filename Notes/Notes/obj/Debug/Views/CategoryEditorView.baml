   M S B A M L   `   `   `  ����c  _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  5   	   ] YGalaSoft.MvvmLight.Extras.WPF4, Version=3.0.0.31361, Culture=neutral, PublicKeyToken=nulloPclr-namespace:GalaSoft.MvvmLight.Command;assembly=GalaSoft.MvvmLight.Extras.WPF4GalaSoft.MvvmLight.Command 5   	   @ <Notes, Version=0.0.0.1, Culture=neutral, PublicKeyToken=null1clr-namespace:Notes.UtilitiesNotes.Utilities 5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel 69   $   Notes.Views.CategoryEditorView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5   	   `cmdPclr-namespace:GalaSoft.MvvmLight.Command;assembly=GalaSoft.MvvmLight.Extras.WPF4     5   	   3	utilitiesclr-namespace:Notes.Utilities     5   	   SComponentModel8clr-namespace:System.ComponentModel;assembly=WindowsBase     69   
�������$	��654��5
      $	��586��6)     � 
ResizeMode$  NoResize=�65    � Title 5	   	   ��    
LocStrings �� Source# [   �� Path$ CategoryOptions� � DataContext 5   	   �� *CategoryEditor+  Locator# [  � 	Resources 5        CategoriesVS �� Source �� SortDescriptions+  %System.ComponentModel.SortDescription   PropertyName��%i   &	       �� 5   
    6   �� *
Categories+ 5        5      $
 Name��61   5      5      .��5      � 	 � RowDefinitions	 5   
   �� 5      $	��275 �6   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� 
 �� Padding$
 5q�6   ���#eaeaa0$��3q�63   $��5q�5      ._�5      � 
�������	 5      �� 5       $��* �6$   �� 5!      $
��auto �6$   .+�5#      �� -   5         ��Name$ listViewCategories��5$      $��5 5 5 0q�5#      ��6,   �� # [  �� SelectedItem 5$   7   �� *SelectedCategory+ 6a   �� .   (System.Windows.Interactivity.Interaction   Triggers 5%      /   )System.Windows.Interactivity.EventTrigger  5&         	EventName$ SelectionChanged��6)   .   (System.Windows.Interactivity.TriggerBase   Actions. 5'      /  )GalaSoft.MvvmLight.Command.EventToCommand     MustToggleIsEnabledValue .    Command 61   �� *CategoryBeenSelected+ �� Mode$ OneWay=�5(   1   5)       �� View 5+      �� 5,      .P�5-      ��  �� Width$ 80��6q   ��6-   �� # [  $ Default� �� CellTemplate 5.   "   �� 5/   &   .R�50   *   	�  	� 	GroupName$ Category��66    d� 	IsChecked 6K   �� *	IsDefault+��6k   �� *+)DataContext.DefaultCategoryChangedCommand+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ���6�   �� 51   '   53      �� 54      $	 120��55   S   ��54   -   �� # [  $
 Name� �� DisplayMemberBinding 55   -   �� *Name+6S   �� 56      $ 90��57   ^   ��56   -   �� # [  $ BackgroundColor� 57   -   �� *BackgroundColor+6^   �� 58      $ 90��59   X   ��58   -   �� # [  $ 	FontColor� 59   -   �� *	FontColor+6X   5:      5<      �� 5=      $��1��6    �� Orientation$ 
Horizontal=�6*   $
��Left=�6C   .+�5>      �� $	��125��6f   $��5q�5?      ��5>      �� # [  $ NewCategory���5?   (   �� *NewCategoryCommand+�� 5@      $	��125��6i   $��5q�5A      ��5@      �� # [  $ DeleteSelected���5A   (   �� *DeleteCategoryCommand+��5B      �� *SelectedItem+ �� ElementName$ listViewCategories���� 5C      -   5         ��Name$ cbDeleteNotes��5C   |   $��3 7 0 0q�6   $
 TrueY�5D      ��5C   0   �� # [  $ DeleteNotesToo���5D   0   �� *DeleteNotesCommand+��6W   �� *	IsChecked+$ cbDeleteNotes��5E      5F      5G      �� 5H   
   $��1��6\   $��3q�5I      $��3q�6   ���#eaeaa0$��3q�5J   )   ��5H      �� # [  $ CategoryData�.��5K      � $��2q�6   
������� � ColumnDefinitions 5L      �� 5M      $
��auto �6'   �� 5N      $��* �6'   �� 5O      $
��auto �6'   �� 5P      $
��auto �6'   �� 5Q      $��* �6'   �� 5R      $
��auto �6'   	 5T      �� 5U      $
��auto �6$   �� 5V      $
��auto �6$   �� 5W      $
��auto �6$   �� 5X      $
��auto �6$   .+�5Z      �� $��6��6Z   ��6   �� # [  $
 Name� �� Target 5[      �� $
 name���� 5\      -   5          ��Name$
  name��5\      $��1��6(   $��6��5]      $��3q�6.   ��5^      �� *SelectedCategory.Name+�� 5_      $��2��6e   $��2��5`      ��5_      �� # [  $ BackgroundColor� 5`   %   �� $ 
background���� 5a      $��3��6   $��20��6)   $��20��65   
���   �$��3 3 3 5q�5c      ��5b      �� *" SelectedCategory.BackgroundColor+ 5d        5e      $ MouseLeftButtonDown��6)   . 5f         .  61   �� *SelectBgColorCommand+$ OneWay=�5g   1   5h      5j      �� 5k      -   5        $  
background��5k      $��3��6.   $��1��6;   $��3 3 3 5q�5l      .��6+   ��5m      �� 5n      $&  SelectedCategory.BackgroundColor�6"   ! �� UpdateSourceTrigger$! PropertyChanged=�5o   "   " �� ValidationRules" 5p      (  "Notes.Utilities.RGBValidationRules  5q   "   5s      .��5t   $   5u      �� 5v      $��3��6]   $��2��5w      $��75��6)   $��3 3 3 5q�5x      ��5v      �� # [  $ Select���5x   *   �� *SelectBgColorCommand+�� 5y      $��2��6_   $��2��5z      $��3��6%   ��5y      �� # [  $ 	FontColor� 5{      �� $
 font���� 5|      $��3��6   $��20��6)   $��20��65   
���   �$��3 3 3 5q�5~      $��3��6-   ��5}      �� *SelectedCategory.FontColor+ 5        5�      $ MouseLeftButtonDown��6)   . 5�         .  61   �� *SelectFontColorCommand+$ OneWay=�5�   1   5�      5�      �� 5�      -   5        $
  font��5�      $��3��6(   $��4��5�      $��3 3 3 5q�6*   .��6;   ��5�      �� 5�      $  SelectedCategory.FontColor�6"   $! PropertyChanged=�5�   "   " 5�        5�   "   5�      .��5�   $   5�      �� 5�      $��3��6]   $��5��5�      $��75��6)   $��3 3 3 5q�5�      ��5�      �� # [  $ Select���5�   *   �� *SelectFontColorCommand+5�      5�      �� 5�   
   $
 5q�6   ���#eaeaa0$��3q�63   $��5q�5�      $��2��6   ._�5�      � 
�������.+�5�      �� 
�������$ 
Horizontal=�61   $��Right=�6J   .+�5�      �� $��5q�5�      $��75��6(   ��5�      �� # [  $ Accept���5�      �� *AcceptCategoryCommand+5�      5�      5�      �� 5�   
   $��3��6   $��3q�5�      $��3q�6   ���#eaeaa0$��3q�5�   )   ��5�       �� # [  $ Preview�.��5�      �� 
�������$
 3q�6(   # �� CornerRadius$# 3��64   $��2 0 3 2q�5�      ._�5�      � .+�5�      �� -   5        $ ��Name$$ 
noteBorder��5�      $��1��61     NoteBorderStyle#��[ 6A   ��6j   �� *" SelectedCategory.BackgroundColor+._�5�      �� .+�5�      �� $
��Wrap=�5�   (   ��5�   (   �� # [  $ ExampleTextPreview���5�   <   �� *SelectedCategory.FontColor+�� 5�      	% �� X1$% 0��6#   	& �� Y1$& 0��6*   	' �� Y2$' 0��6d   $��1��5�      $��0 5 0 0q�63   	( �� X2( 5�   1   �� *ActualWidth+$ 
noteBorder����6k   �� *SelectedCategory.FontColor+5�   3   �� 5�      $ 
Horizontal=�6)   $��Right=�6B   .+�5�   "   �� $��10(�6S   ��6,   �� *SelectedCategory.Name+��6a   �� *SelectedCategory.FontColor+5�      5�      5�      5�      5�      5�      �� 5�   
   $ 
Horizontal=�6   $��Right=�6.   $��4��5�      .+�5�      �� -   5        $��0 4 12 8q�5�   X   $��75��6j   ��6   �� # [  $ Close�6x   5�      5�      5�      