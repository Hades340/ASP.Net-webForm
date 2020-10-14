<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="JustShop.admin.Views.TinTuc.TinTuc" %>
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
                    <asp:GridView runat="server" ID="dgvTinTuc" AutoGenerateColumns="false" PageSize="10" AllowPaging="true" CssClass="table table-striped">
                     <Columns>
                         <asp:BoundField HeaderText="Tiêu đề" DataField="TieuDe" />
                         <asp:TemplateField>
                             <HeaderTemplate>
                                 <asp:Label Text ="Ảnh" runat="server"></asp:Label>
                             </HeaderTemplate>
                             <ItemTemplate>
                                
                                 <asp:Image runat="server" ImageUrl='<%# "~/Assest/img/"+ Eval("Anh").ToString() %>' style="width:200px"/>
                              </ItemTemplate>
                         </asp:TemplateField>
                         <asp:BoundField HeaderText="Nội dung" DataField="NoiDung" />
                         <asp:BoundField HeaderText="Ngày đăng" DataField="NgayDang" />
                         <asp:TemplateField>
                             <HeaderTemplate>
                                 <asp:Label Text ="Chức năng" runat="server"></asp:Label>
                             </HeaderTemplate>
                             <ItemTemplate>
                                 <div class="d-flex">
                                 <asp:Button runat="server" CssClass="btn btn-danger mr-2" Text="Xóa" ID="btnXoa" OnCommand="btnXoa_Command" OnClientClick="return validate()" CommandArgument='<%#Eval("MaTin") %>'/>
                                   <asp:HyperLink runat="server" CssClass="btn btn-success" Text="Sửa" ID="btnSua" NavigateUrl='<%# "~/admin/Views/TinTuc/SuaTin.aspx?MaTin=" +Eval("MaTin") %>'></asp:HyperLink>

                                 </div>

                             </ItemTemplate>
                         </asp:TemplateField>
                     </Columns>
                    </asp:GridView>
                        <asp:Label runat="server" ID="lbThanhCong" CssClass="text-success"></asp:Label>
                         <asp:Label runat="server" ID="lbThatBai" CssClass="text-danger"></asp:Label>
              </div>
       
         </div>
      <div class="row">
         <div class="col-9">

         </div>
         <div class="col-3">

        
         <asp:HyperLink runat="server" ID="Them" NavigateUrl="~/admin/Views/TinTuc/ThemTinTuc.aspx" CssClass="btn btn-primary ml-3" Text="Tạo tin mới"></asp:HyperLink>
      </div>
         </div> 
    <script>
        function validate() {
            return confirm("Bạn có muốn xóa ko ?");
        }
    </script>
</asp:Content>
