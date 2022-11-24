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
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

    <link rel="stylesheet" href="css/general.css">
    <link rel="stylesheet" href="css/list-product.css">
</head>

<body>
    <ul class="nav nav-page">
        <li class=" left"> <a href="home-page.jsp"><img src="images/logo/logo-rmbg1.png" alt=""></a>
        </li>
        <li class="nav-item center">
            <a class="nav-link active" href="list-product.jsp">Sản Phẩm</a>
            <a class="nav-link" href="list-product.jsp">Gỗ</a>
            <a class="nav-link" href="list-product.jsp">Gốm</a>
            <a class="nav-link" href="list-product.jsp">giảm giá</a>
            <a class="nav-link" href="list-product.jsp">Bán Chạy</a>
        </li>
        <li class=" right">
            <div class="item-right search-item">
                <input type="text" id="search" placeholder="Tìm kiếm..." />
                <span class="icon"><i class="fa fa-search"></i></span>

            </div>
            <a href="login.jsp" class="item-right"> <i class="fa-solid fa-user"></i>
                <p>Đăng nhập</p>
            </a>
            <a href="cart.jsp" class="item-right"><i class="fa-solid fa-cart-shopping"></i>
                <p>Giỏ hàng (2)</p>
            </a>
        </li>
    </ul>
    <div class="address-book-background">
        <div class="container address-book-vs-sort">
            <div class="address-book">
                <span><a href="home-page.jsp">Trang chủ</a></span><span>|</span>
                <span><a href="list-product.jsp">Danh sách sản phẩm</a></span>
            </div>

            <div class="sort">
                <span>sắp xếp</span>
            </div>
        </div>

    </div>
    <div class="container content">
        <div class="left">
            <div class="container-of-left ">
                <div class="row">
                    <div class="row type-left">
                        <ul class="">
                            <li class="drivider"><a href="">Tất cả</a></li>
                            <li class="line"><a href="">|</a></li>
                            <li class="drivider"><a href="">Gỗ</a></li>
                            <li class="line"><a href="">|</a></li>
                            <li class="drivider"><a href="">Gốm</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row boder-line">
                </div>
                <div class="row type-item">
                    <div class="state">
                        <ul>
                            <li class="item"> <a href=""> Giảm giá</a></li>
                            <li class="item"> <a href=""> Sản phẩm mới</a></li>
                            <li class="item"> <a href=""> Bán chạy</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row boder-line"></div>
                <div class="row type-group">
                    <div class="group">
                        <h3>Nhóm sản phẩm</h3>
                        <ul>
                            <li class="item"> <a href=""> Phòng khách</a></li>
                            <li class="item"> <a href=""> Nhà bếp</a></li>
                            <li class="item"> <a href=""> Phong thủy</a></li>
                            <li class="item"> <a href=""> Phòng ngủ</a></li>
                            <li class="item"> <a href=""> Giải trí</a></li>
                            <li class="item"> <a href=""> Trang trí tường</a></li>
                            <!-- <li class="item"> <a href=""> chăm sóc tóc</a></li> -->
                        </ul>
                    </div>
                </div>
            </div>

        </div>

        <div class="right">
            <!-- slider -->
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <a href=""><img class="d-block w-100" src="images/list-product/cms-banner.jpg"
                                alt="First slide"></a>
                    </div>
                    <div class="carousel-item">
                        <a href=""> <img class="d-block w-100" src="images/list-product/BIOPHILIA_10.jpg"
                                alt="Second slide"></a>
                    </div>
                    <div class="carousel-item">
                        <a href=""><img class="d-block w-100 " src="images/list-product/list_collection_default.png"
                                alt="Third slide"></a>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- list product -->
            <div class="list-product">
                <div class="row">
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="product.jsp"><img
                                        src="https://i.etsystatic.com/34082332/r/il/40eca9/3697370969/il_794xN.3697370969_s1yf.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">Tượng chim cú được chạm khắc bằng tay</a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    713,000 VND
                                    <span class="price-real">839.000 VND</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/28326759/r/il/145f2f/2997173961/il_794xN.2997173961_b29o.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href=""> Tượng con chim ruồi</a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    1,241,000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/5407182/r/il/d18075/2534365274/il_340x270.2534365274_28v8.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href=""> Cốc cà phê </a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    583.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/14458095/r/il/095d0c/3905526261/il_794xN.3905526261_b4o9.jpg  "
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">Bộ cốc bầu trời xanh dễ thương</a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    760.000 VND
                                    <!-- <span class="price-real">800.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/36832986/r/il/5a7e1a/4127630124/il_794xN.4127630124_ktlk.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">Bình gốm vẽ tay trang trí nội thất</a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    596.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/26186931/r/il/d57940/3272331717/il_794xN.3272331717_12ph.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">Bình gốm cắm hoa </a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    906.000 VND
                                    <span class="price-real">1.000.000 VND</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/18808630/r/il/53972b/3812956630/il_794xN.3812956630_2gct.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">Đĩa tròn bằng gỗ thủ công</a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    329.000 VND
                                    <span class="price-real">490.000 VND</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/21232771/r/il/07a850/2794057758/il_794xN.2794057758_fmnl.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">Thìa gỗ làm thủ công - Muỗng nấu ăn 12 inch</a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    751.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/19076644/r/il/549709/4240974539/il_794xN.4240974539_nji7.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">tượng nấm bằng gỗ </a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    1.020.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/19076644/r/il/549709/4240974539/il_794xN.4240974539_nji7.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">tượng nấm bằng gỗ </a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    1.020.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/19076644/r/il/549709/4240974539/il_794xN.4240974539_nji7.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">tượng nấm bằng gỗ </a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    1.020.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/19076644/r/il/549709/4240974539/il_794xN.4240974539_nji7.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">tượng nấm bằng gỗ </a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    1.020.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/19076644/r/il/549709/4240974539/il_794xN.4240974539_nji7.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">tượng nấm bằng gỗ </a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    1.020.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/19076644/r/il/549709/4240974539/il_794xN.4240974539_nji7.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">tượng nấm bằng gỗ </a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    1.020.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="thumbnail">
                            <div class="cont-item ">
                                <a href="#"><img
                                        src="https://i.etsystatic.com/19076644/r/il/549709/4240974539/il_794xN.4240974539_nji7.jpg"
                                        alt="">
                                </a>
                            </div>
                            <div class="button">
                                <a href="" class="buy-now"> Mua ngay</a>
                                <a href="" class="wish-list "><i class="fa-solid fa-cart-plus"></i></a>
                            </div>
                            <div class="caption">
                                <h3><a href="">tượng nấm bằng gỗ </a></h3>
                                <div class="ratting">
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star yellow"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                                <h3 class="price">
                                    1.020.000 VND
                                    <!-- <span class="price-real">490.000 VND</span> -->
                                </h3>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- pagination -->
            <nav aria-label="Page navigation example" class="pagination-page">
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

    </div>


    <footer class="footer row">
        <div class="col-1"></div>
        <div class="col-2">
            <img src="images/logo/logo2.png" alt="">
        </div>
        <div class="col-2">
            <div class="title">Sản phẩm</div>
            <div><a href="">Đồ gỗ</a></div>
            <div><a href="">Đồ gốm</a></div>
        </div>
        <div class="col-2">
            <div class="title">Về Craft</div>
            <div><a href="">Tuyển cộng tác viên</a></div>
            <div><a href="">Địa chỉ</a></div>
            <div><a href="">Thông tin thành lập</a></div>
            <div><a href="">Người thành lập</a></div>
        </div>
        <div class="col-2">
            <div class="title">Liên hệ</div>
            <div><a href="">Facebook</a></div>
            <div><a href="">Istagram</a></div>
            <div><a href="">Twiter</a></div>
        </div>
        <div class="col-2">
            <div class="title">Hỗ trợ</div>
            <div><a href="">Thông tin bảo hành</a></div>
            <div><a href="">Thông tin đổi trả</a></div>
            <div><a href="">Liên hệ nhân viên chăm sóc</a></div>
        </div>

        <div class="col-1"></div>
    </footer>
    <a href="#" class="scrolltotop"><i class="fa fa-arrow-up"></i></a>

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
    <script src="js/list-product.js"></script>
</body>

</html>