<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="AddLoai.aspx.cs" Inherits="JustShop.admin.Views.AddLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
                    <h1 class="mt-4">Loại sản phẩm</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Thêm loại sản phẩm</li>
                    </ol>
                    <div class="mb-4">
                        <div>
                            <div class="form-group">
                                <label for="">Tên loại sản phẩm: </label>
                                <asp:TextBox ID="txtTenLoai" runat="server" class="form-control" placeholder="Tên loại sản phẩm" aria-describedby="helpId"></asp:TextBox>
                                <asp:Label ID="lbloi1" runat="server" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Trích dẫn : </label>
                                <asp:TextBox ID="txtTrichDan" runat="server" CssClass="form-control" placeholder="Trích dẫn" aria-describedby="helpId"></asp:TextBox>
                                <asp:Label ID="lbLoi2" runat="server" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Hình ảnh cho sản phẩm</label>
                                <asp:FileUpload runat="server" CssClass="form-control-file" ID ="UploadFile" aria-describedby="fileHelpId" />
                                <small id="fileHelpId" class="form-text text-muted">Help text</small>
                            </div>
                              <asp:Label ID="Label1" runat="server" CssClass="text-danger"></asp:Label>
                            <asp:Button runat="server" ID ="btnThem" CssClass="btn btn-primary" OnClick="btnThem_Click" Text="Thêm loại sản phẩm"></asp:Button>
                        </div>
                    </div>
                </div>
</asp:Content>
