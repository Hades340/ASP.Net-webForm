<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="PhieuNhap.aspx.cs" Inherits="JustShop.admin.Views.phieunhaphang.PhieuNhap" %>
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
        <asp:Label runat="server" CssClass="text-danger" ID="txtThatBai"></asp:Label>
       <div class="card-body">
        <div class="table-responsive">
            <asp:GridView runat="server" ID="dgvNhapHang" AutoGenerateColumns="false" PageSize="10" AllowPaging="true" CssClass="table table-striped">
                <Columns>
                    <asp:BoundField DataField="NgayNhap" HeaderText="Ngày nhập" />
                      <asp:BoundField DataField="SoLuongNhap" HeaderText="Số lượng nhập" />
                      <asp:BoundField DataField="TongTien" HeaderText="Tổng tiền" />
                      <asp:TemplateField>
                          <HeaderTemplate>
                              <asp:Label runat="server" Text="Xem chi tiết "></asp:Label>
                          </HeaderTemplate>
                          <ItemTemplate>
                              <asp:HyperLink runat="server" Text="Chi tiết đơn hàng" NavigateUrl='<%#"~/admin/Views/CTPhieuNhap/XemCT.aspx?MaCT="+Eval("MaPhieuNhap").ToString() %>'></asp:HyperLink>
                          </ItemTemplate>
                      </asp:TemplateField>
                     <asp:TemplateField>
                          <HeaderTemplate>
                              <asp:Label runat="server" Text="Chức năng"></asp:Label>
                          </HeaderTemplate>
                          <ItemTemplate>
                              <asp:HyperLink runat="server" Text="Thêm thông tin" CssClass="btn btn-primary" NavigateUrl='<%#"~/admin/Views/CTPhieuNhap/ThemCT.aspx?MaCT="+Eval("MaPhieuNhap").ToString() %>'></asp:HyperLink>
                               <asp:Button runat="server" Text="Xóa" ID="btnXoa"  CssClass="btn btn-danger" OnClientClick="return validate()" OnCommand="btnXoa_Command" CommandArgument='<%#Eval("MaPhieuNhap") %>'></asp:Button>
                          </ItemTemplate>
                      </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        </div>

    </div>
    </div>
     <div class="row">
         <div class="col-9">
         </div>
         <div class="col-3">
            <asp:HyperLink runat="server" ID="Them" NavigateUrl="~/admin/Views/phieunhaphang/ThemPhieu.aspx" CssClass="btn btn-primary ml-3" Text="Thêm phiếu nhập"></asp:HyperLink>
        </div>
         </div> 
   <script>
        function validate() {
            return confirm("bạn có muốn xóa không ?");
        }
    </script>
</asp:Content>
