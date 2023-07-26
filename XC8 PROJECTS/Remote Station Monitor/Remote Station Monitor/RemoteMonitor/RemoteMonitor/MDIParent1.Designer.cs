namespace RemoteMonitor
{
    partial class main_window
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
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.rTU1ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.historicGraphsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.combinedGraphToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.seperateParametersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.realTimeGraphsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.combinedParametersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.seperateParametersToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem5 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem6 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem7 = new System.Windows.Forms.ToolStripMenuItem();
            this.settingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rTCToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.thresholdSettingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pORTSettingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.getDataFromCenterToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.menuStrip.SuspendLayout();
            this.statusStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip
            // 
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.rTU1ToolStripMenuItem,
            this.toolStripMenuItem1,
            this.settingsToolStripMenuItem});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Size = new System.Drawing.Size(736, 24);
            this.menuStrip.TabIndex = 0;
            this.menuStrip.Text = "MenuStrip";
            // 
            // rTU1ToolStripMenuItem
            // 
            this.rTU1ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.historicGraphsToolStripMenuItem,
            this.realTimeGraphsToolStripMenuItem});
            this.rTU1ToolStripMenuItem.Name = "rTU1ToolStripMenuItem";
            this.rTU1ToolStripMenuItem.Size = new System.Drawing.Size(58, 20);
            this.rTU1ToolStripMenuItem.Text = "RTU - 1";
            // 
            // historicGraphsToolStripMenuItem
            // 
            this.historicGraphsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.combinedGraphToolStripMenuItem,
            this.seperateParametersToolStripMenuItem});
            this.historicGraphsToolStripMenuItem.Name = "historicGraphsToolStripMenuItem";
            this.historicGraphsToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
            this.historicGraphsToolStripMenuItem.Text = "Historic Graphs";
            // 
            // combinedGraphToolStripMenuItem
            // 
            this.combinedGraphToolStripMenuItem.Name = "combinedGraphToolStripMenuItem";
            this.combinedGraphToolStripMenuItem.Size = new System.Drawing.Size(192, 22);
            this.combinedGraphToolStripMenuItem.Text = "Combined Parameters";
            this.combinedGraphToolStripMenuItem.Click += new System.EventHandler(this.combinedGraphToolStripMenuItem_Click);
            // 
            // seperateParametersToolStripMenuItem
            // 
            this.seperateParametersToolStripMenuItem.Name = "seperateParametersToolStripMenuItem";
            this.seperateParametersToolStripMenuItem.Size = new System.Drawing.Size(192, 22);
            this.seperateParametersToolStripMenuItem.Text = "Seperate Parameters";
            this.seperateParametersToolStripMenuItem.Click += new System.EventHandler(this.seperateParametersToolStripMenuItem_Click);
            // 
            // realTimeGraphsToolStripMenuItem
            // 
            this.realTimeGraphsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.combinedParametersToolStripMenuItem,
            this.seperateParametersToolStripMenuItem1});
            this.realTimeGraphsToolStripMenuItem.Name = "realTimeGraphsToolStripMenuItem";
            this.realTimeGraphsToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
            this.realTimeGraphsToolStripMenuItem.Text = "Real Time Graphs";
            // 
            // combinedParametersToolStripMenuItem
            // 
            this.combinedParametersToolStripMenuItem.Name = "combinedParametersToolStripMenuItem";
            this.combinedParametersToolStripMenuItem.Size = new System.Drawing.Size(192, 22);
            this.combinedParametersToolStripMenuItem.Text = "Combined Parameters";
            this.combinedParametersToolStripMenuItem.Click += new System.EventHandler(this.combinedParametersToolStripMenuItem_Click);
            // 
            // seperateParametersToolStripMenuItem1
            // 
            this.seperateParametersToolStripMenuItem1.Name = "seperateParametersToolStripMenuItem1";
            this.seperateParametersToolStripMenuItem1.Size = new System.Drawing.Size(192, 22);
            this.seperateParametersToolStripMenuItem1.Text = "Seperate Parameters";
            this.seperateParametersToolStripMenuItem1.Click += new System.EventHandler(this.seperateParametersToolStripMenuItem1_Click);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem2,
            this.toolStripMenuItem5});
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(58, 20);
            this.toolStripMenuItem1.Text = "RTU - 2";
            // 
            // toolStripMenuItem2
            // 
            this.toolStripMenuItem2.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem3,
            this.toolStripMenuItem4});
            this.toolStripMenuItem2.Name = "toolStripMenuItem2";
            this.toolStripMenuItem2.Size = new System.Drawing.Size(166, 22);
            this.toolStripMenuItem2.Text = "Historic Graphs";
            // 
            // toolStripMenuItem3
            // 
            this.toolStripMenuItem3.Name = "toolStripMenuItem3";
            this.toolStripMenuItem3.Size = new System.Drawing.Size(192, 22);
            this.toolStripMenuItem3.Text = "Combined Parameters";
            this.toolStripMenuItem3.Click += new System.EventHandler(this.toolStripMenuItem3_Click);
            // 
            // toolStripMenuItem4
            // 
            this.toolStripMenuItem4.Name = "toolStripMenuItem4";
            this.toolStripMenuItem4.Size = new System.Drawing.Size(192, 22);
            this.toolStripMenuItem4.Text = "Seperate Parameters";
            this.toolStripMenuItem4.Click += new System.EventHandler(this.toolStripMenuItem4_Click);
            // 
            // toolStripMenuItem5
            // 
            this.toolStripMenuItem5.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem6,
            this.toolStripMenuItem7});
            this.toolStripMenuItem5.Name = "toolStripMenuItem5";
            this.toolStripMenuItem5.Size = new System.Drawing.Size(166, 22);
            this.toolStripMenuItem5.Text = "Real Time Graphs";
            // 
            // toolStripMenuItem6
            // 
            this.toolStripMenuItem6.Name = "toolStripMenuItem6";
            this.toolStripMenuItem6.Size = new System.Drawing.Size(192, 22);
            this.toolStripMenuItem6.Text = "Combined Parameters";
            this.toolStripMenuItem6.Click += new System.EventHandler(this.toolStripMenuItem6_Click);
            // 
            // toolStripMenuItem7
            // 
            this.toolStripMenuItem7.Name = "toolStripMenuItem7";
            this.toolStripMenuItem7.Size = new System.Drawing.Size(192, 22);
            this.toolStripMenuItem7.Text = "Seperate Parameters";
            this.toolStripMenuItem7.Click += new System.EventHandler(this.toolStripMenuItem7_Click);
            // 
            // settingsToolStripMenuItem
            // 
            this.settingsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.rTCToolStripMenuItem,
            this.thresholdSettingsToolStripMenuItem,
            this.pORTSettingsToolStripMenuItem,
            this.getDataFromCenterToolStripMenuItem});
            this.settingsToolStripMenuItem.Name = "settingsToolStripMenuItem";
            this.settingsToolStripMenuItem.Size = new System.Drawing.Size(61, 20);
            this.settingsToolStripMenuItem.Text = "Settings";
            // 
            // rTCToolStripMenuItem
            // 
            this.rTCToolStripMenuItem.Name = "rTCToolStripMenuItem";
            this.rTCToolStripMenuItem.Size = new System.Drawing.Size(188, 22);
            this.rTCToolStripMenuItem.Text = "RTC Settings";
            this.rTCToolStripMenuItem.Click += new System.EventHandler(this.rTCToolStripMenuItem_Click);
            // 
            // thresholdSettingsToolStripMenuItem
            // 
            this.thresholdSettingsToolStripMenuItem.Name = "thresholdSettingsToolStripMenuItem";
            this.thresholdSettingsToolStripMenuItem.Size = new System.Drawing.Size(188, 22);
            this.thresholdSettingsToolStripMenuItem.Text = "Threshold Settings";
            this.thresholdSettingsToolStripMenuItem.Click += new System.EventHandler(this.thresholdSettingsToolStripMenuItem_Click);
            // 
            // pORTSettingsToolStripMenuItem
            // 
            this.pORTSettingsToolStripMenuItem.Name = "pORTSettingsToolStripMenuItem";
            this.pORTSettingsToolStripMenuItem.Size = new System.Drawing.Size(188, 22);
            this.pORTSettingsToolStripMenuItem.Text = "PORT Settings";
            this.pORTSettingsToolStripMenuItem.Click += new System.EventHandler(this.pORTSettingsToolStripMenuItem_Click);
            // 
            // getDataFromCenterToolStripMenuItem
            // 
            this.getDataFromCenterToolStripMenuItem.Name = "getDataFromCenterToolStripMenuItem";
            this.getDataFromCenterToolStripMenuItem.Size = new System.Drawing.Size(188, 22);
            this.getDataFromCenterToolStripMenuItem.Text = "Get Data From Center";
            this.getDataFromCenterToolStripMenuItem.Click += new System.EventHandler(this.getDataFromCenterToolStripMenuItem_Click);
            // 
            // statusStrip
            // 
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel});
            this.statusStrip.Location = new System.Drawing.Point(0, 431);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.Size = new System.Drawing.Size(736, 22);
            this.statusStrip.TabIndex = 2;
            this.statusStrip.Text = "StatusStrip";
            // 
            // toolStripStatusLabel
            // 
            this.toolStripStatusLabel.Name = "toolStripStatusLabel";
            this.toolStripStatusLabel.Size = new System.Drawing.Size(39, 17);
            this.toolStripStatusLabel.Text = "Status";
            // 
            // main_window
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(736, 453);
            this.Controls.Add(this.statusStrip);
            this.Controls.Add(this.menuStrip);
            this.IsMdiContainer = true;
            this.Name = "main_window";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Remote Monitor";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
        #endregion


        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.ToolStripMenuItem rTU1ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem historicGraphsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem combinedGraphToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem seperateParametersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem realTimeGraphsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem combinedParametersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem seperateParametersToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem2;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem3;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem4;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem5;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem6;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem7;
        private System.Windows.Forms.ToolStripMenuItem settingsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rTCToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem thresholdSettingsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem pORTSettingsToolStripMenuItem;
        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.ToolStripMenuItem getDataFromCenterToolStripMenuItem;
    }
}



