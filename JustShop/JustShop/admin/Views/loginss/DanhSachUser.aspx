<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="DanhSachUser.aspx.cs" Inherits="JustShop.admin.Views.loginss.DanhSachUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <h1 class="mt-4">Thành viên quản lý</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Danh sách nhân viên</li>
    </ol>
    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i> Bảng danh sách
        </div>
        <asp:GridView AutoGenerateColumns="false" ID ="dgvUser" runat="server" CssClass="table table-striped" AllowPaging="true" PageSize="10">
            <Columns>
                <asp:BoundField DataField="TaiKhoan1" HeaderText="Tài khoản" />
                <asp:BoundField DataField="TenNV" HeaderText="Tên nhân viên" />
                <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" />
                <asp:TemplateField>
                    <HeaderTemplate>

                    </HeaderTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>
</asp:Content>
