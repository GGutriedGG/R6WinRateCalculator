   M S B A M L   `   `   `  ���� P  LR6WinRateCalculatorUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:R6WinRateCalculatorUIR6WinRateCalculatorUI  &     R6WinRateCalculatorUI.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5local#clr-namespace:R6WinRateCalculatorUI       � Title$  
MainWindow��$	��600��$
��1000�����	#FF292929.��� -    �Name$ baseGrid��.+��� ���	#00F4F4F5$��Center=�$��82��$��0,2,0,0q����	#FF171717$	��Top=�$	��992��$��3���� -    ��Name$ lblTitle��
�������$��R6 Win Rate Calculator��$��50(�   Teko Medium#���   $��Center=�$��Center=�$��Center=�$#��250                ,4,244,495q�$��Center=�$	��500��$��70�� J� RenderTransformOrigin$ 0.497,0.514&�z�V� .~���  �� ScaleX$	 1.2Q��� �� T� �� -    ��Name$ Playerscanvas��$	��360��$��96,104,96,109q�$��Center=�$��Center=�$	��800�� � UseLayoutRounding . ���	#FF212121.+�� $	��336�� �� Left$ 10��
 �� Top$ 10��$	��780��	 � ShowGridLines	 . 
 � ColumnDefinitions
 �� $��1��$��1 ��� -    ��Name$ Player1Blue�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$ 10��$ 10��$��0���� -   $ Player1BlueName��$��Label��$��Center=�$ 30��$ 10��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� -   $ Player2Blue�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$ 10��$ 80��$��0���� -   $ Player2BlueName��$��Label��$��Center=�$ 30��$ 80��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� -   $ Player3Blue�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$ 10��$	 150��$��0���� -	   $ Player3BlueName��$��Label��$��Center=�$ 30��$	 150��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� -
   $ Player4Blue�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$ 10��$	 220��$��0���� -   $ Player4BlueName��$��Label��$��Center=�$ 30��$	 220��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� -   $ Player5Blue�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$ 10��$	 290��$��0���� -   $ Player5BlueName��$��Label��$��Center=�$ 30��$	 290��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� -   $ Player1Orange�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$	 410��$ 10��$��0���� -   $ Player1OrangeName��$��Label��$��Center=�$	 430��$ 10��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� -   $ Player2Orange�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$	 410��$ 80��$��0���� -   $ Player2OrangeName��$��Label��$��Center=�$	 430��$ 80��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� -   $ Player3Orange�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$	 410��$	 150��$��0���� -   $ Player3OrangeName��$��Label��$��Center=�$	 430��$	 150��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� -   $ Player4Orange�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$	 410��$	 220��$��0���� -   $ Player4OrangeName��$��Label��$��Center=�$	 430��$	 220��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� -   $ Player5Orange�����	#FF1D1D1D$��60��
���   �$	��380��$
��Left=�$	 410��$	 290��$��0���� -   $ Player5OrangeName��$��Label��$��Center=�$	 430��$	 290��$��60��$	��380�����	#FFFBFBFB$��Arial Black)�$��24(��� ���	#FF0074FF$
��Left=�$��96,462,0,87q�
���   �$��0��$	��400���� ���	#FFFF8000$
��Left=�$��496,462,0,87q�
���   �$��0��$	��400���� -   $ loading��$��
Loading...��$
��Left=�$��64��$��410,182,0,0q�$	��Top=�$	��174��$��Arial Black)�
�������$��Center=�$��30(����	#FF171717$y�Hidden=��� -   $ 	ChanceBar��$	��400��$��298,498,295.6,10.4q����	#FF1D1D1D.+��� -   $ 	OrangeBar��$��42��$	��376��$ 10��$ 10�����	#FFFF8000�� -   $ BlueBar��$��42��$	��188��$ 10��$ 10�����	#FF0074FF�� -   $ blueWinChanceLabel��$��Blue Win Chance:��$��Center=�$��Center=����	#FFFBFBFB$��Arial Black)�$��24(�$��296,488,295.6,8.4q��� -   $ reliabilityLabel��$��Reliability: ��$��Center=����	#FFFBFBFB$��Arial Black)�$��24(�$��711,488,9.6,9.4q��� -   $ WaitingCanvas��$
��Left=�$	��560��$��0,0,0,0q�$	��Top=�$	��993��$ 0.481,0.921&����	#FF292929�� -   $ WaitingLabel��$#��Waiting for match to start...��$��Center=����	#FFFBFBFB$��Arial Black)�$��24(�$��298,246,294.6,251.4q��� -     ��Name$ 
startmatch��$��Button��$
��Left=�$��
97,103,0,0q�$	��Top=�$	��279��$��97��