<jsp:include page="header.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <section class="breadcrumb-section">
            <h2 class="sr-only">Site Breadcrumb</h2>
            <div class="container">
                <div class="breadcrumb-contents">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item active">Product Details</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <main class=" inner-page-sec-padding-bottom">
            <div class="container">
                <div class="row mb--60">
                    <div class="col-lg-5 mb--30">
                        <!-- Product Details Slider Big Image-->
                        <div class="product-details-slider sb-slick-slider arrow-type-two" data-slick-setting='{
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
                        <div class="mt--30 product-slider-nav sb-slick-slider arrow-type-two" data-slick-setting='{
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
                    <div class="col-lg-7">
                        <div class="product-details-info pl-lg--30">
                            <p class="tag-block">Tags: <a href="#">Movado</a>, <a href="#">Omega</a></p>
                            <h3 class="product-title">Beats EP Wired On-Ear Headphone-Black</h3>
                            <ul class="list-unstyled">
                                <li>Ex Tax: <span class="list-value"> Â£60.24</span></li>
                                <li>Brands: <a href="#" class="list-value font-weight-bold"> Canon</a></li>
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
                                <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the Dust
                                    with ruffles at the bottom of the
                                    dress.</p>
                            </article>
                            <div class="product-group-block">
                                <ul class="product-group">
                                    <li class="single-product">
                                        <div class="product-image">
                                            <img src="layout/image/products/product-1.jpg" alt="">
                                        </div>
                                        <h5 class="product-title">Katopeno Altuni</h5>
                                        <div class="count-input-block">
                                            <input type="number" class="form-control text-center" value="1">
                                            <div class="count-input-btns">
                                                <button class="inc-ammount count-btn"><i
                                                        class="zmdi zmdi-chevron-up"></i></button>
                                                <button class="dec-ammount count-btn"><i
                                                        class="zmdi zmdi-chevron-down"></i></button>
                                            </div>
                                        </div>
                                        <span class="price mt-0">$500.00</span>
                                        <div class="add-cart-btn">
                                            <a href="cart.html" class="btn btn-outlined--primary"><span
                                                    class="plus-icon">+</span>Add to Cart</a>
                                        </div>
                                    </li>                                 
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sb-custom-tab review-tab section-padding">
                    <ul class="nav nav-tabs nav-style-2" id="myTab2" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="tab1" data-toggle="tab" href="#tab-1" role="tab"
                                aria-controls="tab-1" aria-selected="true">
                                DESCRIPTION
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="tab2" data-toggle="tab" href="#tab-2" role="tab"
                                aria-controls="tab-2" aria-selected="true">
                                REVIEWS (1)
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content space-db--20" id="myTabContent">
                        <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab1">
                            <article class="review-article">
                                <h1 class="sr-only">Tab Article</h1>
                                <p>Fashion has been creating well-designed collections since 2010. The brand offers
                                    feminine designs delivering
                                    stylish
                                    separates and statement dresses which have since evolved into a full ready-to-wear
                                    collection in which every
                                    item is
                                    a
                                    vital part of a woman's wardrobe. The result? Cool, easy, chic looks with youthful
                                    elegance and unmistakable
                                    signature
                                    style. All the beautiful pieces are made in Italy and manufactured with the greatest
                                    attention. Now Fashion
                                    extends
                                    to
                                    a range of accessories including shoes, hats, belts and more!</p>
                            </article>
                        </div>
                        <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab2">
                            <div class="review-wrapper">
                                <h2 class="title-lg mb--20">1 REVIEW FOR AUCTOR GRAVIDA ENIM</h2>
                                <div class="review-comment mb--20">
                                    <div class="avatar">
                                        <img src="layout/image/icon/author-logo.png" alt="">
                                    </div>
                                    <div class="text">
                                        <div class="rating-block mb--15">
                                            <span class="ion-android-star-outline star_on"></span>
                                            <span class="ion-android-star-outline star_on"></span>
                                            <span class="ion-android-star-outline star_on"></span>
                                            <span class="ion-android-star-outline"></span>
                                            <span class="ion-android-star-outline"></span>
                                        </div>
                                        <h6 class="author">ADMIN â <span class="font-weight-400">March 23, 2015</span>
                                        </h6>
                                        <p>Lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio
                                            quis mi.</p>
                                    </div>
                                </div>
                                <h2 class="title-lg mb--20 pt--15">ADD A REVIEW</h2>
                                <div class="rating-row pt-2">
                                    <p class="d-block">Your Rating</p>
                                    <span class="rating-widget-block">
                                        <input type="radio" name="star" id="star1">
                                        <label for="star1"></label>
                                        <input type="radio" name="star" id="star2">
                                        <label for="star2"></label>
                                        <input type="radio" name="star" id="star3">
                                        <label for="star3"></label>
                                        <input type="radio" name="star" id="star4">
                                        <label for="star4"></label>
                                        <input type="radio" name="star" id="star5">
                                        <label for="star5"></label>
                                    </span>
                                    <form action=""
                                        class="mt--15 site-form ">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="message">Comment</label>
                                                    <textarea name="message" id="message" cols="30" rows="10"
                                                        class="form-control"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="name">Name *</label>
                                                    <input type="text" id="name" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="email">Email *</label>
                                                    <input type="text" id="email" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label for="website">Website</label>
                                                    <input type="text" id="website" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="submit-btn">
                                                    <a href="#" class="btn btn-black">Post Comment</a>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>  
    
    <jsp:include page="footer.jsp" />