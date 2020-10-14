<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="SuaSp.aspx.cs" Inherits="JustShop.admin.Views.SuaSp" %>
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
                            <div class="form-group">
                                <label for="">Tên loại sản phẩm: </label>
                                <asp:TextBox runat="server" ID="txtTenLoai" CssClass="form-control" placeholder="Tên loại sản phẩm" aria-describedby="helpId"></asp:TextBox>
                                 <asp:Label runat="server" ID="lbErr1" CssClass="text-danger" ></asp:Label>                               
                            </div>
                            <div class="form-group">
                                <label for="">Trích dẫn : </label>
                                <asp:TextBox runat="server" ID="txtTrichDan" CssClass="form-control" placeholder="Trích dẫn" TextMode="MultiLine" Rows="3"></asp:TextBox>
                               <asp:Label runat="server" ID="lbErr2" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Hình ảnh cho sản phẩm</label><br />
                               
                                <asp:Image runat="server" ID="anhcu" CssClass="mt-3 mb-3" style="width:250px" />
                               <asp:FileUpload ID="image" runat="server" CssClass="form-control-file" aria-describedby="fileHelpId" />
                            </div>
                            <asp:Button runat="server" ID="btnThem"  CssClass="btn btn-primary" Text="Xác nhận sửa" OnClick="btnThem_Click"/>
                            <br />
                            <asp:Label ID="lbThanhcong" runat="server" CssClass="text-primary" ></asp:Label><br />
                            <asp:Label ID="lbThatBai" runat="server" CssClass="text-secondary"></asp:Label> <br />
                        
                        </div>
                        <asp:HyperLink runat="server" ID="back" NavigateUrl="~/admin/Views/LoaiSanPham/LoaiSanPham.aspx" Text="Trở về"></asp:HyperLink>
                    </div>
                </div>
   
</asp:Content>
