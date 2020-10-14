<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="ThemCT.aspx.cs" Inherits="JustShop.admin.Views.CTPhieuNhap.ThemCT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
                    <h1 class="mt-4">Thêm thông tin</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Thêm thông tin phiếu nhập</li>
                    </ol>
                    <div class="mb-4">
                        <div>
                             <asp:Label ID="lbThanhcong" runat="server" CssClass="text-primary" ></asp:Label><br />
                            <asp:Label ID="lbThatBai" runat="server" CssClass="text-secondary"></asp:Label> <br />
                            <div class="form-group">
                                <label for="">Loại sản phẩm : </label> <br />
                               <asp:DropDownList runat="server" ID="drlLoaisp" style="width:200px;height:30px; border:1px solid gray" AutoPostBack="true" OnSelectedIndexChanged="drlLoaisp_SelectedIndexChanged">
                                  
                               </asp:DropDownList>
                            <div class="form-group">
                                <label for="">Tên sản phẩm: </label> <br />
                                
                               <asp:DropDownList runat="server" ID="drSanPham" style="width:200px;height:30px; border:1px solid gray" OnLoad="drSanPham_Load">
                                  
                               </asp:DropDownList>                            
                            </div>
                            <div class="form-group">
                                <label for="">Số lượng : </label>
                                <asp:TextBox runat="server" ID="txtSoLuong" CssClass="form-control" placeholder="Số lượng" TextMode="number"></asp:TextBox>
                               <asp:Label runat="server" ID="lbErr2" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Giá nhập : </label>
                                <asp:TextBox runat="server" ID="txtGiaNhap" CssClass="form-control" placeholder="Nội dung" TextMode="number"></asp:TextBox>
                               <asp:Label runat="server" ID="lbErr3" CssClass="text-danger"></asp:Label>
                            </div>
                               <asp:Label runat="server" ID="Label1" CssClass="text-danger"></asp:Label>
                            </div>
                   
                            <asp:Button runat="server" ID="btnThem"  CssClass="btn btn-primary" Text="Thêm thông tin" OnClick="btnThem_Click"/>
                            <br />
                           
                        
                        </div>
                        <br />
                        
                        <asp:HyperLink runat="server" ID="back" NavigateUrl="~/admin/Views/phieunhaphang/PhieuNhap.aspx" Text="Trở về"></asp:HyperLink>
                    </div>
                </div>
        <div class="row"> 
            <div class="col-3">
            </div>
            <div class="col-4"></div>
            <div class="col-5">
                 <asp:HyperLink runat="server" Text="Loại sản phẩm mới? Thêm loại sản phẩm" NavigateUrl="~/admin/Views/LoaiSanPham/ThemLoai.aspx"></asp:HyperLink> <br />
                <asp:HyperLink runat="server" Text="Sản phẩm mới? Thêm sản phẩm" NavigateUrl="~/admin/Views/sanpham/ThemSP.aspx"></asp:HyperLink>
            </div>
        </div> 

</asp:Content>
