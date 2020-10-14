<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="JustShop.admin.Views.loginss.ChangePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">Đổi mật khẩu</h3>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <div class="form-row">
                                             <div class="col-md-3">
                                                
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputFirstName">Mật khẩu hiện tại</label>  
                                                    <asp:TextBox CssClass="form-control py-4" runat="server" id="txtMKhientai"  placeholder="Mật khẩu hiện tại" ></asp:TextBox>
                                                    <asp:Label ID="label1" CssClass="text-danger" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-3">
                                                
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputFirstName">Mật khẩu mới</label>
                                                     <asp:TextBox CssClass="form-control py-4" runat="server" id="txtMatKhauMoi"  placeholder="Nhập mật khẩu" ></asp:TextBox>
                                                    <asp:Label ID="label3" CssClass="text-danger" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-3">
                                               
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputPassword">Nhập lại mật khẩu</label>
                                                    <asp:TextBox runat="server" ID="txtMatKhauNhapLai"  placeholder="Nhập mật khẩu của bạn" CssClass="form-control py-4" ></asp:TextBox>
                                                    <asp:Label ID="label5" CssClass="text-danger" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                               
                                            </div>
                                        </div>
                                        <div class="form-group mt-4 mb-0 form-row">
                                            <div class="col-md-3">
                                               
                                            </div>
                                            <div class="col-md-6">
                                                 <asp:Button ID="btnThem" runat="server" CssClass="btn btn-primary btn-block" OnClick="btnThem_Click" Text="Đổi mật khẩu " />                                        
                                            </div>
                                          
                                           <div class="col-md-3">
                                               
                                            </div>
                                            
                                        </div>
       
                                          <asp:Label ID="lbDangKySai" CssClass="text-danger" runat="server"></asp:Label>
                                         <asp:Label ID="lbThanhCong" CssClass="text-success" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <div class="card-footer text-center">
                                    <div class="small"><asp:HyperLink ID="Login" runat="server" Text=">Have an account? Go to index" NavigateUrl="~/admin/Views/index.aspx"></asp:HyperLink></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
</asp:Content>
