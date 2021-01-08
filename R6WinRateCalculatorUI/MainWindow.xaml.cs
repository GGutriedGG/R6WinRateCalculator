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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Threading;
using System.IO;
using System.Diagnostics;

namespace R6WinRateCalculatorUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            void onMatchStart(object sender, RoutedEventArgs e) {
                WaitingLabel.Visibility = Visibility.Hidden;
                WaitingCanvas.Visibility = Visibility.Hidden;
                loading.Visibility = Visibility.Visible;
                System.Diagnostics.Process.Start("CMD.exe", "/C py -m pip install requests");
                System.Diagnostics.Process.Start("CMD.exe", @"/C py res\calculator.py");
                Thread.Sleep(5000);
                loading.Visibility = Visibility.Hidden;
                var players = new List<string>{};
                players.Add(System.IO.File.ReadLines("./res/data.txt").Take(1).First());
                players.Add(System.IO.File.ReadLines("./res/data.txt").Skip(1).Take(1).First());
                players.Add(System.IO.File.ReadLines("./res/data.txt").Skip(2).Take(1).First());
                players.Add(System.IO.File.ReadLines("./res/data.txt").Skip(3).Take(1).First());
                players.Add(System.IO.File.ReadLines("./res/data.txt").Skip(4).Take(1).First());
                players.Add(System.IO.File.ReadLines("./res/data.txt").Skip(5).Take(1).First());
                players.Add(System.IO.File.ReadLines("./res/data.txt").Skip(6).Take(1).First());
                players.Add(System.IO.File.ReadLines("./res/data.txt").Skip(7).Take(1).First());
                players.Add(System.IO.File.ReadLines("./res/data.txt").Skip(8).Take(1).First());
                players.Add(System.IO.File.ReadLines("./res/data.txt").Skip(9).Take(1).First());
                string reliability = System.IO.File.ReadLines("./res/data.txt").Skip(10).Take(1).First();
                string blueWinChance = System.IO.File.ReadLines("./res/data.txt").Skip(11).Take(1).First();
                Player1BlueName.Content = players.ElementAt(0);
                Player2BlueName.Content = players.ElementAt(1);
                Player3BlueName.Content = players.ElementAt(2);
                Player4BlueName.Content = players.ElementAt(3);
                Player5BlueName.Content = players.ElementAt(4);
                Player1OrangeName.Content = players.ElementAt(5);
                Player2OrangeName.Content = players.ElementAt(6);
                Player3OrangeName.Content = players.ElementAt(7);
                Player4OrangeName.Content = players.ElementAt(8);
                Player5OrangeName.Content = players.ElementAt(9);
                BlueBar.Width = float.Parse(blueWinChance) * 3.76;
                blueWinChanceLabel.Content = float.Parse(blueWinChance) + "%";
                reliabilityLabel.Content = reliabilityLabel.Content + reliability;
            }
            startmatch.Click += onMatchStart;
        }
    }
}
