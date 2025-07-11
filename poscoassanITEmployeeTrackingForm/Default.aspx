<%@ Page Title="Çalışan Takip Formu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="poscoassanITEmployeeTrackingForm._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- CSS Dosyasını dahil ediyoruz -->
    <link href="Content/css/Style.css" rel="stylesheet" type="text/css" />

    <div class="form-container">
        <h2>Çalışan Takip Formu</h2>

        <div class="form-row">
            <label>Ad Soyad:</label>
            <asp:TextBox ID="txtAdSoyad" runat="server" />
        </div>

        <div class="form-row">
            <label>Departman:</label>
            <asp:TextBox ID="txtDepartman" runat="server" />
        </div>

        <div class="form-row">
            <label>Çalışan ID:</label>
            <asp:TextBox ID="txtCalisanID" runat="server" />
        </div>

        <div class="form-row">
            <label>İşlem Tarihi:</label>
            <asp:TextBox ID="txtTarih" runat="server" TextMode="Date" />
        </div>

        <div class="form-row">
            <label>İşlem Türü:</label>
            <asp:DropDownList ID="ddlIslemTuru" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlIslemTuru_SelectedIndexChanged">
                <asp:ListItem Text="-- Seçiniz --" Value="" />
                <asp:ListItem Text="Yeni Başlangıç" Value="1" />
                <asp:ListItem Text="İşten Çıkış" Value="2" />
                <asp:ListItem Text="Departman Değişikliği" Value="3" />
            </asp:DropDownList>
        </div>

        <asp:Panel ID="pnlSonuc" runat="server" Visible="false">
            <h3>Kanıt Gerektiren Maddeler</h3>
            <asp:Literal ID="litKanıtGerektiren" runat="server" />

            <h3>Kanıt Gerektirmeyen Maddeler</h3>
            <asp:Literal ID="litKanıtGerektirmeyen" runat="server" />
        </asp:Panel>
    </div>
</asp:Content>

