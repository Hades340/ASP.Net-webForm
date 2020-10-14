<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="ThemTinTuc.aspx.cs" Inherits="JustShop.admin.Views.TinTuc.ThemTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
                    <h1 class="mt-4">Tin tức</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Thêm tin tức</li>
                    </ol>
                    <div class="mb-4">
                        <div>
                            <div class="form-group">
                                <label for="">Tiêu đề tin: </label>
                                <asp:TextBox runat="server" ID="txtTieuDe" CssClass="form-control" placeholder="Tiêu đề" aria-describedby="helpId"></asp:TextBox>
                                 <asp:Label runat="server" ID="lbErr1" CssClass="text-danger" ></asp:Label>                               
                            </div>
                            <div class="form-group">
                                <label for="">Nội dung: </label>
                                <asp:TextBox runat="server" ID="txtNoiDung" CssClass="form-control" placeholder="Nội dung" TextMode="MultiLine" Rows="3"></asp:TextBox>
                               <asp:Label runat="server" ID="lbErr2" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="">Hình ảnh </label>
                               <asp:FileUpload ID="image" runat="server" CssClass="form-control-file" aria-describedby="fileHelpId" />
                                
                            </div>
                            <asp:Button runat="server" ID="btnThem"  CssClass="btn btn-primary" Text="Thêm tin tức" OnClick="btnThem_Click"/>
                            <br />
                          <asp:Label ID="lbThanhcong" runat="server" CssClass="text-primary" ></asp:Label><br />
                            <asp:Label ID="lbThatBai" runat="server" CssClass="text-danger"></asp:Label> <br />
                        
                        </div>
                        <asp:HyperLink runat="server" ID="back" NavigateUrl="~/admin/Views/TinTuc/TinTuc.aspx" Text="Trở về"></asp:HyperLink>
                    </div>
                </div>
   
</asp:Content>
