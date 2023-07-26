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
    public partial class ThreshSettings : Form
    {
        public ThreshSettings()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                CurrentUser.thresh_trig[0] = Convert.ToInt32(text0.Text);
                CurrentUser.thresh_trig[1] = Convert.ToInt32(text1.Text);
                CurrentUser.thresh_trig[2] = Convert.ToInt32(text2.Text);
                CurrentUser.thresh_trig[3] = Convert.ToInt32(text3.Text);
                CurrentUser.thresh_trig[4] = Convert.ToInt32(text4.Text);
                CurrentUser.thresh_trig[5] = Convert.ToInt32(text5.Text);
                CurrentUser.thresh_trig[6] = Convert.ToInt32(text6.Text);
                CurrentUser.thresh_trig[7] = Convert.ToInt32(text7.Text);
                CurrentUser.thresh_trig[8] = Convert.ToInt32(text8.Text);
                CurrentUser.thresh_trig[9] = Convert.ToInt32(text9.Text);
                CurrentUser.thresh_trig[10] = Convert.ToInt32(text10.Text);
                CurrentUser.thresh_trig[11] = Convert.ToInt32(text11.Text);
                CurrentUser.thresh_trig[12] = Convert.ToInt32(text12.Text);
                CurrentUser.thresh_trig[13] = Convert.ToInt32(text13.Text);
                CurrentUser.thresh_trig[14] = Convert.ToInt32(text14.Text);
                CurrentUser.thresh_trig[15] = Convert.ToInt32(text15.Text);
                CurrentUser.thresh_trig[16] = Convert.ToInt32(text16.Text);
                CurrentUser.thresh_trig[17] = Convert.ToInt32(text17.Text);
                CurrentUser.thresh_trig[18] = Convert.ToInt32(text18.Text);
                CurrentUser.thresh_trig[19] = Convert.ToInt32(text19.Text);
                CurrentUser.thresh_trig[20] = Convert.ToInt32(text20.Text);
                CurrentUser.thresh_trig[21] = Convert.ToInt32(text21.Text);
                CurrentUser.thresh_trig[22] = Convert.ToInt32(text22.Text);
                CurrentUser.thresh_trig[23] = Convert.ToInt32(text23.Text);
                CurrentUser.thresh_trig[24] = Convert.ToInt32(text24.Text);
                CurrentUser.thresh_trig[25] = Convert.ToInt32(text25.Text);
                CurrentUser.thresh_trig[26] = Convert.ToInt32(text26.Text);
                CurrentUser.thresh_trig[27] = Convert.ToInt32(text27.Text);
                CurrentUser.thresh_trig[28] = Convert.ToInt32(text28.Text);
                CurrentUser.thresh_trig[29] = Convert.ToInt32(text29.Text);
                CurrentUser.thresh_trig[30] = Convert.ToInt32(text30.Text);
                CurrentUser.thresh_trig[31] = Convert.ToInt32(text31.Text);
                MessageBox.Show("Threshold and Trigger Values Setting Completed !");
            }
            catch
            {
                MessageBox.Show("Enter Proper Values ...");
            }
        }
    }
}
