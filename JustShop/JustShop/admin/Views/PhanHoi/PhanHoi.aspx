<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="PhanHoi.aspx.cs" Inherits="JustShop.admin.Views.PhanHoi.PhanHoi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
            <h1 class="mt-4">Phản hồi</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Thông tin phản hổi</li>
            </ol>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table mr-1"></i> Bảng danh sách
                </div>
                <asp:GridView runat="server" ID="dgvPhanHoi" AutoGenerateColumns="false" PageSize="10" CssClass="table table-striped" AllowPaging="true">
                    <Columns>
         
                        <asp:BoundField DataField="Ten" HeaderText="Tên khách hàng" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="DienThoai" HeaderText="Số điện thoại" />
                        <asp:BoundField DataField="TieuDePhanHoi" HeaderText="Tiêu đề" />
                        <asp:BoundField DataField="NoiDungPhanHoi" HeaderText="Nội dung phản hồi" />
                    </Columns>
                </asp:GridView>
            </div>
    </div>
</asp:Content>
