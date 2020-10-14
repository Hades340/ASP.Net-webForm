<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="JustShop.admin.Views.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Page Title - SB Admin</title>
    <link href="~/admin/template/css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">Login</h3>
                                </div>
                                <div class="card-body">
                                    <div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Account</label>
                                                <asp:Textbox runat="server" class="form-control py-4" ID="txtTaiKhoan"  placeholder="Nhập tài khoản của bạn"> </asp:Textbox> 
                                                <asp:Label runat="server" CssClass="text-danger" ID="lbTaiKhoan"></asp:Label>
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">Password</label>
                                                <asp:Textbox runat="server" class="form-control py-4" ID="txtMatKhau" TextMode="Password" placeholder="Nhập mật khẩu của bạn"> </asp:Textbox> 
                                                    <asp:Label runat="server" CssClass="text-danger" ID="lbMatKhau" ></asp:Label>
                                            </div>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" />
                                                    <label class="custom-control-label" for="rememberPasswordCheck">Remember password</label>
                                                </div>
                                            </div>
                                                <asp:Label runat="server" CssClass="text-danger" ID="Label3"></asp:Label>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="password.html">Forgot Password?</a>
                                                <asp:Button runat="server" ID="Button1" class="btn btn-primary" Text="Đăng nhập" Onclick="Button1_Click" />
                                            </div>

                                        </div>
                                </div>
                                <div class="card-footer text-center">
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
          
        </div>
        <div id="layoutAuthentication_footer">
            <footer class="py-4 mt-auto" style="background-image: url(~/admin/template/img/background.gif);">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted" style="color: white;">Just shop for healthy</div>
                        <div>
                            <a href="#" style="color: white;">admin</a> &middot;
                            <a href="#" style="color: black;">you need help</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="~/admin/template/js/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="~/admin/template/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="~/admin/template/js/scripts.js"></script>
        
    </form>
</body>
</html>
