<%@ page import="bean.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
    <link rel="stylesheet" href="css/reset.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

    <link rel="stylesheet" href="css/general.css">
    <link rel="stylesheet" href="css/cart.css">
</head>

<body>

<%@include file="header.jsp" %>
<div class="container content">
    <div class="row">
        <div class="<%=cart.getOrderDetails().isEmpty()?"col-12":"col-8"%> list-product">
            <h5 class="title uppercase">giỏ hàng</h5>
            <ul class="container-list-product">
                <%
                    if (!cart.getOrderDetails().isEmpty()) {
                        for (OrderDetail cartDetail : cart.getOrderDetails()) {
                            Product product = cartDetail.getProduct();
                %>

                <li class="product bd-bottom pb-4 pt-4">
                    <div class="row">

                        <div class="col-3 p-0 left"><img
                                src="<%=product.getImageSrc()%>"
                                alt=""></div>
                        <div class="col-6">
                            <div class="top">
                                <h5 class="product-name"><%=product.getProductName()%>
                                </h5>
                                <div class="contain-price">
                                    <span>Giá:</span>
                                    <span class="price"><%=Format.format(product.getPrice())%> VND</span>
                                    <%if (product.getPriceReal() != 0) {%>
                                    <span class="sale"><%=Format.format(product.getPriceReal())%> VND</span>
                                    <%}%>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="text">Số lượng</div>
                                <input type="number" id="quantity" class="input" name="quantity" min="1" max="20"
                                       placeholder=" " value="<%=cartDetail.getQuantity()%>">
                            </div>

                        </div>
                        <div class="col-3 right">
                            <div class="top">
                                <div class="price"><%=Format.format(cartDetail.total())%> VND</div>
                                <div class="stocking">
                                    <%if (product.getProductDetail().getStt() == 0) {%>
                                    Còn hàng
                                    <%} else if (product.getProductDetail().getStt() == 1) {%>
                                    Tạm hết hàng
                                    <%}%>
                                </div>
                            </div>
                            <div class="bottom">
                                <button class="btn-remove" value="<%=cartDetail.getOrderDetailId()%>"><i
                                        class="fa-solid fa-trash"></i> Xóa
                                </button>
                            </div>
                        </div>
                    </div>

                </li>

                <%
                    }
                } else {
                %>
                <li class="notification bd-bottom pb-4 pt-4 uppercase">
                    Giỏ hàng của bạn đang trống, quay lại mua hàng nhé!
                </li>
                <%}%>
            </ul>
            <%if (!cart.getOrderDetails().isEmpty()) {%>
            <div class="contain-btn">
                <button class="delete-all uppercase submit">Xóa tất cả</button>
                <%} else {%>
                <div class="contain-btn" style="justify-content: center">
                    <%}%>
                    <a href="http://localhost:8080/listProduct?kind=<%=ProductService.ALL%>"
                       class="return uppercase submit">quay lại mua hàng</a>
                </div>

            </div>
            <%if (!cart.getOrderDetails().isEmpty()) {%>
            <div class="col-4 bill p-0">
                <div class="contain-bill p-4">
                    <h5 class="title-bill uppercase">đơn hàng</h5>
                    <div class="top bd-bottom  pb-4">
                        <div class="text-bill uppercase">nhập mã khuyến mãi</div>
                        <div class="input-voucher">
                            <input id="input-voucher" class="input" type="text">
                            <button id="submit-voucher" class="uppercase submit">áp dụng</button>
                        </div>
                        <div id="mess-voucher"></div>
                    </div>

                    <div class="mid bd-bottom">
                        <div class="arow">
                            <span>Đơn hàng</span>
                            <span class="total-real"><%=Format.format(cart.totalReal())%> VND</span>
                        </div>
                        <div class="arow">
                            <span>Giảm</span>
                            <span class="sale">- <%=Format.format(cart.totalReal() - cart.total())%> VND</span>
                        </div>
                        <div class="arow">
                            <span>Mã khuyến mãi</span>
                            <span class="sale-voucher">- <span class="money-sale-voucher">0</span> VND</span>
                        </div>
                    </div>

                    <div class="bottom">
                        <div class="arow">
                            <span class="text uppercase">tạm tính</span>
                            <span class="total"><span><%=Format.format(cart.total())%></span> VND</span>
                        </div>
                        <button class="btn-total uppercase submit">Tiếp tục thanh toán</button>

                    </div>

                </div>
            </div>
            <%}%>
        </div>
    </div>
    <%@include file="footer.jsp" %>
    <%@include file="scroll-to-top.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
            integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
            integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="js/general.js"></script>
    <script src="js/cart.js" charset="utf-8"></script>
</body>

</html>