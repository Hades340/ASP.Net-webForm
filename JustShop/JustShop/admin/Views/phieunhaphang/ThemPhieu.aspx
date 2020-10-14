<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="ThemPhieu.aspx.cs" Inherits="JustShop.admin.Views.phieunhaphang.ThemPhieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-fluid">
                    <h1 class="mt-4">Phiếu nhập hàng</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Thêm phiếu</li>
                    </ol>
                    <div class="mb-4">
                     
                        <div>
                            <div class="form-group">
                                <label for="">Số lượng nhập: </label>
                                <asp:TextBox runat="server" ID="txtSoLuongNhap" CssClass="form-control" placeholder="Số lượng nhập" TextMode="number" aria-describedby="helpId"></asp:TextBox>
                                 <asp:Label runat="server" ID="lbErr1" CssClass="text-danger" ></asp:Label>                               
                            </div>
                            <div class="form-group">
                                <label for="">Tổng tiền : </label>
                                <asp:TextBox runat="server" ID="txtTongTien" CssClass="form-control" placeholder="Tổng tiền" TextMode="number"></asp:TextBox>
                               <asp:Label runat="server" ID="lbErr2" CssClass="text-danger"></asp:Label>
                            </div>
      
                            <asp:Button runat="server" ID="btnThem"  CssClass="btn btn-primary ml-3" Text="Thêm phiếu nhập" OnClick="btnThem_Click"/>
                            <br />
                            <asp:Label ID="lbThanhcong" runat="server" CssClass="text-primary" ></asp:Label><br />
                            <asp:Label ID="lbThatBai" runat="server" CssClass="text-secondary"></asp:Label> <br />
                          
                            
                        
                        </div>
                       
                      
                             <div>
                         
                      
                        <asp:HyperLink runat="server" ID="back" NavigateUrl="~/admin/Views/phieunhaphang/PhieuNhap.aspx" Text="Trở về"></asp:HyperLink>
                    </div>
                </div>
    </div>
</asp:Content>
