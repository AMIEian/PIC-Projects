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
    public partial class RTU1HistoryCombined : Form
    {
        public RTU1HistoryCombined()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            foreach (var series in this.combined_chart.Series)
            {
                series.Points.Clear();
            }
            string query = "";

            if(hrs.Text.Equals("HH") && mins.Text.Equals("MM") && secs.Text.Equals("SS"))
            {
                query = "select count(*) from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" +dateTimePicker1.Value.Day;
            }
            if (!hrs.Text.Equals("HH"))
            {
                query = "select count(*) from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text);
            }
            if (!mins.Text.Equals("MM"))
            {
                query = "select count(*) from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text);
            }
            if (!secs.Text.Equals("SS"))
            {
                query = "select count(*) from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text) + "and R_SEC=" + Convert.ToInt32(secs.Text);
            }

            if (SqlHelper.getCount(query) == 0)
            {
                MessageBox.Show("No data to draw any graph...!");
            }

            else
            {
                string sql = "";
                //Temperature 1 query
                if (hrs.Text.Equals("HH") && mins.Text.Equals("MM") && secs.Text.Equals("SS"))
                {
                    sql = "Select `TEMP1`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day;
                }
                if (!hrs.Text.Equals("HH"))
                {
                    sql = "Select `TEMP1`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text);
                }
                if (!mins.Text.Equals("MM"))
                {
                    sql = "Select `TEMP1`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text);
                }
                if (!secs.Text.Equals("SS"))
                {
                    sql = "Select `TEMP1`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text) + "and R_SEC=" + Convert.ToInt32(secs.Text);
                }
                List<object> lst = SqlHelper.populateData(sql, null, 2);
                foreach (object[] row in lst)
                {
                    this.combined_chart.Series["Temp1"].Points.AddXY(Convert.ToDateTime(row[1]), Convert.ToDouble(row[0]));
                }

                //Humidity 1 Query
                if (hrs.Text.Equals("HH") && mins.Text.Equals("MM") && secs.Text.Equals("SS"))
                {
                    sql = "Select `HUM1`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day;
                }
                if (!hrs.Text.Equals("HH"))
                {
                    sql = "Select `HUM1`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text);
                }
                if (!mins.Text.Equals("MM"))
                {
                    sql = "Select `HUM1`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text);
                }
                if (!secs.Text.Equals("SS"))
                {
                    sql = "Select `HUM1`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text) + "and R_SEC=" + Convert.ToInt32(secs.Text);
                }
                lst = SqlHelper.populateData(sql, null, 2);
                foreach (object[] row in lst)
                {
                    this.combined_chart.Series["Hum1"].Points.AddXY(Convert.ToDateTime(row[1]), Convert.ToDouble(row[0]));
                }

                //Temperature 2 query
                if (hrs.Text.Equals("HH") && mins.Text.Equals("MM") && secs.Text.Equals("SS"))
                {
                    sql = "Select `TEMP2`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day;
                }
                if (!hrs.Text.Equals("HH"))
                {
                    sql = "Select `TEMP2`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text);
                }
                if (!mins.Text.Equals("MM"))
                {
                    sql = "Select `TEMP2`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text);
                }
                if (!secs.Text.Equals("SS"))
                {
                    sql = "Select `TEMP2`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text) + "and R_SEC=" + Convert.ToInt32(secs.Text);
                }
                lst = SqlHelper.populateData(sql, null, 2);
                foreach (object[] row in lst)
                {
                    this.combined_chart.Series["Temp2"].Points.AddXY(Convert.ToDateTime(row[1]), Convert.ToDouble(row[0]));
                }

                //Humidity 2 query
                if (hrs.Text.Equals("HH") && mins.Text.Equals("MM") && secs.Text.Equals("SS"))
                {
                    sql = "Select `HUM2`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day;
                }
                if (!hrs.Text.Equals("HH"))
                {
                    sql = "Select `HUM2`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text);
                }
                if (!mins.Text.Equals("MM"))
                {
                    sql = "Select `HUM2`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text);
                }
                if (!secs.Text.Equals("SS"))
                {
                    sql = "Select `HUM2`, `R_TIME_STAMP` from RTU1 where R_YEAR=" + dateTimePicker1.Value.Year + "and R_MONTH=" + dateTimePicker1.Value.Month + "and R_DATE=" + dateTimePicker1.Value.Day + "and R_HRS=" + Convert.ToInt32(hrs.Text) + "and R_MINS=" + Convert.ToInt32(mins.Text) + "and R_SEC=" + Convert.ToInt32(secs.Text);
                }
                lst = SqlHelper.populateData(sql, null, 2);
                foreach (object[] row in lst)
                {
                    this.combined_chart.Series["Hum2"].Points.AddXY(Convert.ToDateTime(row[1]), Convert.ToDouble(row[0]));
                }
            }
        }

        private void combined_chart_Click(object sender, EventArgs e)
        {

        }
    }
}
