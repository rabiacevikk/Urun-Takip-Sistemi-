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
    public partial class Frmİstatistik : Form
    {
        public Frmİstatistik()
        {
            InitializeComponent();
        }
        DbEntityUrunEntities3 db = new DbEntityUrunEntities3();
        private void Frmİstatistik_Load(object sender, EventArgs e)
        {
            lblToplamKategoriSayısı.Text = db.TBLKATEGORI.Count().ToString();
            lblToplamUrunSayısı.Text = db.TBLURUN.Count().ToString();
            lblAktifMusteriSayısı.Text = db.TBLMUSTERI.Count(x => x.DURUM == true).ToString();
            lblPasifMusteriSayısı.Text = db.TBLMUSTERI.Count(x => x.DURUM == false).ToString();
            LblToplamStok.Text = db.TBLURUN.Sum(y => y.STOK).ToString();
            LblKasadakiTutar.Text = db.TBLSATIS.Sum(z => z.FIYAT).ToString() + "TL";
            LblEnYuksekFiyatUrun.Text = (from x in db.TBLURUN orderby x.FIYAT descending select x.URUNAD).FirstOrDefault();
            LblEnDusukFiyatUrun.Text = (from x in db.TBLURUN orderby x.FIYAT ascending select x.URUNAD).FirstOrDefault();
            LblBeyazEsyaSayısı.Text = db.TBLURUN.Count(x => x.KATEGORI == 1).ToString();
            LblToplamBuzdolabıSayısı.Text = db.TBLURUN.Count(x => x.URUNAD == "BUZDOLABI").ToString();
            LblSehirSayısı.Text = (from x in db.TBLMUSTERI select x.SEHIR).Distinct().Count().ToString();
            LblenFazlaUrunluMarka.Text = db.MARKAGETIR().FirstOrDefault();
        }
    }
}
