namespace RemoteMonitor
{
    partial class RTU2HistoryCombined
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series3 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series4 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.button1 = new System.Windows.Forms.Button();
            this.combined_chart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.secs = new System.Windows.Forms.TextBox();
            this.mins = new System.Windows.Forms.TextBox();
            this.hrs = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.combined_chart)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(687, 13);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 3;
            this.button1.Text = "Load Graph";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
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
            this.combined_chart.Location = new System.Drawing.Point(12, 35);
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
            this.combined_chart.Size = new System.Drawing.Size(1300, 671);
            this.combined_chart.TabIndex = 2;
            this.combined_chart.Text = "chart1";
            // 
            // secs
            // 
            this.secs.Location = new System.Drawing.Point(604, 14);
            this.secs.Name = "secs";
            this.secs.Size = new System.Drawing.Size(66, 20);
            this.secs.TabIndex = 26;
            this.secs.Text = "SS";
            this.secs.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // mins
            // 
            this.mins.Location = new System.Drawing.Point(532, 14);
            this.mins.Name = "mins";
            this.mins.Size = new System.Drawing.Size(66, 20);
            this.mins.TabIndex = 25;
            this.mins.Text = "MM";
            this.mins.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // hrs
            // 
            this.hrs.Location = new System.Drawing.Point(460, 14);
            this.hrs.Name = "hrs";
            this.hrs.Size = new System.Drawing.Size(66, 20);
            this.hrs.TabIndex = 24;
            this.hrs.Text = "HH";
            this.hrs.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(392, 17);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 13);
            this.label2.TabIndex = 23;
            this.label2.Text = "Enter Time";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(90, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(72, 13);
            this.label1.TabIndex = 22;
            this.label1.Text = "Select Date :-";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(173, 16);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 20);
            this.dateTimePicker1.TabIndex = 21;
            // 
            // RTU2HistoryCombined
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(841, 708);
            this.Controls.Add(this.secs);
            this.Controls.Add(this.mins);
            this.Controls.Add(this.hrs);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.combined_chart);
            this.Name = "RTU2HistoryCombined";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "RTU2 Historical Graph";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            ((System.ComponentModel.ISupportInitialize)(this.combined_chart)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataVisualization.Charting.Chart combined_chart;
        private System.Windows.Forms.TextBox secs;
        private System.Windows.Forms.TextBox mins;
        private System.Windows.Forms.TextBox hrs;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
    }
}