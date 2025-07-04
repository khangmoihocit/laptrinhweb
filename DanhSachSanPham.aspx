﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSachSanPham.aspx.cs" Inherits="btl_laptrinhweb.DanhSachSanPham" %>

<%@ Register Src="~/UserControls/Header.ascx" TagPrefix="uc" TagName="Header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
    <link rel="stylesheet" href="/assets/css/reset.css">
    <link rel="stylesheet" href="/assets/css/base.css">
    <link rel="stylesheet" href="/assets/css/danhsachsanpham.css" />
    <title></title>
</head>
<body>

    <uc:Header runat="server" ID="header1" />
    <div class="section-0">
        <div class="container">
            <ul class="inner-wrap">
                <li><a href="TrangChu.aspx">Trang chủ</a></li>
                <li>/</li>
                <li class="inner-text-active">Tất cả sản phẩm</li>
            </ul>
            <div class="inner-title">TẤT CẢ SẢN PHẨM</div>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="inner-wrap">
                <!-- Sidebar bộ lọc -->
                <div class="sidebar-filter">
                    <div class="inner-filter">
                        <div class="inner-title">THỂ LOẠI SÁCH</div>
                        <asp:CheckBoxList ID="cblTheLoai" runat="server" RepeatLayout="Flow">
                        </asp:CheckBoxList>
                    </div>
                    <div class="inner-filter">
                        <div class="inner-title">NHÀ XUẤT BẢN</div>
                        <asp:CheckBoxList ID="cblNhaXuatBan" runat="server" RepeatLayout="Flow">
                        </asp:CheckBoxList>
                    </div>

                    <div class="inner-filter">
                        <div class="inner-title">SẮP XẾP THEO GIÁ</div>
                        <asp:RadioButtonList ID="cblSapXep" runat="server" RepeatLayout="Flow">
                            <asp:ListItem Value="giathapdencao">Giá thấp đến cao</asp:ListItem>
                            <asp:ListItem Value="giacaodenthap">Giá cao đến thấp</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>

                    <!-- Ảnh -->
                    <div class="sidebar-image">
                        <img src="assets/images/img_aside_banner.webp" alt="banner1" />
                    </div>
                </div>

                <!-- Danh sách sản phẩm -->
                <div class="product-list">
                    <asp:Repeater ID="rptSach" runat="server">
                        <ItemTemplate>
                            <div class="product">
                                <div class="inner-icon-favourite"><i class="fa-regular fa-heart"></i></div>
                                <img class="inner-image" src='<%# Eval("URLAnh") %>' alt="ảnh sản phẩm">
                                <div class="inner-title"><%# Eval("TenSach") %></div>
                                <div class="inner-price">
                                    <div class="inner-price-new"><%# Eval("GiaBanMoi") %></div>
                                    <div class="inner-price-old"><%# Eval("GiaBanCu") %></div>
                                </div>
                                <div class="inner-add-to-cart">
                                    <i class="fa-solid fa-cart-shopping"></i>
                                    Thêm giỏ hàng
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

            </div>
        </div>
    </form>
</body>

<script>
    const filterTitles = document.querySelectorAll('.inner-filter .inner-title');

    filterTitles.forEach(title => {
        title.addEventListener('click', () => {
            title.parentElement.classList.toggle('active');
        });
    });
</script>
</html>
