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
    public partial class RTCSettings : Form
    {
        public RTCSettings()
        {
            InitializeComponent();
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                checkBox2.Enabled = false;
                button2.Enabled = false;
                dateTimePicker1.Enabled = false;
                textBox1.Enabled = false;
                textBox2.Enabled = false;
                textBox3.Enabled = false;
            }
            else
            {
                checkBox2.Enabled = true;
                button2.Enabled = true;
                dateTimePicker1.Enabled = true;
                textBox1.Enabled = true;
                textBox2.Enabled = true;
                textBox3.Enabled = true;
            }

        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
            {
                checkBox1.Enabled = false;
                button1.Enabled = false;
            }
            else
            {
                checkBox1.Enabled = true;
                button1.Enabled = true;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(checkBox1.Checked)
                CurrentUser.Sys_Time = true;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
            {
                string hh, mm, ss;
                hh = textBox1.Text.ToString();
                mm = textBox2.Text.ToString();
                ss = textBox3.Text.ToString();

                if (hh.Equals("HH") || mm.Equals("MM") || ss.Equals("SS"))
                {
                    MessageBox.Show("Enter Time");
                    return;
                }
                int yr, mnth, dy, hr, min, sec;
                yr = dateTimePicker1.Value.Year;
                mnth = dateTimePicker1.Value.Month;
                dy = dateTimePicker1.Value.Day;
                hr = Convert.ToInt32(hh);
                min = Convert.ToInt32(mm);
                sec = Convert.ToInt32(ss);

                CurrentUser.Sys_Time = false;
                DateTime temp = new DateTime(yr, mnth, dy, hr, min, sec);
                CurrentUser.RTC_date_time = temp;
            }
        }
    }
}
