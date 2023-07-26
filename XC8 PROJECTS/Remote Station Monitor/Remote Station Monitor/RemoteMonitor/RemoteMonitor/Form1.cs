using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RemoteMonitor
{
    public partial class Login_Form : Form
    {
        public Login_Form()
        {
            InitializeComponent();
        }

        private void Login_Click(object sender, EventArgs e)
        {
            string username = UserID.Text;
            string pass = Password.Text;

            if (username.Equals("Admin") && pass.Equals("admin"))
            {
                this.Hide();
                new main_window().ShowDialog();
            }
            else
            {
                MessageBox.Show("Wrong Credintials...!");
            }
        }

        private void Exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
