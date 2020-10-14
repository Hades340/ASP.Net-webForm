<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Layout_2.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="JustShop.Client.Views.GioHang.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <!-- Start body -->
    <div class="container TinTuc">
        <div class="TieuDe bg-white mt-3 d-flex">
            <img class="hm" src="/Assest/img/Home.png" alt="">
            <img class="hms" src="/Assest/img/arrowLeft.png" alt="">
            <p class="text-uppercase font-weight-bold Name">Giỏ hàng</p>
        </div>
        <div class="row mt-3 mb-3">
         <div class="col-sm-4  bodyRight">
                        <br>
                        <br>
                        <asp:Label runat ="server" CssClass="text-success" ID="lbThanhCong"></asp:Label>
                        <asp:Label runat ="server" CssClass="text-danger" ID="lbThatBai"></asp:Label>
                        <div>
                            <label for="">Full name / Họ tên</label>
                            <asp:TextBox runat="server" ID="txtHoTen" CssClass="form-control" aria-describedby="helpId"></asp:TextBox>
                             <asp:Label runat="server" ID="lbTen" CssClass="text-danger"></asp:Label><br />
                            <label class="mt-1" for="">Email</label>
                            <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" placeholder="abcxyz@gmail.com" CssClass="form-control" aria-describedby="helpId"></asp:TextBox>
                              <asp:Label runat="server" ID="lbEmail" CssClass="text-danger"></asp:Label><br />
                            <label class="mt-1" for="">Telephone / Điện thoại </label>
                             <asp:TextBox runat="server" ID="txtDienThoai" TextMode="Number" placeholder="097365***" CssClass="form-control" aria-describedby="helpId"></asp:TextBox>
                              <asp:Label runat="server" ID="lbDienThaoi" CssClass="text-danger"></asp:Label><br />
                            <label class="mt-1" for="">Địa chỉ</label>
                             <asp:TextBox runat="server" ID="txtDiaChi" placeholder="Hà Nội" CssClass="form-control" aria-describedby="helpId"></asp:TextBox>
                              <asp:Label runat="server" ID="Label4" CssClass="text-danger"></asp:Label><br />
                            <br><br>

                            <label for="">Tổng tiền:</label>
                            <asp:Label runat="server" ID="lbTongTien" CssClass="font-weight-bold "></asp:Label>
                            <br>
                            <br>
                            <asp:Button runat="server" ID="btnThanhToan" CssClass="btn btn-outline-primary" OnClick="btnThanhToan_Click" Text="Thanh toán" />
                           
                        </div>
                    </div>
            <div class="col-sm-7 bodyLeft mb-3 ml-3">
                <h5 class="text-uppercase font-weight-bold text-center mb-3">Sản phẩm của bạn</h5>
               <asp:GridView runat="server" ID="dgvGioHang" AutoGenerateColumns="false" PageSize="10" AllowPaging="true" CssClass="table table-striped">
                   <Columns>
                       <asp:BoundField DataField="Tensp" HeaderText="Tên sản phẩm" />
                       <asp:TemplateField>
                           <HeaderTemplate>
                               <asp:Label runat="server" Text="Ảnh sản phẩm"></asp:Label>
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Image runat="server" ImageUrl='<%# "~/Assest/img/" + Eval("HinhAnh1") %>' style="width:150px"/>
                           </ItemTemplate>
                       </asp:TemplateField>
                      <asp:TemplateField>
                           <HeaderTemplate>
                               <asp:Label runat="server" Text="Số lượng"></asp:Label>
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:TextBox runat="server" ID="txtSoLuong" TextMode="Number" Text=<%# Eval("Soluong") %> OnTextChanged="txtSoLuong_TextChanged" ></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>
                         <asp:BoundField DataField="giatien" HeaderText="Giá tiền" />
                        <asp:BoundField DataField="Tongtien" HeaderText="Tổng tiền" />
                        <asp:TemplateField>
                           <HeaderTemplate>
                               <asp:Label runat="server" Text="Chức năng"></asp:Label>
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Button runat="server" ID="btnXoa" OnCommand="btnXoa_Command" CommandArgument='<%# Eval("MaSp1") %>' CssClass="btn btn-danger" Text="Xóa" />
                           </ItemTemplate>
                       </asp:TemplateField>
                      
                   </Columns>
               </asp:GridView>
            </div>
           

        </div>
    </div>
    <br />
    <br />
    <!-- End body -->
</asp:Content>
