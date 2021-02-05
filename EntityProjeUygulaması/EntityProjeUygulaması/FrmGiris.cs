using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EntityProjeUygulaması
{
    public partial class FrmGiris : Form
    {
        public FrmGiris()
        {
            InitializeComponent();
        }

        private void BtnGirisYap_Click(object sender, EventArgs e)
        {
            DbEntityUrunEntities3 db = new DbEntityUrunEntities3();
            var sorgu = from x in db.TBLADMIN where x.KULLANICI == TxtKullaniciAdi.Text && x.SIFRE == TxtSifre.Text select x;
            if (sorgu.Any())
            {
                FrmAnaForm  fr = new FrmAnaForm();
                fr.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Hatalı Giriş!!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
