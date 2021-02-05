
namespace EntityProjeUygulaması
{
    partial class FrmAnaForm
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
            this.BtnKategoriIslemleri = new System.Windows.Forms.Button();
            this.BtnUrunIslemleri = new System.Windows.Forms.Button();
            this.BtnIstatıstıkler = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // BtnKategoriIslemleri
            // 
            this.BtnKategoriIslemleri.BackColor = System.Drawing.Color.Azure;
            this.BtnKategoriIslemleri.Location = new System.Drawing.Point(24, 15);
            this.BtnKategoriIslemleri.Margin = new System.Windows.Forms.Padding(6, 6, 6, 6);
            this.BtnKategoriIslemleri.Name = "BtnKategoriIslemleri";
            this.BtnKategoriIslemleri.Size = new System.Drawing.Size(191, 198);
            this.BtnKategoriIslemleri.TabIndex = 0;
            this.BtnKategoriIslemleri.Text = "KATEGORİ İŞLEMLERİ";
            this.BtnKategoriIslemleri.UseVisualStyleBackColor = false;
            this.BtnKategoriIslemleri.Click += new System.EventHandler(this.BtnKategoriIslemleri_Click);
            // 
            // BtnUrunIslemleri
            // 
            this.BtnUrunIslemleri.BackColor = System.Drawing.Color.Azure;
            this.BtnUrunIslemleri.Location = new System.Drawing.Point(249, 13);
            this.BtnUrunIslemleri.Margin = new System.Windows.Forms.Padding(6, 6, 6, 6);
            this.BtnUrunIslemleri.Name = "BtnUrunIslemleri";
            this.BtnUrunIslemleri.Size = new System.Drawing.Size(191, 200);
            this.BtnUrunIslemleri.TabIndex = 1;
            this.BtnUrunIslemleri.Text = "ÜRÜN İŞLEMLERİ";
            this.BtnUrunIslemleri.UseVisualStyleBackColor = false;
            this.BtnUrunIslemleri.Click += new System.EventHandler(this.BtnUrunIslemleri_Click);
            // 
            // BtnIstatıstıkler
            // 
            this.BtnIstatıstıkler.BackColor = System.Drawing.Color.Azure;
            this.BtnIstatıstıkler.Location = new System.Drawing.Point(466, 12);
            this.BtnIstatıstıkler.Name = "BtnIstatıstıkler";
            this.BtnIstatıstıkler.Size = new System.Drawing.Size(186, 201);
            this.BtnIstatıstıkler.TabIndex = 2;
            this.BtnIstatıstıkler.Text = "İSTATİSTİKLER";
            this.BtnIstatıstıkler.UseVisualStyleBackColor = false;
            this.BtnIstatıstıkler.Click += new System.EventHandler(this.BtnIstatıstıkler_Click);
            // 
            // FrmAnaForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.ClientSize = new System.Drawing.Size(679, 229);
            this.Controls.Add(this.BtnIstatıstıkler);
            this.Controls.Add(this.BtnUrunIslemleri);
            this.Controls.Add(this.BtnKategoriIslemleri);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Margin = new System.Windows.Forms.Padding(6, 6, 6, 6);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmAnaForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button BtnKategoriIslemleri;
        private System.Windows.Forms.Button BtnUrunIslemleri;
        private System.Windows.Forms.Button BtnIstatıstıkler;
    }
}