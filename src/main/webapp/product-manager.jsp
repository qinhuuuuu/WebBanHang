<%@ page import="java.util.List" %>
<%@ page import="bean.*" %>
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
                    <p class="number"><%=request.getAttribute("quantity")%> sản phẩm</p>
                </div>
            </div>
            <div class="bottom">

                <p class="percent green">+15%</p>
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
                    <p class="number">10 sản phẩm</p>
                </div>
            </div>
            <div class="bottom">

                <p class="percent green">+5%</p>
                <p>so với hôm qua</p>

            </div>

        </div>
        <div class="col-sm">
            <div class="top">
                <div class="icon i-blue"><i class="fa-solid fa-eye"></i></div>
                <div class="title-number">
                    <p class="title">Số lượt đánh giá</p>
                    <p class="number">80 lượt</p>
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
                <button class="delete button submit">Xóa</button>
            </div>

            <table id="dtHorizontalVerticalExample" class="table table-striped table-bordered table-sm "
                   cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th><input type="checkbox" name="select-all" id="select-all"></th>
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
                <tr class="product-<%=product.getProductId()%>">
                    <td><input type="checkbox" value="<%=product.getProductId()%>" class="checkbox-product"></td>
                    <td><img class="avatar" src="<%=product.getImageSrc()%>" alt="<%=product.getProductName()%>">
                    </td>
                    <td><%=product.getProductName()%>
                    </td>
                    <td><%=Format.format(product.getPrice())%> VND
                    </td>
                    <td><%=product.getProductDetail().getCreateDate()%>
                    </td>
                    <td><%=product.getProductDetail().getInventory()%>
                    </td>
                    <td>
                        <button class="edit-product button submit" value="<%=product.getProductId()%>"
                                data-toggle="modal"
                                data-target="#exampleModalCenterEdit">
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
                    <div class="priceReal">
                        <label>Giá khuyến mãi</label>
                        <input class="input" type="number" min="0" name="priceReal" id="input-priceReal"
                               placeholder="Giá khuyến mãi... VND"></div>
                    <div class="type">
                        <label>Loại sản phẩm</label>
                        <select class="input" name="pa_category" id="input-pa_category">
                            <%
                                List<PaCategory> paCategoryList = (List<PaCategory>) request.getAttribute("listPacategories");

                                for (PaCategory pa : paCategoryList) {
                            %>
                            <option value="<%=pa.getPaCategoryId()%>"><%=pa.getName()%>
                            </option>

                            <%}%>
                        </select>
                    </div>
                    <div class="group">
                        <label>Nhóm sản phẩm</label>
                        <select class="input category" name="category" id="category">
                            <%
                                List<Category> categoryList = (List<Category>) request.getAttribute("listCategory");
                                for (Category ca : categoryList) {
                            %>
                            <option value="<%=ca.getCategoryId()%>" selected><%=ca.getName()%>
                            </option>
                            <%}%>
                        </select>
                    </div>
                    <div class="inventory">
                        <label>Số lượng</label>
                        <input class="input" type="number" min="0" name="inventory" id="input-inventory"
                               placeholder="Số lượng ...">
                    </div>
                    <div class="images">
                        <form action="/admins/uploadImageProduct" method="post" class="upload"
                              enctype="multipart/form-data">
                            <label>Hình ảnh sản phẩm (Tối thiểu 5 ảnh)</label>
                            <div class="row">
                                <input type="file" name="file-img1" id="file-img1" class="input-img submit"
                                       accept="image/png">
                                <label id="label-icon-add-img" for="file-img1"> <i id="icon-add-img" class="fa-sharp fa-solid fa-plus "></i></label>
                            </div>

                            <button type="submit" class="btn-submit-img" style="display: none">submit</button>
                        </form>

                    </div>
                    <div class="detail">
                        <label>Thông số sản phẩm</label>
                        <textarea class="input" name="detail" id="input-detail"></textarea></div>
                    <div class="decription">
                        <label>Mô tả sản phẩm</label>
                        <textarea class="input" name="decription" id="input-decription"></textarea></div>
                    <div class="modal-footer">
                        <button type="button" class="button button-close submit" data-dismiss="modal">Hủy</button>
                        <button type="button" class="button button-save submit" id="addProduct"
                                value="Lưu sản phẩm">Thêm sản phẩm
                        </button>
                    </div>
                </div>
            </div>

            <%--                <button type="button" class="button button-close submit" data-dismiss="modal">Hủy</button>--%>
            <%--                <button type="button" class="button button-save submit" id="addProduct">Lưu sản phẩm</button>--%>

        </div>
    </div>
</div>
<div class="modal fade" id="exampleModalCenterEdit" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title uppercase" id="Title">Thêm sản phẩm mới</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body form-edit">

            </div>

            <%--                <button type="button" class="button button-close submit" data-dismiss="modal">Hủy</button>--%>
            <%--                <button type="button" class="button button-save submit" id="addProduct">Lưu sản phẩm</button>--%>

        </div>
    </div>
</div>
<script>
    // $('#submit-img').click(function () {
    //     alert($('#file-img').val())
    // })

</script>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
<script src="js/product-manager.js"></script>
</body>

</html>