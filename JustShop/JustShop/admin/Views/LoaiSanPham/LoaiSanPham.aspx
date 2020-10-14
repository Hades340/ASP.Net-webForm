<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="LoaiSanPham.aspx.cs" Inherits="JustShop.admin.Views.LoaiSanPham" %>
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
       <div class="card-body">
        <div class="table-responsive">
    <asp:GridView runat="server" CssClass="table table-striped" AllowPaging="true" ID="dgvLoaiSanPham" PageSize="10" AutoGenerateColumns="false">
        <Columns>  
            <asp:BoundField HeaderText="Mã loại" DataField="MaLoai" />
            <asp:TemplateField>  
                <HeaderTemplate>
                    <asp:Label runat="server" Text="Hình ảnh">
                    </asp:Label>

                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Image runat="server" ImageUrl='<%# "/Assest/img/" + Eval("AnhTieuBieu").ToString() %>' style="width:100px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText ="Tên loại sản phẩm" DataField="TenLoai" />
            <asp:BoundField HeaderText="Trích dẫn" DataField="TrichDan" />
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label runat="server" Text="Chức năng "></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="d-flex">
                    <asp:LinkButton runat="server" ID="btnXoa" CommandArgument='<%# Eval("MaLoai") %>'  OnCommand="btnXoa_Command" OnClientClick="return check();" CssClass="btn btn-danger mr-3"  Text="Xóa" />
                     <asp:HyperLink runat="server" ID="btnSua" CssClass="btn btn-secondary " NavigateUrl='<%#"~/admin/Views/SuaSp.aspx?MaLoai="+ Eval("MaLoai").ToString()  %>' Text="Sửa"></asp:HyperLink>
                    </div>
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

        
         <asp:HyperLink runat="server" ID="Them" NavigateUrl="~/admin/Views/LoaiSanPham/ThemLoai.aspx" CssClass="btn btn-primary ml-3" Text="Thêm loại sản phẩm"></asp:HyperLink>
      </div>
         </div> 
    <script>
       
        function check() {
            return confirm("bạn có muốn xóa không ?");
        }
    </script>
     <asp:Label ID="lbThatBai" runat="server" CssClass="text-danger"></asp:Label>
</asp:Content>
