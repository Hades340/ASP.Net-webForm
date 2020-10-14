<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Layout_2.Master" AutoEventWireup="true" CodeBehind="sanphamAll.aspx.cs" Inherits="JustShop.Client.Views.SanPham.sanphamAll" %>

<%@ Register Src="~/Client/ucMenu.ascx" TagPrefix="uc1" TagName="ucMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

         <div class="container boody">
        <div class="TieuDe bg-white mt-3 d-flex">
            <img class="hm" src="/Assest/img/Home.png" alt="">
            <img class="hms" src="/Assest/img/arrowLeft.png" alt="">
            <p class="text-uppercase font-weight-bold Name">Sản phẩm</p>
        </div>
        <div class="row mt-3">
            <div class="col-sm-3 bodyLeft">
                <uc1:ucMenu runat="server" ID="ucMenu" />
                </div>
            <div class="col-sm-8 bodyRight">
                <h4 class="text-uppercase font-weight-bold text-center "> SẢN PHẨM</h4>
                <div class="row cactren">
                    <asp:Repeater runat="server" ID="rpSanPham">
                         <ItemTemplate>
                                <!-- một phần tin -->
                               
                            <div class="card text-left item" id="sp-1">
                            <asp:Image runat="server" ImageUrl='<%#"/Assest/img/"+Eval("HinhAnh").ToString() %>' ID="anhsp" CssClass="card-img-top picture"/>
                            <div class="card-body bd" style="margin-top:-20px">
                                <asp:HyperLink runat="server" NavigateUrl= '<%#"~/Client/Views/SanPham/ctSanPham.aspx?MaSP="+Eval("MaSp").ToString() %>'>
                                    <asp:Label style="font-size:25px;" runat="server" ID="Tensp" CssClass="card-title title tt" Text='<%# Eval("Tensp").ToString() %>'></asp:Label>
            
                                </asp:HyperLink>
                                <asp:HyperLink runat="server" NavigateUrl='<%#"~/Client/Views/SanPham/ctSanPham.aspx?MaSP="+Eval("MaSp").ToString() %>'>
                                            <p class="card-text price mt-2">
                                                <asp:Label runat="server" CssClass="gia" ID ="lbGiaTien" Text='<%# Eval("GiaTien").ToString() %>'></asp:Label>
                                                
                                                Đ</p>
                                </asp:HyperLink>
                                <asp:HyperLink runat="server" NavigateUrl='<%#"~/Client/Views/SanPham/ctSanPham.aspx?MaSP="+Eval("MaSp").ToString() %>'>
                                            <p class="card-text information"><%# Eval("MoTa").ToString() %>
                                    </p>
                                </asp:HyperLink>
                            </div>
                                <asp:Button runat="server" ID="btnThemGio" OnClick="btnThemGio_Click" OnCommand="btnThemGio_Command" CommandArgument='<%# Eval("MaSp") %>' CssClass="add adds" Text="Thêm vào giỏ" />
                                   
                        </div>
                               
                                </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
