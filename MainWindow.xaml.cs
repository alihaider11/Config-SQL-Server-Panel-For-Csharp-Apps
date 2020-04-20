using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Data.SqlClient;
using System.Data;

namespace Config_SQL_Server_For_Apps
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;
        public MainWindow()
        {
            InitializeComponent();
            txtServerName.Text = string.Concat(Environment.MachineName, @"\SQLEXPRESS");
        }

        private void Grid_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            con.Close();
            MessageBox.Show("Connected to the "+cmbDatabae.Text+" Successfully", "Congrats", MessageBoxButton.OK, MessageBoxImage.Information);
            new Window1().Show();
        }

        private void cmbDatabae_DropDownOpened(object sender, EventArgs e)
        {
            cmbDatabae.Items.Clear();
            try
            {
                if (cmbAuthenticationType.Text.Equals("Windows Authentication"))
                {
                    SQLConnection.ConnectionString = @"Server = " + txtServerName.Text + "; Integrated Security = SSPI;";
                    con.ConnectionString = SQLConnection.ConnectionString;
                }
                else if (cmbAuthenticationType.Text.Equals("SQL Server Authentication"))
                {
                    SQLConnection.ConnectionString= @"Server = " + txtServerName.Text + "; User Id ="+txtUsername.Text+"; Password="+txtPassword.Text+";";
                    con.ConnectionString = SQLConnection.ConnectionString;
                }
                con.Open();
                com.Connection = con;
                com.CommandText = "SELECT DB_NAME(database_id) AS[Database], database_id FROM sys.databases; ";
                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    cmbDatabae.Items.Add(dr["Database"].ToString());
                }
                con.Close();
            } 
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message, "OOPSSss!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void cmbAuthenticationType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (cmbAuthenticationType.SelectedItem.ToString().Contains("Windows Authentication"))
            {
                txtUsername.IsEnabled = false;
                txtPassword.IsEnabled = false;
            }
            else if ((cmbAuthenticationType.SelectedItem.ToString().Contains("SQL Server Authentication")))
            {
                txtUsername.IsEnabled = true;
                txtPassword.IsEnabled = true;
            }
        }
    }
}
