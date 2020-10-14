<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JustShop.admin.Views.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-fluid">
            <h1 class="mt-4">Administrator</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Thống kê theo tháng</li>
            </ol>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table mr-1"></i> Bảng thống kê
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                <asp:GridView runat="server" ID="dgvThongKe" CssClass="table table-striped" AutoGenerateColumns="false" PageSize="10" AllowPaging="true">
                    <Columns>
                        <asp:BoundField DataField="Ngay" HeaderText="Tháng" />
                        <asp:BoundField DataField="SoLuongBan" HeaderText="Số lượng đã bán" />
                        <asp:BoundField DataField="SoLuongDonHang" HeaderText="Số lượng đơn hàng" />
                        <asp:BoundField DataField="SanPhamBanChay" HeaderText="Sản phẩm bán chạy" />
                       <asp:TemplateField>
                           <HeaderTemplate>
                               <asp:Label runat="server" Text="Tổng doanh thu"></asp:Label>
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label runat="server" Text='<%# string.Format("{0:#,0}",Eval("TongDoanhThu").ToString())%>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Button runat="server" Text="Thống kê" ID="btnThongKe" CssClass="btn btn-dark"  OnClick="btnThongKe_Click" />
            </div>
        </div>
    </div>
</div>



</asp:Content>
