<%@ page import="java.util.List" %>
<%@ page import="bean.Product" %>
<%@ page import="bean.Format" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="css/reset.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="https://mdbootstrap.com/docs/b4/jquery/getting-started/cdn/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/product-manager.css">
</head>

<body>
<%@include file="header-admin.jsp" %>
<div class="content">
    <div class="row">
        <div class="col-sm">
            <div class="top">
                <div class="icon i-gray"><i class="fa-solid fa-cash-register"></i></div>
                <div class="title-number">
                    <p class="title">Tổng Sản phẩm</p>
                    <p class="number">100 sản phẩm</p>
                </div>
            </div>
            <div class="bottom">

                <p class="percent green">+55%</p>
                <p>so với hôm qua</p>

            </div>

        </div>
        <div class="col-sm">
            <div class="top">
                <div class="icon i-red"><i class="fa-solid fa-user "></i></div>
                <div class="title-number">
                    <p class="title">Sản phẩm mới</p>
                    <p class="number">20 sản phẩm</p>
                </div>
            </div>
            <div class="bottom">

                <p class="percent red">-10%</p>
                <p>so với tháng trước</p>

            </div>

        </div>
        <div class="col-sm">
            <div class="top">
                <div class="icon i-green"><i class="fa-solid fa-cart-shopping"></i></div>
                <div class="title-number">
                    <p class="title">Sản phẩm hết hàng</p>
                    <p class="number">50 sản phẩm</p>
                </div>
            </div>
            <div class="bottom">

                <p class="percent green">+25%</p>
                <p>so với hôm qua</p>

            </div>

        </div>
        <div class="col-sm">
            <div class="top">
                <div class="icon i-blue"><i class="fa-solid fa-eye"></i></div>
                <div class="title-number">
                    <p class="title">Số lượt đánh giá</p>
                    <p class="number">720.203 lượt</p>
                </div>
            </div>
            <div class="bottom">

                <p class="percent red">-5%</p>
                <p>so với hôm qua</p>

            </div>

        </div>


    </div>
    <div class="table">
        <div class="table-cart">
            <h2>Danh sách sản phẩm</h2>
            <div class="right">
                <button type="button" class="btn-add-address button submit add" data-toggle="modal"
                        data-target="#exampleModalCenter">Thêm
                </button>
                <button class="delete">Xóa</button>
            </div>

            <table id="dtHorizontalVerticalExample" class="table table-striped table-bordered table-sm "
                   cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th><input type="checkbox" name="all"></th>
                    <th>Hình Ảnh</th>
                    <th>Tên</th>
                    <th>Giá tiền</th>
                    <th>Ngày nhập</th>
                    <th>Số lượng</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <% List<Product> list = (List<Product>) request.getAttribute("list");
                    for (Product product : list) {%>
                <tr>
                    <td><input type="checkbox"></td>
                    <td><img src="<%=product.getImageSrc()%>" alt="<%=product.getProductName()%>">
                    </td>
                    <td><%=product.getProductName()%>
                    </td>
                    <td><%=Format.format(product.getPrice())%>
                    </td>
                    <td><%=product.getRate()%>
                    </td>
                    <td><%=product.getProductDetail().getInventory()%>
                    </td>
                    <td>
                        <button>
                            Sửa
                        </button>
                    </td>
                </tr>
                <%}%>
                </tbody>
            </table>


        </div>
    </div>

</div>

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title uppercase" id="exampleModalLongTitle">Thêm sản phẩm mới</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-add-address">
                    <div class="name">
                        <label>Tên sản phẩm</label>
                        <input class="input" type="text" name="name" id="input-name" placeholder="Tên sản phẩm"></div>
                    <div class="price">
                        <label>Giá sản phẩm</label>
                        <input class="input" type="number" min="0" name="price" id="input-price"
                               placeholder="Giá sản phẩm... VND"></div>
                    <div class="type">
                        <label >Loại sản phẩm</label>
                        <select class="input" name="type">
                            <option value="1">Gỗ</option>
                            <option value="2">Gốm</option>
                            <option value="3">Tranh</option>
                        </select>
                    </div>
                    <div class="group">
                        <label >Nhóm sản phẩm</label>
                        <select class="input" name="group">
                            <option value="1">Mô hình</option>
                            <option value="2">Gia dụng</option>
                            <option value="3">Văn phòng</option>
                        </select>
                    </div>
                    <div class="amount">
                        <label>Số lượng</label>
                        <input class="input" type="number" min="0" name="price" id="input-amount" placeholder="Số lượng ...">
                    </div>
                    <div class="images">
                        <label>Hình ảnh sản phẩm</label>
                        <button class="submit">tải ảnh lên</button>
                    </div>
                    <div class="parameter">
                        <label>Thông số sản phẩm</label>
                        <textarea class="input" name="parameter" id="input-parameter"></textarea></div>
                    <div class="describe">
                        <label>Mô tả sản phẩm</label>
                        <textarea class="input" name="describe" id="input-describe"></textarea></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="button button-close submit" data-dismiss="modal">Hủy</button>
                    <button type="button" class="button button-save submit">Lưu sản phẩm</button>
                </div>
            </div>
        </div>
    </div>


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
    <!-- <script src="js/general.js"></script> -->
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/admin.js"></script>
</body>

</html>