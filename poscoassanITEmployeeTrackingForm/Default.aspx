<%@ Page Title="Çalışan Takip Formu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="poscoassanITEmployeeTrackingForm._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Bootstrap 5 ve özel stil dosyası -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Style.css" rel="stylesheet" type="text/css" />

    <div class="container py-5">
        <div class="card shadow-lg p-4">
            <h2 class="form-title text-center mb-4">Çalışan Takip Formu</h2>

            <div class="row g-4">
                <div class="col-md-4">
                    <label for="txtAdSoyad" class="form-label">Ad Soyad:</label>
                    <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-4">
                    <label for="txtSicilNo" class="form-label">Sicil:</label>
                    <asp:TextBox ID="txtSicilNo" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-4">
                    <label for="txtDepartman" class="form-label">Departman:</label>
                    <asp:TextBox ID="txtDepartman" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-4">
                    <label for="txtPozisyon" class="form-label">Pozisyon:</label>
                    <asp:TextBox ID="txtPozisyon" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-4">
                    <label for="txtYonetici" class="form-label">Yönetici:</label>
                    <asp:TextBox ID="txtYonetici" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-4">
                    <label for="txtTarih" class="form-label">İşlem Tarihi:</label>
                    <asp:TextBox ID="txtTarih" runat="server" TextMode="Date" CssClass="form-control" />
                </div>

                <div class="col-md-4">
                    <label for="ddlIslemTuru" class="form-label">İşlem Türü:</label>
                    <asp:DropDownList ID="ddlIslemTuru" runat="server" AutoPostBack="true" CssClass="form-select" OnSelectedIndexChanged="ddlIslemTuru_SelectedIndexChanged">
                        <asp:ListItem Text="-- Seçiniz --" Value="" />
                        <asp:ListItem Text="Yeni Başlangıç" Value="1" />
                        <asp:ListItem Text="İşten Çıkış" Value="2" />
                        <asp:ListItem Text="Departman Değişikliği" Value="3" />
                    </asp:DropDownList>
                </div>
            </div>

            <asp:Panel ID="pnlyib" runat="server" CssClass="mt-5" Visible="false">
    <div class="row g-4">
        <!-- Kanıt Gerektiren Maddeler -->
        <div class="col-md-6">
            <div class="p-4 rounded border panel-box panel-proof">
                <h5 class="fw-bold text-primary mb-3">Kanıt Gerektiren Maddeler</h5>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass ="checkbox-large" />
                    <label class="form-check-label" for="CheckBox1">Yeni İş Başı Formu Alındı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox2" runat="server"  />
                    <label class="form-check-label" for="CheckBox2">AD Kullanıcı Hesabı Açıldı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox3" runat="server"  />
                    <label class="form-check-label" for="CheckBox3">AD Yetkileri Tanımlandı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox4" runat="server"  />
                    <label class="form-check-label" for="CheckBox4">Donanımlar Zimmetlemesi Yapıldı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox5" runat="server"  />
                    <label class="form-check-label" for="CheckBox5">Mail Adresi Açıldı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox6" runat="server"  />
                    <label class="form-check-label" for="CheckBox6">TST App Kullanıcı Oluşturuldu</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox7" runat="server"  />
                    <label class="form-check-label" for="CheckBox7">Healthy Future Kullanıcı Oluşturuldu</label>
                </div>
            </div>
        </div>

        <!-- Kanıt Gerektirmeyen Maddeler -->
        <div class="col-md-6">
            <div class="p-4 rounded border panel-box panel-noproof">
                <h5 class="fw-bold text-secondary mb-3">Kanıt Gerektirmeyen Maddeler</h5>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox8" runat="server"  />
                    <label class="form-check-label" for="CheckBox8">Bilgisayar Kurulumu Yapıldı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox9" runat="server"  />
                    <label class="form-check-label" for="CheckBox9">EMS Bilgisayar Açıklaması Girildi</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox10" runat="server"  />
                    <label class="form-check-label" for="CheckBox10">VNC Bilgileri Güncellendi</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox11" runat="server" />
                    <label class="form-check-label" for="CheckBox11">Envanter Güncellemesi Yapıldı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox12" runat="server"  />
                    <label class="form-check-label" for="CheckBox12">Kablolu Network Ayarları Yapıldı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox13" runat="server"  />
                    <label class="form-check-label" for="CheckBox13">Masa Telefonu Ayarları Tamamlandı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox14" runat="server"  />
                    <label class="form-check-label" for="CheckBox14">İnternet Kullanım Ayarları Yapıldı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox15" runat="server" />
                    <label class="form-check-label" for="CheckBox15">IP Sabitlemesi Yapıldı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox16" runat="server"/>
                    <label class="form-check-label" for="CheckBox16">AD Bilgisayar Departmana Taşındı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox17" runat="server" />
                    <label class="form-check-label" for="CheckBox17">WSUS Bilgisayar İlgili Alana Taşındı</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="CheckBox18" runat="server" />
                    <label class="form-check-label" for="CheckBox18">TST Web Kullanıcı Oluşturuldu</label>
                </div>
            </div>
        </div>
    </div>
</asp:Panel>

<asp:Panel ID="pnlic" runat="server" Visible="false">
            <h4>Teknoloji Alanları</h4>
            <asp:CheckBox ID="cbYazilim" runat="server" Text="Yazılım" />
            <asp:CheckBox ID="cbDonanim" runat="server" Text="Donanım" />
            <asp:CheckBox ID="cbYapayZeka" runat="server" Text="Yapay Zeka" />
        </asp:Panel>

        <asp:Panel ID="pnldd" runat="server" Visible="false">
            <h4>Sanat Dalları</h4>
            <asp:CheckBox ID="cbResim" runat="server" Text="Resim" />
            <asp:CheckBox ID="cbMuzik" runat="server" Text="Müzik" />
            <asp:CheckBox ID="cbTiyatro" runat="server" Text="Tiyatro" />
        </asp:Panel>


        </div>
    </div>
</asp:Content>
