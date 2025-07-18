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
            pnlyib.Visible = false;
            pnlic.Visible = false;
            pnldd.Visible = false;

            switch (ddlIslemTuru.SelectedValue)
            {
                case "1": // Yeni Başlangıç
                    pnlyib.Visible = true;
                    break;
                case "2": // İşten Çıkış
                    pnlic.Visible = true;
                    break;
                case "3": // Departman Değişikliği
                    pnldd.Visible = true;
                    break;
            }
        }
    }
}