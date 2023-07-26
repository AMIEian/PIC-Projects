namespace RemoteMonitor
{
    partial class PORTSettings
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
            this.label1 = new System.Windows.Forms.Label();
            this.PORTS = new System.Windows.Forms.ComboBox();
            this.BaudRates = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(55, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(68, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Select Port :-";
            // 
            // PORTS
            // 
            this.PORTS.FormattingEnabled = true;
            this.PORTS.Location = new System.Drawing.Point(143, 43);
            this.PORTS.Name = "PORTS";
            this.PORTS.Size = new System.Drawing.Size(121, 21);
            this.PORTS.TabIndex = 1;
            // 
            // BaudRates
            // 
            this.BaudRates.FormattingEnabled = true;
            this.BaudRates.Location = new System.Drawing.Point(392, 46);
            this.BaudRates.Name = "BaudRates";
            this.BaudRates.Size = new System.Drawing.Size(121, 21);
            this.BaudRates.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(304, 49);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(67, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Baud Rate :-";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(253, 91);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 4;
            this.button1.Text = "Set";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // PORTSettings
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(586, 137);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.BaudRates);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.PORTS);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(602, 175);
            this.MinimizeBox = false;
            this.MinimumSize = new System.Drawing.Size(602, 175);
            this.Name = "PORTSettings";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PORTSettings";
            this.Load += new System.EventHandler(this.PORTSettings_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox PORTS;
        private System.Windows.Forms.ComboBox BaudRates;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button button1;
    }
}