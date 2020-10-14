<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucMenu.ascx.cs" Inherits="JustShop.Client.ucMenu" %>
 <h4 class=" font-weight-bold "> Danh mục</h4>
<asp:Repeater runat="server" ID="rpDanhMuc">
    <ItemTemplate>
        <ul class="nav">
            <li class="nav-item DMli">
                <asp:HyperLink runat="server" CssClass="nav-link ali" NavigateUrl='<%#"~/Client/Views/SanPham/sanphamChon.aspx?MaLoai=" +Eval("MaLoai")%>'   Text='<%# Eval("TenLoai") %>'></asp:HyperLink> 
            </li>    
        </ul>
    </ItemTemplate>
</asp:Repeater>
