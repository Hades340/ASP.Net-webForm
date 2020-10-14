<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Layout_2.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="JustShop.Client.Views.PhanHoi.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <!-- Start body -->
    <div class="container boody">
        <div class="TieuDe bg-white mt-3 d-flex">
            <img class="hm" src="/Assest/img/Home.png" alt="">
            <img class="hms" src="/Assest/img/arrowLeft.png" alt="">
            <p class="text-uppercase font-weight-bold Name">Liên hệ</p>
        </div>
        <div class="row mt-3">
            <div class="col-sm-12 ">
                <h4 class=" font-weight-bold text-center mb-3"> Liên hệ</h4>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="form-group container" >
                             <asp:Label runat="server" ID="lbThatBai" CssClass="text-danger"></asp:Label><br />
                            <asp:Label runat="server" ID="lbThanhCong" CssClass="text-success"></asp:Label><br />
     
                            <label for="">Full name / Họ tên</label>
                            <asp:TextBox runat="server" ID="txtHoTen" CssClass="form-control"></asp:TextBox>
                            <asp:Label runat="server" ID="lbHoTen"></asp:Label>
                            <br>
                            <label for="">Email</label>
                               <asp:TextBox runat="server" ID="txtEmail" placeholder="abcxyz@gmail.com" TextMode="Email" CssClass="form-control"></asp:TextBox>
                              <asp:Label runat="server" ID="lbEmail"></asp:Label>
                            <br>
                            <label for="">Telephone / Điện thoại </label>
                              <asp:TextBox runat="server" ID="txtSDT" placeholder="097365***" TextMode="Number" CssClass="form-control"></asp:TextBox>
                              <asp:Label runat="server" ID="lbSDT"></asp:Label>

                            <small id="helpId" class="text-muted">Help text</small><br><br>
                            <label for="">Tiêu đề</label>
                                <asp:TextBox runat="server" ID="txtTieuDe" placeholder="Tiêu đề"  CssClass="form-control"></asp:TextBox>
                              <asp:Label runat="server" ID="lbTieuDe"></asp:Label>
                            <br>
                            <label for="">Content / Nội dung</label>
                              <asp:TextBox runat="server" ID="txtNoiDung" TextMode="MultiLine" Rows="3" placeholder="Nội dung "  CssClass="form-control"></asp:TextBox><br />
                              <asp:Label runat="server" ID="lbNoiDung"></asp:Label>
                            <br />
                               <asp:Button runat="server" ID="btnThem" OnClick="btnThem_Click" CssClass="btn btn-primary" Text="Gửi liên hệ" />
                           

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End body -->
</asp:Content>
