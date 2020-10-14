<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Layout_2.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="JustShop.Client.Views.TinTuc.TinTuc" %>

<%@ Register Src="~/Client/ucMenu.ascx" TagPrefix="uc1" TagName="ucMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <div class="container TinTuc">
        <div class="TieuDe bg-white mt-3 d-flex">
            <img class="hm" src="/Client/template/img/Home.png" alt="">
            <img class="hms" src="/Client/template/img/arrowLeft.png" alt="">
            <p class="text-uppercase font-weight-bold Name">Tin tức</p>
        </div>
        <div class="row mt-3">
            <div class="col-sm-3 bodyLeft">
                <uc1:ucMenu runat="server" id="ucMenu" />
            </div>
            <div class="col-sm-7 bodyRight">
                <h4 class="text-uppercase font-weight-bold text-center mb-3"> Tin tức</h4>
                <asp:Repeater runat="server" ID="rpTinTuc">
                    <ItemTemplate>
                         <div class="nd ">
                    <div class=" text-left tt1">
                        <asp:HyperLink runat="server" NavigateUrl='<%#"~/Client/Views/TinTuc/ctTin.aspx?MaTin="+Eval("MaTin").ToString() %>'>
                            <asp:Image runat="server" ImageUrl='<%# "/Assest/img/"+ Eval("Anh").ToString()%>' CssClass="card-img-top" style="border:7px solid white;width:100%;height:190px" />
                        </asp:HyperLink>              
                        <div class="mt-2" style="background-color: transparent;">
                            <asp:HyperLink runat="server" CssClass="ND" NavigateUrl='<%#"~/Client/Views/TinTuc/ctTin.aspx?MaTin="+Eval("MaTin").ToString() %>'>
                                    <h5 class=" font-weight-bold mb-2"><%# Eval("TieuDe").ToString() %></h5>
                            </asp:HyperLink>
                            <div class="lich d-flex mb-1"><img src="/Client/template/img/Lich.png" alt="">
                                <p class="Info"><%# Eval("NgayDang").ToString() %></p>
                            </div>
                              
                        </div>
                    </div>
                </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

        </div>
    </div>
</asp:Content>
