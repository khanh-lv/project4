<%@page import="entity.Books"%>
<%@page import="java.util.List"%>
<%@page import="entity.Categories"%>
<jsp:include page="header.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<section class="breadcrumb-section">
    <h2 class="sr-only">Site Breadcrumb</h2>
    <div class="container">
        <div class="breadcrumb-contents">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                    <li class="breadcrumb-item active">Shop</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<main class="inner-page-sec-padding-bottom">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 order-lg-2">
                <div class="shop-toolbar with-sidebar mb--30">
                    <div class="row align-items-center">
                        <div class="col-lg-2 col-md-2 col-sm-6">
                            <!-- Product View Mode -->
                            <div class="product-view-mode">
                                <a href="#" class="sorting-btn active" data-target="grid"><i
                                        class="fas fa-th"></i></a>
                                <a href="#" class="sorting-btn" data-target="grid-four">
                                    <span class="grid-four-icon">
                                        <i class="fas fa-grip-vertical"></i><i class="fas fa-grip-vertical"></i>
                                    </span>
                                </a>
                                <a href="#" class="sorting-btn" data-target="list "><i
                                        class="fas fa-list"></i></a>
                            </div>
                        </div>
              
                    </div>
                </div>
                <div class="shop-toolbar d-none">
                    <div class="row align-items-center">
                        <div class="col-lg-2 col-md-2 col-sm-6">
                            <!-- Product View Mode -->
                            <div class="product-view-mode">
                                <a href="#" class="sorting-btn active" data-target="grid"><i
                                        class="fas fa-th"></i></a>
                                <a href="#" class="sorting-btn" data-target="grid-four">
                                    <span class="grid-four-icon">
                                        <i class="fas fa-grip-vertical"></i><i class="fas fa-grip-vertical"></i>
                                    </span>
                                </a>
                                <a href="#" class="sorting-btn" data-target="list "><i
                                        class="fas fa-list"></i></a>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="shop-product-wrap grid with-pagination row space-db--30 shop-border">
                    <%
                        List<Books> bookList = (List<Books>) session.getAttribute("bookList");
                        if (bookList.size() > 0) {
                            for (Books b : bookList) {
                                if(b.getStatus() == 1){
                    %>

                    <div class="col-lg-4 col-sm-6">
                        <div class="product-card">
                            <div class="product-grid-content">
                                <div class="product-header">
                                    <a href="#" class="author">
                                        <%= b.getAuthor()%>
                                    </a>
                                    <h3><a href="productdetail?pid=<%= b.getId()%>"><%= b.getTitle()%></a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="<%= b.getThumbnail()%>" alt="">
                                        <div class="hover-contents">
                                            <a href="productdetail?pid=<%= b.getId()%>" class="hover-image">
                                                <img src="<%= b.getThumbnail()%>" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                               
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price"><%= b.getPrice()%> VND</span>
                                        <del class="price-old"><%= b.getPrice()%> VND</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-list-content">
                                <div class="card-image">
                                    <img src="<%= b.getThumbnail()%>" alt="">
                                </div>
                                <div class="product-card--body">
                                    <div class="product-header">
                                        <a href="#" class="author">
                                            <%= b.getAuthor()%>
                                        </a>
                                        <h3><a href="details.html" tabindex="0"><%= b.getTitle()%></a></h3>
                                    </div>
                                    <article>
                                        <h2 class="sr-only">Card List Article</h2>
                                        <p><%= b.getShortDes()%></p>
                                    </article>
                                    <div class="price-block">
                                        <span class="price"><%= b.getPrice()%> VND</span>
                                        <del class="price-old"><%= b.getPrice()%> VND</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                    <div class="btn-block">
                                        <a href="#" class="btn btn-outlined">Add To Cart</a>
                                        <a href="#" class="card-link"><i class="fas fa-heart"></i> Add To
                                            Wishlist</a>
                                        <a href="#" class="card-link"><i class="fas fa-random"></i> Add To
                                            Cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                                }
                            }
                        }
                    %>
                </div>
                <!-- Pagination Block -->
                <div class="row pt--30">
                    <div class="col-md-12">
                        <div class="pagination-block">
                            <ul class="pagination-btns flex-center">
                                <%
                                    int count = (Integer) session.getAttribute("count");
                                    for (int i = 1; i <= count; i++) {
                                        if (request.getParameter("page") == null && i == 1) {
                                            if (request.getParameter("search") != null && request.getParameter("catid") != null) {
                                                String search = request.getParameter("search");
                                                String catId = request.getParameter("catid");
                                                out.print("<li class='active'><a href='shop?search=" + search + "&catid=" + catId + "&page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            } else if (request.getParameter("search") != null && request.getParameter("catid") == null) {
                                                String search = request.getParameter("search");
                                                out.print("<li class='active'><a href='shop?search=" + search + "&page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            } else if (request.getParameter("search") == null && request.getParameter("catid") != null) {
                                                String catId = request.getParameter("catid");
                                                out.print("<li class='active'><a href='shop?catid=" + catId + "&page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            } else {
                                                out.print("<li class='active'><a href='shop?page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            }

                                        } else if (request.getParameter("page") != null && i == Integer.parseInt(request.getParameter("page"))) {
                                            if (request.getParameter("search") != null && request.getParameter("catid") != null) {
                                                String search = request.getParameter("search");
                                                String catId = request.getParameter("catid");
                                                out.print("<li class='active'><a href='shop?search=" + search + "&catid=" + catId + "&page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            } else if (request.getParameter("search") != null && request.getParameter("catid") == null) {
                                                String search = request.getParameter("search");
                                                out.print("<li class='active'><a href='shop?search=" + search + "&page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            } else if (request.getParameter("search") == null && request.getParameter("catid") != null) {
                                                String catId = request.getParameter("catid");
                                                out.print("<li class='active'><a href='shop?catid=" + catId + "&page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            } else {
                                                out.print("<li class='active'><a href='shop?page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            }

                                        } else {
                                            if (request.getParameter("search") != null && request.getParameter("catid") != null) {
                                                String search = request.getParameter("search");
                                                String catId = request.getParameter("catid");
                                                out.print("<li><a href='shop?search=" + search + "&catid=" + catId + "&page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            } else if (request.getParameter("search") != null && request.getParameter("catid") == null) {
                                                String search = request.getParameter("search");
                                                out.print("<li><a href='shop?search=" + search + "&page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            } else if (request.getParameter("search") == null && request.getParameter("catid") != null) {
                                                String catId = request.getParameter("catid");
                                                out.print("<li><a href='shop?catid=" + catId + "&page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            } else {
                                                out.print("<li><a href='shop?page=" + i + "' class='single-btn'>" + i + "</a></li>");
                                            }
                                        }
                                    }
                                %>

                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade modal-quick-view" id="quickModal" tabindex="-1" role="dialog"
                     aria-labelledby="quickModal" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <button type="button" class="close modal-close-btn ml-auto" data-dismiss="modal"
                                    aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <div class="product-details-modal">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <!-- Product Details Slider Big Image-->
                                        <div class="product-details-slider sb-slick-slider arrow-type-two"
                                             data-slick-setting='{
                                             "slidesToShow": 1,
                                             "arrows": false,
                                             "fade": true,
                                             "draggable": false,
                                             "swipe": false,
                                             "asNavFor": ".product-slider-nav"
                                             }'>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-1.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-2.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-3.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-4.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-5.jpg" alt="">
                                            </div>
                                        </div>
                                        <!-- Product Details Slider Nav -->
                                        <div class="mt--30 product-slider-nav sb-slick-slider arrow-type-two"
                                             data-slick-setting='{
                                             "infinite":true,
                                             "autoplay": true,
                                             "autoplaySpeed": 8000,
                                             "slidesToShow": 4,
                                             "arrows": true,
                                             "prevArrow":{"buttonClass": "slick-prev","iconClass":"fa fa-chevron-left"},
                                             "nextArrow":{"buttonClass": "slick-next","iconClass":"fa fa-chevron-right"},
                                             "asNavFor": ".product-details-slider",
                                             "focusOnSelect": true
                                             }'>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-1.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-2.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-3.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-4.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="layout/image/products/product-details-5.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 mt--30 mt-lg--30">
                                        <div class="product-details-info pl-lg--30 ">
                                            <p class="tag-block">Tags: <a href="#">Movado</a>, <a
                                                    href="#">Omega</a></p>
                                            <h3 class="product-title">Beats EP Wired On-Ear Headphone-Black</h3>
                                            <ul class="list-unstyled">
                                                <li>Ex Tax: <span class="list-value"> Â£60.24</span></li>
                                                <li>Brands: <a href="#" class="list-value font-weight-bold">
                                                        Canon</a></li>
                                                <li>Product Code: <span class="list-value"> model1</span></li>
                                                <li>Reward Points: <span class="list-value"> 200</span></li>
                                                <li>Availability: <span class="list-value"> In Stock</span></li>
                                            </ul>
                                            <div class="price-block">
                                                <span class="price-new">Â£73.79</span>
                                                <del class="price-old">Â£91.86</del>
                                            </div>
                                            <div class="rating-widget">
                                                <div class="rating-block">
                                                    <span class="fas fa-star star_on"></span>
                                                    <span class="fas fa-star star_on"></span>
                                                    <span class="fas fa-star star_on"></span>
                                                    <span class="fas fa-star star_on"></span>
                                                    <span class="fas fa-star "></span>
                                                </div>
                                                <div class="review-widget">
                                                    <a href="#">(1 Reviews)</a> <span>|</span>
                                                    <a href="#">Write a review</a>
                                                </div>
                                            </div>
                                            <article class="product-details-article">
                                                <h4 class="sr-only">Product Summery</h4>
                                                <p>Long printed dress with thin adjustable straps.</p>
                                            </article>
                                            <div class="add-to-cart-row">
                                                <div class="count-input-block">
                                                    <span class="widget-label">Qty</span>
                                                    <input type="number" class="form-control text-center"
                                                           value="1">
                                                </div>
                                                <div class="add-cart-btn">
                                                    <a href="#" class="btn btn-outlined--primary"><span
                                                            class="plus-icon">+</span>Add to Cart</a>
                                                </div>
                                            </div>
                                            <div class="compare-wishlist-row">
                                                <a href="#" class="add-link"><i class="fas fa-heart"></i>Add to
                                                    Wish List</a>
                                                <a href="#" class="add-link"><i class="fas fa-random"></i>Add to
                                                    Compare</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="widget-social-share">
                                    <span class="widget-label">Share:</span>
                                    <div class="modal-social-share">
                                        <a href="#" class="single-icon"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#" class="single-icon"><i class="fab fa-twitter"></i></a>
                                        <a href="#" class="single-icon"><i class="fab fa-youtube"></i></a>
                                        <a href="#" class="single-icon"><i class="fab fa-google-plus-g"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3  mt--40 mt-lg--0">
                <div class="inner-page-sidebar">
                    <!-- Accordion -->
                    <div class="single-block">
                        <h3 class="sidebar-title">Categories</h3>
                        <ul class="sidebar-menu--shop">
                            <%
                                List<Categories> categories = (List<Categories>) session.getAttribute("categories");
                                for (Categories c : categories) {
                                    if (c.getStatus() == 1) {
                                        out.print("<li><a href='shop?catid=" + c.getId() + "'>" + c.getCatName() + "</a></li>");
                                    }
                                }
                            %>


                        </ul>
                    </div>
                    <!-- Size -->


                    <!-- Promotion Block -->
                    <div class="single-block">
                        <a href="#" class="promo-image sidebar">
                            <img src="layout/image/others/home-side-promo.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</div>

<jsp:include page="footer.jsp" />