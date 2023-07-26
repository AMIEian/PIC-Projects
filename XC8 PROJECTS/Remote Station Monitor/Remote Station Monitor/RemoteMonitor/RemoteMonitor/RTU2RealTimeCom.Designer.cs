namespace RemoteMonitor
{
    partial class RTU2RealTimeCom
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series3 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series4 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.combined_chart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.combined_chart)).BeginInit();
            this.SuspendLayout();
            // 
            // combined_chart
            // 
            this.combined_chart.BackColor = System.Drawing.Color.Transparent;
            this.combined_chart.BackImageTransparentColor = System.Drawing.Color.White;
            this.combined_chart.BorderlineColor = System.Drawing.Color.Transparent;
            this.combined_chart.BorderlineWidth = 10;
            this.combined_chart.BorderSkin.PageColor = System.Drawing.Color.Gray;
            chartArea1.Name = "ChartArea1";
            this.combined_chart.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.combined_chart.Legends.Add(legend1);
            this.combined_chart.Location = new System.Drawing.Point(12, 12);
            this.combined_chart.Name = "combined_chart";
            this.combined_chart.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Grayscale;
            series1.ChartArea = "ChartArea1";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series1.Color = System.Drawing.Color.Red;
            series1.LabelAngle = 90;
            series1.Legend = "Legend1";
            series1.Name = "Temp1";
            series1.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Time;
            series2.ChartArea = "ChartArea1";
            series2.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series2.Color = System.Drawing.Color.Blue;
            series2.Legend = "Legend1";
            series2.Name = "Hum1";
            series2.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Time;
            series3.ChartArea = "ChartArea1";
            series3.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series3.Color = System.Drawing.Color.Yellow;
            series3.Legend = "Legend1";
            series3.Name = "Temp2";
            series3.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Time;
            series4.ChartArea = "ChartArea1";
            series4.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series4.Color = System.Drawing.Color.Lime;
            series4.Legend = "Legend1";
            series4.Name = "Hum2";
            series4.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Time;
            this.combined_chart.Series.Add(series1);
            this.combined_chart.Series.Add(series2);
            this.combined_chart.Series.Add(series3);
            this.combined_chart.Series.Add(series4);
            this.combined_chart.Size = new System.Drawing.Size(1261, 638);
            this.combined_chart.TabIndex = 2;
            this.combined_chart.Text = "chart1";
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // RTU2RealTimeCom
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1300, 625);
            this.Controls.Add(this.combined_chart);
            this.Name = "RTU2RealTimeCom";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "RTU2 Real Time Combined Graph";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            ((System.ComponentModel.ISupportInitialize)(this.combined_chart)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataVisualization.Charting.Chart combined_chart;
        private System.Windows.Forms.Timer timer1;
    }
}