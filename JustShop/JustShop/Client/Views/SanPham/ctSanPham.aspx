<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Layout_2.Master" AutoEventWireup="true" CodeBehind="ctSanPham.aspx.cs" Inherits="JustShop.Client.Views.SanPham.ctSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <!-- Start body -->
    <div class="container boody">
        <div class="TieuDe bg-white mt-3 d-flex">
            <img class="hm" src="/Assest/img/Home.png" alt="">
            <p class="text-uppercase font-weight-light Name"> Sản phẩm</p>
            <img class="hms" src="/Assest/img/arrowLeft.png" alt="">
            <p class="text-uppercase font-weight-bold Name">Chi tiết sản phẩm</p>
        </div>
        <div class="row mt-3">
            <div class="col-sm-12 mt-3">
                <div class="row" id="sp-1">
                    <asp:Repeater runat="server" ID="rpCTSanPham">
                        <ItemTemplate>
                            <div class="col-sm-3" style="margin-left: 65px;">
                                <asp:Image runat="server" ID="anhsp" ImageUrl='<%# "~/Assest/img/"+Eval("HinhAnh").ToString() %>'  style="width:290px;" />
                            </div>
                            <div class="col-sm-4 thangiua">
                                <h3 class="tensp mb-3 tt"><%# Eval("Tensp").ToString() %></h3>
                                <div class="d-flex  justify-content-between mb-2">
                                    <p class="font-weight-bold ">Giá khuyến mãi:</p>
                                    <asp:Label runat="server" CssClass="gia" ID="lbGia" Text='<%#Eval("GiaTien").ToString() %>'></asp:Label>
                                   
                                </div>
                                <p class="font-weight-bold">Mô tả:</p>
                                <p class="ndct"><%# Eval("MoTa").ToString() %></p>
                            </div>
                            <div class="col-sm-4">
                                <asp:TextBox runat="server" ID="txtSoLuong" CssClass="nhap" TextMode="Number" OnTextChanged="txtSoLuong_TextChanged" ></asp:TextBox><br />
                              
                                 <asp:Button runat="server" ID="btnThemGio" OnClick="btnThemGio_Click" OnCommand="btnThemGio_Command" CommandArgument='<%#Eval("MaSp") %>' CssClass="btn btn-success mt-3 themsp font-weight-bold adds" Text="Thêm vào giỏ" /><br />
                            
                                <button class="btn btn-danger mt-3 muasp font-weight-bold">Mua ngay</button>
                            </div>
                            <div class="CTSP mt-3" style="margin-left: 65px;">
                                <ul class="nav nav-tabs" id="navId">
                                    <li class="nav-item">
                                        <a href="#tab1Id" class="nav-link active font-weight-bold">Chi tiết </a>
                                    </li>
                                </ul>
                                <div class="cttin ml-3 mt-2">
                                    <%# Eval("NoiDung").ToString()%>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    <div class="splienquan mt-3" style="margin-left: 65px;">
                        <h4 class="text-center font-weight-bold mb-3">SẢN PHẨM LIÊN QUAN</h4>
                        
                        <div class="row ml-3">
                            <asp:Repeater runat="server" ID ="rpSPLienQuan">
                                <ItemTemplate>
                                  <div class="card text-left item ml-3">
                                     <asp:Image runat="server"  ImageUrl='<%#"/Assest/img/"+Eval("HinhAnh").ToString() %>' ID="anhsp" CssClass="card-img-top picture"/>
                      
                                <div class="card-body bd" style="margin-top:-20px">
                                    <asp:HyperLink runat="server" NavigateUrl= '<%#"~/Client/Views/SanPham/ctSanPham.aspx?MaSP="+Eval("MaSp").ToString() %>'>
                                                      <asp:Label style="font-size:23px;" runat="server" ID="Tensp" CssClass="card-title title tt" Text='<%# Eval("Tensp").ToString() %>'></asp:Label>
                                        </asp:HyperLink>
                                     <asp:HyperLink runat="server" NavigateUrl='<%#"~/Client/Views/SanPham/ctSanPham.aspx?MaSP="+Eval("MaSp").ToString() %>'>
                                                    <p class="card-text price mt-1">
                                                <asp:Label runat="server" CssClass="gia" ID ="lbGiaTien" Text='<%# Eval("GiaTien").ToString() %>'></asp:Label>
                                                
                                                Đ</p>
                                        </asp:HyperLink>
                                      <asp:HyperLink runat="server" NavigateUrl='<%#"~/Client/Views/SanPham/ctSanPham.aspx?MaSP="+Eval("MaSp").ToString() %>'>
                                                   <p class="card-text information"><%# Eval("MoTa").ToString() %>
                                            </p>
                                        </asp:HyperLink>

                                </div>
                                  <asp:Button runat="server" ID="btnThemGio" CssClass="add adds" OnClick="btnThemGio_Click" Text="Thêm vào giỏ" />
                                        <asp:Label runat="server" ID="Masp" Text='<%# Eval("MaSp") %>' style="opacity:0;"></asp:Label>
                            </div>

                                </ItemTemplate>
                            </asp:Repeater>
                          
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End body -->
</asp:Content>
