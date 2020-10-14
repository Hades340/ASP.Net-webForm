<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="ThemSP.aspx.cs" Inherits="JustShop.admin.Views.ThemSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
                    <h1 class="mt-4">Loại sản phẩm</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Thêm loại sản phẩm</li>
                    </ol>
                    <div class="mb-4">
                        <div>
                             <asp:Label ID="lbThanhcong" runat="server" CssClass="text-primary" ></asp:Label><br />
                            <asp:Label ID="lbThatBai" runat="server" CssClass="text-secondary"></asp:Label> <br />
                            <div class="form-group">
                                <label for="">Tên sản phẩm: </label>
                                <asp:TextBox runat="server" ID="txtTensp" CssClass="form-control" placeholder="Tên sản phẩm" aria-describedby="helpId"></asp:TextBox>
                                 <asp:Label runat="server" ID="lbErr1" CssClass="text-danger" ></asp:Label>                               
                            </div>
                            <div class="form-group">
                                <label for="">Mô tả : </label>
                                <asp:TextBox runat="server" ID="txtMoTa" CssClass="form-control" placeholder="Mô tả" TextMode="MultiLine" Rows="3"></asp:TextBox>
                               <asp:Label runat="server" ID="lbErr2" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Nội dung : </label>
                                <asp:TextBox runat="server" ID="txtNoiDung" CssClass="form-control" placeholder="Nội dung" TextMode="MultiLine" Rows="3"></asp:TextBox>
                               <asp:Label runat="server" ID="lbErr3" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Số lượng : </label>
                                <asp:TextBox runat="server" ID="txtSoLuong" CssClass="form-control" TextMode="Number" placeholder="Số lượng"></asp:TextBox>
                               <asp:Label runat="server" ID="lbErr4" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Giá tiền : </label>
                                <asp:TextBox runat="server" ID="txtGiaTien" CssClass="form-control" TextMode="Number" placeholder="Giá tiền"></asp:TextBox>
                               <asp:Label runat="server" ID="lbErr5" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Loại sản phẩm : </label> <br />
                               <asp:DropDownList runat="server" ID="drlLoaisp" style="width:200px;height:30px; border:1px solid gray">
                                  
                               </asp:DropDownList>
                               <asp:Label runat="server" ID="Label1" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Hạn sử dụng : </label>
                                <asp:TextBox runat="server" ID="txtHanSuDung" CssClass="form-control" TextMode="date" placeholder="Giá tiền"></asp:TextBox>
                               <asp:Label runat="server" ID="Label2" CssClass="text-danger"></asp:Label>
                            </div>
                             
                            <div class="form-group">
                                <label for="">Hình ảnh cho sản phẩm</label>
                               <asp:FileUpload ID="image" runat="server" CssClass="form-control-file" aria-describedby="fileHelpId" />
                            </div>
                            <asp:Button runat="server" ID="btnThem"  CssClass="btn btn-primary" Text="Thêm loại sản phẩm" OnClick="btnThem_Click"/>
                            <br />
                           
                        
                        </div>
                        <br />
                        
                        <asp:HyperLink runat="server" ID="back" NavigateUrl="~/admin/Views/sanpham/SanPham.aspx" Text="Trở về"></asp:HyperLink>
                    </div>
                </div>
   
</asp:Content>
