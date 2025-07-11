using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace poscoassanITEmployeeTrackingForm
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ddlIslemTuru_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlSonuc.Visible = true;

            string kanitGerektiren = "";
            string kanitGerektirmeyen = "";

            switch (ddlIslemTuru.SelectedValue)
            {
                case "1": // Yeni Başlangıç
                    kanitGerektiren = "<ul><li>N_502 - HESAP AÇILDI</li><li>N_503 - AD HESABI OLUŞTURULDU</li></ul>";
                    kanitGerektirmeyen = "<ul><li>EMS Bilgisayarı Ataması Yapıldı</li><li>IP Sabitlendi</li></ul>";
                    break;

                case "2": // İşten Çıkış
                    kanitGerektiren = "<ul><li>SDN Parolası Değiştirildi</li><li>SC02 - TST Web Kullanıcı Düzenlendi</li></ul>";
                    kanitGerektirmeyen = "<ul><li>Firewall Bilgisi Silindi</li><li>Bilgisayar Etiketi Kaldırıldı</li></ul>";
                    break;

                case "3": // Departman Değişikliği
                    kanitGerektiren = "<ul><li>AD HESABI GÜNCELLENDİ</li><li>SC03 - TST APP Rolü Düzenlendi</li></ul>";
                    kanitGerektirmeyen = "<ul><li>Sorumlu Olduğu Kullanıcılar Aktarıldı</li></ul>";
                    break;
            }

            litKanıtGerektiren.Text = kanitGerektiren;
            litKanıtGerektirmeyen.Text = kanitGerektirmeyen;
        }
    }
}