<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Layout_2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JustShop.Client.Views.Trangchu.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <!-- start slide -->
    <div id="carouselId" class="carousel slide Down" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselId" data-slide-to="0" class="active"></li>
            <li data-target="#carouselId" data-slide-to="1"></li>
            <li data-target="#carouselId" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active Slide">
                <img data-src="auto/#777:#555/text:First slide" src="/Assest/img/sli1.png" alt="First slide">
            </div>
            <div class="carousel-item Slide">
                <img data-src="auto/#666:#444/text:Second slide" src="/Assest/img/sli1.png" alt="Second slide">
            </div>
            <div class="carousel-item Slide">
                <img data-src="auto/#666:#444/text:Third slide" src="/Assest/img/sli1.png" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselId" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselId" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- end slide -->
    
<div class="than">
     <div class="Body1 mt-1">
            <div class="container">
                <div class="row ">
                    <div style="margin-left:78px; width:20px; height:20px"></div>
                    <asp:Repeater runat ="server" ID="rpLoaiSanPham">
                        <ItemTemplate>
                             <div class="col-sm-3 right">
                        <div class="big">
                            <img class="l1" src="/Assest/img/Hinh1.png" alt="">
                            <div class="new mt-3 mb-3">
                                <h4 class="text-center title"><%# Eval("TenLoai").ToString() %> </h4>
                                <div class="info">
                                    <asp:Image runat="server"  style="width:271px;height:176px" ImageUrl='<%# "/Assest/img/"+ Eval("AnhTieuBieu").ToString() %>' />
                                   
                                    <div class="txt mt-3" style="overflow:hidden"><%# Eval("TrichDan").ToString() %> </div>
                                    <button class="more text-center ">
                                        <i>
                                        <asp:HyperLink runat="server" style="color:white;" NavigateUrl='<%#"~/Client/Views/SanPham/sanphamChon.aspx?MaLoai="+Eval("MaLoai").ToString() %>' Text="Xem thêm" >
                                        </asp:HyperLink>
                                        </i>
                                    </button>
                                </div>

                            </div>
                            <img class="l2" src="/Assest/img/hinh2.png" alt="">
                        </div>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                   
                    <div class="col-sm-1"></div>
                </div>
            </div>
        </div>
        <!-- bắt đầu phần thân thứ 2 -->
        <div class="Body2">
            <div class="container ">
                <div class="row ">
                    <div class="col-sm-1 ">

                    </div>
                    <div class="col-sm-10 top bg-white">
                        <div class=" FL mr-3">
                            <div class="media-body">
                                <h5 class="title tin">Giới thiệu sản phẩm</h5>
                                <p class="text font-weight-light">Giới thiệu về một số thông tin về doanh nghiệp của bạn ở đây. Bạn có thể chỉnh sửa nội dung này từ Theme -Options -> Trang chủ -> Giới thiệu / Cài đặt lời chứng thực . Tuyệt vời không phải là không đáng tin cậy trong nền
                                    kinh tế thị trường tự do. Lorem ipsum dolor ngồi amet, consect etuer adipisc trong elit, tự làm empsum dolor ngồi amet, con ở hendrerit vulputate velit tại sectetuer adipisc trong elit.</p>
                                <p class="text font-weight-light"><b>Bạn cũng có thể đặt một nút ở đây </b>để thúc giục khách truy cập biết thêm về bạn hoặc doanh nghiệp của bạn. Duis autem vel eum iriure dolor trong hendrerit trong vulputate velit esse molestie kết quả, vel illum dolore
                                    eu feugiat nulla facilisis tại vero eros et accums and et al iusto z dignissim qui blandit praesent luptatum zzril delenit augues duis dolore te feugait nulla facilisi. Duis autem vel eum iriure dolor hendrerit trong
                                    vulputate velit esse molestie consequat, vel illum dolore eu.</p>
                            </div>
                            <a class=" ml-3" href="#">
                                <img src="/Assest/img/about.jpg" alt="" style="width:342px;height:260px; border-radius: 5px;">
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-1 "></div>
                </div>
            </div>
        </div>
       <!-- bắt đầu phần thân thứ 3 -->
        <div class="Body1 Body3">
            <div class="container ">
                <h4 class="text-center pt-3 mb-3">SẢN PHẨM MỚI</h4>
                <div class="row ">
                    <div class="col-sm-1 mt-2">
                    </div>
                    <div class="col-sm-10 Chinh">
                        <div class="row">
                            <asp:Repeater runat="server" ID="rpSanPham">
                                <ItemTemplate>
                                     <!-- một phần tin -->
                                     <div class="col-sm-3">
                                    <div class="card text-left item" id="sp-1">
                                    <asp:Image runat="server" ID="AnhSp" ImageUrl='<%#"/Assest/img/"+Eval("HinhAnh").ToString() %>'  CssClass="card-img-top picture"/>
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
                                        <asp:Button runat="server" ID="btnThemGio" CssClass="add adds" OnCommand="btnThemGio_Command" CommandArgument='<%# Eval("MaSp")%>' Text="Thêm vào giỏ" />
                                        <asp:Label runat="server" ID="Masp" Text='<%# Eval("MaSp") %>' style="opacity:0;"></asp:Label>
                                </div>
                                </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                    </div>
                    <div class="col-sm-1 "></div>
                </div>
                <div class="SHIP">
                    <div class="media phanphoi">
                        <a class="d-flex anh" href="#">
                            <img src="/Assest/img/run.png" alt="">
                        </a>
                        <div class="media-body">
                            <h5 class="title tieude">Tùy chọn Phân phối </h5>
                            <p class="thongtin">Bất kỳ thông báo hoặc hướng dẫn nào mà khách hàng của bạn cần biết trước. Tuyệt vời không phải là không đáng tin cậy trong nền kinh tế thị trường tự do. Danh từ bố trí trong danh mục đầu tư, đường kính không phải là không có
                                trong euismod tincidunt.</p>
                        </div>

                    </div>
                    <div class="media phanphoi">
                        <a class="d-flex anh" href="#">
                            <img src="/Assest/img/git.png" alt="">
                        </a>
                        <div class="media-body">
                            <h5 class="title tieude">Quà tặng & Bao bì</h5>
                            <p class="thongtin">Chúng tôi có mức giá áp dụng cho gói quà đặc biệt với giá trị tuyệt vời! Tuyệt vời không phải là không đáng tin cậy trong nền kinh tế thị trường tự do. Danh từ bố trí trong danh mục đầu tư, đường kính không phải là không có
                                trong euismod tincidunt..</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end body -->
</asp:Content>
