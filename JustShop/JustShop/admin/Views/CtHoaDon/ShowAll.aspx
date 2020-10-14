<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="ShowAll.aspx.cs" Inherits="JustShop.admin.Views.CtHoaDon.ShowAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
            <h1 class="mt-4">Loại sản phẩm</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Danh sách loại sản phẩm hiện có</li>
            </ol>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table mr-1"></i> Bảng danh sách
                </div>
            </div>
     <asp:GridView runat="server" ID="dgvCThoadon" AutoGenerateColumns="false" PageSize="10" CssClass="table table-striped" AllowPaging="true">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label runat="server" Text="Tên khác hàng"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                   <asp:Label runat="server" Text='<%#getTenkh(Eval("MaDonHang").ToString()) %>' ID="lbTenkh"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label runat="server" Text="Tên sản phẩm"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%#getTensp(Eval("MaSp").ToString()) %>' ID="tensp"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
            <asp:BoundField DataField="Gia" HeaderText="Gía tiền" />
            <asp:BoundField DataField="GiaTien" HeaderText="Tổng tiền" />
            
        </Columns>
    </asp:GridView>
    <asp:HyperLink ID="back" runat="server" NavigateUrl="~/admin/Views/HoaDon/HoaDon.aspx" Text="Hóa đơn" CssClass="btn btn-outline-success"></asp:HyperLink>
    </div>
</asp:Content>
