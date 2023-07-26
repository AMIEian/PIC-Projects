using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;

namespace RemoteMonitor
{
    public partial class PORTSettings : Form
    {
        public PORTSettings()
        {
            InitializeComponent();
            // Get a list of serial port names.
            string[] ports = SerialPort.GetPortNames();

            // Display each port name to the console.
            foreach (string port in ports)
            {
                PORTS.Items.Add(port);
            }
            BaudRates.Items.Add("115200");
            BaudRates.Items.Add("57600");
            BaudRates.Items.Add("38400");
            BaudRates.Items.Add("9600");
            BaudRates.Items.Add("1200");
        }

        private void PORTSettings_Load(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string port_no = PORTS.SelectedItem.ToString();
            string baud_rate = BaudRates.SelectedItem.ToString();

            CurrentUser.wComport = port_no;
            CurrentUser.wSpeed = baud_rate;
            this.Close();
        }
    }
}
