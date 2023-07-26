namespace RemoteMonitor
{
    partial class RTU1RealtimeCom
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea3 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend3 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series9 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series10 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series11 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series12 = new System.Windows.Forms.DataVisualization.Charting.Series();
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
            chartArea3.Name = "ChartArea1";
            this.combined_chart.ChartAreas.Add(chartArea3);
            legend3.Name = "Legend1";
            this.combined_chart.Legends.Add(legend3);
            this.combined_chart.Location = new System.Drawing.Point(12, 12);
            this.combined_chart.Name = "combined_chart";
            this.combined_chart.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Grayscale;
            series9.ChartArea = "ChartArea1";
            series9.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series9.Color = System.Drawing.Color.Red;
            series9.LabelAngle = 90;
            series9.Legend = "Legend1";
            series9.Name = "Temp1";
            series9.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Time;
            series10.ChartArea = "ChartArea1";
            series10.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series10.Color = System.Drawing.Color.Blue;
            series10.Legend = "Legend1";
            series10.Name = "Hum1";
            series10.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Time;
            series11.ChartArea = "ChartArea1";
            series11.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series11.Color = System.Drawing.Color.Yellow;
            series11.Legend = "Legend1";
            series11.Name = "Temp2";
            series11.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Time;
            series12.ChartArea = "ChartArea1";
            series12.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series12.Color = System.Drawing.Color.Lime;
            series12.Legend = "Legend1";
            series12.Name = "Hum2";
            series12.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Time;
            this.combined_chart.Series.Add(series9);
            this.combined_chart.Series.Add(series10);
            this.combined_chart.Series.Add(series11);
            this.combined_chart.Series.Add(series12);
            this.combined_chart.Size = new System.Drawing.Size(1261, 638);
            this.combined_chart.TabIndex = 1;
            this.combined_chart.Text = "chart1";
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // RTU1RealtimeCom
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1285, 662);
            this.Controls.Add(this.combined_chart);
            this.Name = "RTU1RealtimeCom";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "RTU1 Realtime Combined";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            ((System.ComponentModel.ISupportInitialize)(this.combined_chart)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataVisualization.Charting.Chart combined_chart;
        private System.Windows.Forms.Timer timer1;
    }
}