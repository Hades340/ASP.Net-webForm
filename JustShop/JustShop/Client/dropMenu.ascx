<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="dropMenu.ascx.cs" Inherits="JustShop.Client.Views.dropMenu" %>
<ul class=" drop">
<asp:Repeater runat="server" ID="rpMenu">
    <ItemTemplate>
            <li class="Main1"> 
                <asp:HyperLink runat="server" NavigateUrl='<%#"~/Client/Views/SanPham/sanphamChon.aspx?Maloai="+Eval("MaLoai").ToString() %>'  Text='<%#Eval("TenLoai").ToString() %>' style="color:#e75a39!important"></asp:HyperLink>
            </li>
    </ItemTemplate>
</asp:Repeater>
 </ul>