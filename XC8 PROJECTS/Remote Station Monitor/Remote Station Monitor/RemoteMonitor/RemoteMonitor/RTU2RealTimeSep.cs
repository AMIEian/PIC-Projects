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
    public partial class RTU2RealTimeSep : Form
    {
        public RTU2RealTimeSep()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (CurrentUser.RTU2_frame_Flag)
            {
                foreach (var series in this.chart1.Series)
                {
                    series.Points.Clear();
                }
                foreach (var series in this.chart2.Series)
                {
                    series.Points.Clear();
                }
                foreach (var series in this.chart3.Series)
                {
                    series.Points.Clear();
                }
                foreach (var series in this.chart4.Series)
                {
                    series.Points.Clear();
                }

                for (int count = 0; count < 14; count++)
                {
                    //Temperature-1 query
                    this.chart1.Series["Temp1"].Points.AddXY(CurrentUser.current_Frame[count, 4], Convert.ToDouble(CurrentUser.current_Frame[count, 0]));

                    //Humidity-1 query
                    this.chart2.Series["Hum1"].Points.AddXY(CurrentUser.current_Frame[count, 4], Convert.ToDouble(CurrentUser.current_Frame[count, 1]));

                    //Temperature-2 query
                    this.chart3.Series["Temp2"].Points.AddXY(CurrentUser.current_Frame[count, 4], Convert.ToDouble(CurrentUser.current_Frame[count, 2]));

                    //Humidity-2 query
                    this.chart4.Series["Hum2"].Points.AddXY(CurrentUser.current_Frame[count, 4], Convert.ToDouble(CurrentUser.current_Frame[count, 3]));
                }
                CurrentUser.RTU2_frame_Flag = false;
            }
        }
    }
}
