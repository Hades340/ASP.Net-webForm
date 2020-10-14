<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="JustShop.admin.Views.loginss.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Đăng ký</title>
    <link href="~/admin/template/css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div id="layoutAuthentication">
        <div id="layoutAuthentication_content" style="background-color="blue"">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">Thêm nhân viên</h3>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputFirstName">Tên nhân viên</label>  
                                                    <asp:TextBox CssClass="form-control py-4" runat="server" id="txtTen"  placeholder="Tên nhân viên" ></asp:TextBox>
                                                    <asp:Label ID="label1" CssClass="text-danger" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputLastName">Tên tài khoản</label>
                                                     <asp:TextBox CssClass="form-control py-4" runat="server" id="txtTenTaiKhoan"  placeholder="Tên tài khoản" ></asp:TextBox>
                                                    <asp:Label ID="label2" CssClass="text-danger" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputFirstName">Số điện thoại</label>
                                                     <asp:TextBox CssClass="form-control py-4" runat="server" id="txtSoDienThoai" TextMode="Number" placeholder="Số điện thoại" ></asp:TextBox>
                                                    <asp:Label ID="label3" CssClass="text-danger" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputLastName">Địa chỉ</label>
                                                    <asp:TextBox CssClass="form-control py-4" runat="server" id="txtDiaChi" placeholder="Địa chỉ" ></asp:TextBox>
                                                  <asp:Label ID="label4" CssClass="text-danger" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputPassword">Password</label>
                                                    <asp:TextBox runat="server" ID="txtMatKhau"  placeholder="Nhập mật khẩu của bạn" CssClass="form-control py-4" ></asp:TextBox>
                                                    <asp:Label ID="label5" CssClass="text-danger" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputConfirmPassword">Confirm Password</label>
                                                    <asp:TextBox runat="server" ID="txtMatKhau1" CssClass="form-control py-4"  placeholder="Nhập lại mật khẩu" ></asp:TextBox>
                                                   <asp:Label ID="label6" CssClass="text-danger" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group mt-4 mb-0">
                                            <asp:Button ID="btnThem" runat="server" CssClass="btn btn-primary btn-block" OnClick="btnThem_Click" Text="Tạo tài khoản" />                                        
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
        </div>
        <div id="layoutAuthentication_footer">
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2020</div>
                        <div>
                            <a href="#">Privacy Policy</a> &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    </form>
</body>
</html>
