<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="CTDon.aspx.cs" Inherits="JustShop.admin.Views.CTPhieuNhap.CTDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <h1 class="mt-4">Phiếu nhập hàng</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Thông tin phiếu nhập hàng</li>
    </ol>
    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i> Bảng danh sách
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <asp:Label runat="server" ID="lbThanhCong"></asp:Label>
                  <asp:Label runat="server" ID="lbThatBai"></asp:Label>
                  <asp:GridView runat="server" ID="dgvCTNhap" AutoGenerateColumns="false" PageSize="10" AllowPaging="true" CssClass="table table-striped">
                      <Columns>
                         <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Loại  sản phẩm"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                                <asp:Label runat="server" Text='<%# gettenloai(Eval("MaLoai").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Tên sản phẩm"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                                <asp:Label runat="server" Text='<%# getname(Eval("MaSp").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                    <asp:BoundField DataField="GiaNhap" HeaderText="Giá nhập" />
                      <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Chức năng"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                                 <div class="d-flex">
                                    <asp:LinkButton runat="server" ID="btnXoa"  CssClass="btn btn-danger mr-3" OnClientClick="return validation()" OnCommand="btnXoa_Command" CommandArgument='<%#Eval("MaCTPhieuNhap").ToString() %>'  Text="Xóa" />
                                    <asp:HyperLink runat="server" ID="LinkButton1"  CssClass="btn btn-dark" NavigateUrl='<%#"~/admin/Views/CTPhieuNhap/SuaCT.aspx?MaCTphieuNhap="+Eval("MaCTPhieuNhap").ToString() %>'  Text="Sửa"></asp:HyperLink>
                                </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                      </Columns>
                  </asp:GridView>
            </div>
        </div>
         <script>
       
        function validation() {
            return confirm("bạn có muốn xóa không ?");
        }
    </script>
    </div>
</div>
</asp:Content>
