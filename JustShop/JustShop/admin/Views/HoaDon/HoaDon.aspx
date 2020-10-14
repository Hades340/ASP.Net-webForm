<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="HoaDon.aspx.cs" Inherits="JustShop.admin.Views.HoaDon.HoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-fluid">
            <h1 class="mt-4">Danh sách hóa đơn</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Danh sách hóa đơn đã xác nhận thành công</li>
            </ol>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table mr-1"></i> Bảng danh sách
                </div>
            </div>
    <asp:GridView runat="server" ID="dgvHoaDon" AutoGenerateColumns="false" PageSize="10" CssClass="table table-striped" AllowPaging="true">
        <Columns>
            <asp:BoundField DataField="TenKH" HeaderText="Tên khách hàng" />
            <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
            <asp:BoundField DataField="TongTien" HeaderText="Tổng tiền" />
            <asp:BoundField DataField="NgayMua" HeaderText="Ngày mua" />
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label runat="server" Text="Chi tiết hóa đơn"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:HyperLink runat="server" ID="btnCThoadon1" CssClass =" btn btn-outline-success" Text="Kiểm tra" NavigateUrl='<%#"~/admin/Views/CtHoaDon/CThoaDon.aspx?MaDH=" + Eval("MaDonHang").ToString()%>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>
