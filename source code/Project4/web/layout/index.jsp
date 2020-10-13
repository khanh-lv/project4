<%-- 
    Document   : home
    Created on : Sep 23, 2020, 10:16:26 AM
    Author     : PC
--%>
<%@page import="java.util.List"%>
<%@page import="entity.Books"%>
<%@page import="entity.Books"%>
<jsp:include page="header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--=================================
Hero Area
===================================== -->
<section class="hero-area hero-slider-1">
    <div class="sb-slick-slider" data-slick-setting='{
         "autoplay": true,
         "fade": true,
         "autoplaySpeed": 3000,
         "speed": 3000,
         "slidesToShow": 1,
         "dots":true
         }'>
        <div class="single-slide bg-shade-whisper  ">
            <div class="container">
                <div class="home-content text-center text-sm-left position-relative">
                    <div class="hero-partial-image image-right">
                        <img src="layout/image/bg-images/home-slider-2-ai.png" alt="">
                    </div>
                    <div class="row no-gutters ">
                        <div class="col-xl-6 col-md-6 col-sm-7">
                            <div class="home-content-inner content-left-side">
                                <h1>H.G. Wells<br>
                                    De Vengeance</h1>
                                <h2>Cover Up Front Of Books and Leave Summary</h2>
                                <a href="/Project4/shop" class="btn btn-outlined--primary">
                                    $78.09 - Order Now!
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="single-slide bg-ghost-white">
            <div class="container">
                <div class="home-content text-center text-sm-left position-relative">
                    <div class="hero-partial-image image-left">
                        <img src="layout/image/bg-images/home-slider-1-ai.png" alt="">
                    </div>
                    <div class="row align-items-center justify-content-start justify-content-md-end">
                        <div class="col-lg-6 col-xl-7 col-md-6 col-sm-7">
                            <div class="home-content-inner content-right-side">
                                <h1>J.D. Kurtness <br>
                                    De Vengeance</h1>
                                <h2>Cover Up Front Of Books and Leave Summary</h2>
                                <a href="/Project4/shop" class="btn btn-outlined--primary">
                                    $78.09 - Learn More
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--=================================
Home Features Section
===================================== -->
<section class="mb--30">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-md-6 mt--30">
                <div class="feature-box h-100">
                    <div class="icon">
                        <i class="fas fa-shipping-fast"></i>
                    </div>
                    <div class="text">
                        <h5>Free Shipping Item</h5>
                        <p> Orders over $500</p>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mt--30">
                <div class="feature-box h-100">
                    <div class="icon">
                        <i class="fas fa-redo-alt"></i>
                    </div>
                    <div class="text">
                        <h5>Money Back Guarantee</h5>
                        <p>100% money back</p>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mt--30">
                <div class="feature-box h-100">
                    <div class="icon">
                        <i class="fas fa-piggy-bank"></i>
                    </div>
                    <div class="text">
                        <h5>Cash On Delivery</h5>
                        <p>Lorem ipsum dolor amet</p>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mt--30">
                <div class="feature-box h-100">
                    <div class="icon">
                        <i class="fas fa-life-ring"></i>
                    </div>
                    <div class="text">
                        <h5>Help & Support</h5>
                        <p>Call us : + 0123.4567.89</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--=================================
Promotion Section One
===================================== Banner -->
<section class="section-margin">
    <h2 class="sr-only">Promotion Section</h2>
    <div class="container">
        <div class="row space-db--30">
            <div class="col-lg-6 col-md-6 mb--30">
                <a href="#" class="promo-image promo-overlay">
                    <img src="layout/image/bg-images/promo-banner-with-text.jpg" alt="">
                </a>
            </div>
            <div class="col-lg-6 col-md-6 mb--30">
                <a href="#" class="promo-image promo-overlay">
                    <img src="layout/image/bg-images/promo-banner-with-text-2.jpg" alt="">
                </a>
            </div>
        </div>
    </div>
</section>
<!--=================================
Home Slider Tab
===================================== -->
<section class="section-padding">
    <h2 class="sr-only">Home Tab Slider Section</h2>
    <div class="container">
        <div class="sb-custom-tab">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="shop-tab" data-toggle="tab" href="#shop" role="tab"
                       aria-controls="shop" aria-selected="true">
                        Featured Products
                    </a>
                    <span class="arrow-icon"></span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="men-tab" data-toggle="tab" href="#men" role="tab"
                       aria-controls="men" aria-selected="true">
                        New Arrivals
                    </a>
                    <span class="arrow-icon"></span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="woman-tab" data-toggle="tab" href="#woman" role="tab"
                       aria-controls="woman" aria-selected="false">
                        Most view products
                    </a>
                    <span class="arrow-icon"></span>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane show active" id="shop" role="tabpanel" aria-labelledby="shop-tab">
                    <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                         data-slick-setting='{
                         "autoplay": true,
                         "autoplaySpeed": 8000,
                         "slidesToShow": 5,
                         "rows":2,
                         "dots":true
                         }' data-slick-responsive='[
                         {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                         {"breakpoint":768, "settings": {"slidesToShow": 2} },
                         {"breakpoint":480, "settings": {"slidesToShow": 1} },
                         {"breakpoint":320, "settings": {"slidesToShow": 1} }
                         ]'>
                        <%
                            List<Books> bookList = (List<Books>) request.getAttribute("bookList");
                            if (bookList.size() > 0) {
                                for (Books b : bookList) {
                                    out.print("<div class='single-slide'>");
                                    out.print(" <div class='product-card'>");
                                    out.print("     <div class='product-header'>");
                                    out.print("        <a href='#' class='author'>");
                                    out.print(b.getAuthor());
                                    out.print("        </a>");
                                    out.print("        <h3><a href='productdetail?pid=" + b.getId() + "'>" + b.getTitle() );
                                    out.print("               </a></h3>");
                                    out.print("   </div>");
                                    out.print("   <div class='product-card--body'>");
                                    out.print("       <div class='card-image'>");
                                    out.print("           <img src='" + b.getThumbnail() +"' alt=''>");
                                    out.print("            <div class='hover-contents'>");
                                    out.print("               <a href='productdetail?pid="+ b.getId() + "' class='hover-image'>");
                                    out.print("                   <img src='"+ b.getThumbnail() +"' alt=''>");
                                    out.print("               </a>");
                                    out.print("               <div class='hover-btns'>");
                                    out.print("                   <a href='cart' class='single-btn'>");
                                    out.print("                       <i class='fas fa-shopping-basket'></i>");
                                    out.print("                   </a>");
                                    out.print("                   <a href='#' class='single-btn'>");
                                    out.print("                       <i class='fas fa-heart'></i>");
                                    out.print("                  </a>");
                                    out.print("                  <a href='#' class='single-btn'>");
                                    out.print("                      <i class='fas fa-random'></i>");
                                    out.print("                  </a>");
                                    out.print("                 <a href='#' data-toggle='modal' data-target='#quickModal'");
                                    out.print("                     class='single-btn'>");
                                    out.print("                    <i class='fas fa-eye'></i>");
                                    out.print("                </a>");
                                    out.print("             </div>");
                                    out.print("         </div>");
                                    out.print("     </div>");
                                    out.print("     <div class='price-block'>");
                                    out.print("         <span class='price'>" + b.getPrice() + " VND</span>");
                                    out.print("    <del class='price-old'>" + b.getPrice() + "</del>");
                                    out.print("    <span class='price-discount'>20%</span>");
                                    out.print("     </div>");
                                    out.print("    </div>");
                                    out.print(" </div> ");
                                    out.print(" </div>     ");
                                }
                            }
                        %>      
                    </div>
                </div>
                <div class="tab-pane" id="men" role="tabpanel" aria-labelledby="men-tab">
                    <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                         data-slick-setting='{
                         "autoplay": true,
                         "autoplaySpeed": 8000,
                         "slidesToShow": 5,
                         "rows":2,
                         "dots":true
                         }' data-slick-responsive='[
                         {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                         {"breakpoint":768, "settings": {"slidesToShow": 2} },
                         {"breakpoint":480, "settings": {"slidesToShow": 1} },
                         {"breakpoint":320, "settings": {"slidesToShow": 1} }
                         ]'>
                        <%
                            
                            if (bookList.size() > 0) {
                                for (Books b : bookList) {
                                    out.print("<div class='single-slide'>");
                                    out.print(" <div class='product-card'>");
                                    out.print("     <div class='product-header'>");
                                    out.print("        <a href='#' class='author'>");
                                    out.print(b.getAuthor());
                                    out.print("        </a>");
                                    out.print("        <h3><a href='productdetail?pid=" + b.getId() + "'>" + b.getTitle() );
                                    out.print("               </a></h3>");
                                    out.print("   </div>");
                                    out.print("   <div class='product-card--body'>");
                                    out.print("       <div class='card-image'>");
                                    out.print("           <img src='" + b.getThumbnail() +"' alt=''>");
                                    out.print("            <div class='hover-contents'>");
                                    out.print("               <a href='productdetail?pid="+ b.getId() + "' class='hover-image'>");
                                    out.print("                   <img src='"+ b.getThumbnail() +"' alt=''>");
                                    out.print("               </a>");
                                    out.print("               <div class='hover-btns'>");
                                    out.print("                   <a href='cart' class='single-btn'>");
                                    out.print("                       <i class='fas fa-shopping-basket'></i>");
                                    out.print("                   </a>");
                                    out.print("                   <a href='#' class='single-btn'>");
                                    out.print("                       <i class='fas fa-heart'></i>");
                                    out.print("                  </a>");
                                    out.print("                  <a href='#' class='single-btn'>");
                                    out.print("                      <i class='fas fa-random'></i>");
                                    out.print("                  </a>");
                                    out.print("                 <a href='#' data-toggle='modal' data-target='#quickModal'");
                                    out.print("                     class='single-btn'>");
                                    out.print("                    <i class='fas fa-eye'></i>");
                                    out.print("                </a>");
                                    out.print("             </div>");
                                    out.print("         </div>");
                                    out.print("     </div>");
                                    out.print("     <div class='price-block'>");
                                    out.print("         <span class='price'>" + b.getPrice() + " VND</span>");
                                    out.print("    <del class='price-old'>" + b.getPrice() + " VND</del>");
                                    out.print("    <span class='price-discount'>20%</span>");
                                    out.print("     </div>");
                                    out.print("    </div>");
                                    out.print(" </div> ");
                                    out.print(" </div>     ");
                                }
                            }
                        %>
                    </div>
                </div>
                <div class="tab-pane" id="woman" role="tabpanel" aria-labelledby="woman-tab">
                    <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                         data-slick-setting='{
                         "autoplay": true,
                         "autoplaySpeed": 8000,
                         "slidesToShow": 5,
                         "rows":2,
                         "dots":true
                         }' data-slick-responsive='[
                         {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                         {"breakpoint":768, "settings": {"slidesToShow": 2} },
                         {"breakpoint":480, "settings": {"slidesToShow": 1} },
                         {"breakpoint":320, "settings": {"slidesToShow": 1} }
                         ]'>
                        <%
                            
                            if (bookList.size() > 0) {
                                for (Books b : bookList) {
                                    out.print("<div class='single-slide'>");
                                    out.print(" <div class='product-card'>");
                                    out.print("     <div class='product-header'>");
                                    out.print("        <a href='#' class='author'>");
                                    out.print(b.getAuthor());
                                    out.print("        </a>");
                                    out.print("        <h3><a href='productdetail?pid=" + b.getId() + "'>" + b.getTitle() );
                                    out.print("               </a></h3>");
                                    out.print("   </div>");
                                    out.print("   <div class='product-card--body'>");
                                    out.print("       <div class='card-image'>");
                                    out.print("           <img src='" + b.getThumbnail() +"' alt=''>");
                                    out.print("            <div class='hover-contents'>");
                                    out.print("               <a href='productdetail?pid="+ b.getId() + "' class='hover-image'>");
                                    out.print("                   <img src='"+ b.getThumbnail() +"' alt=''>");
                                    out.print("               </a>");
                                    out.print("               <div class='hover-btns'>");
                                    out.print("                   <a href='cart' class='single-btn'>");
                                    out.print("                       <i class='fas fa-shopping-basket'></i>");
                                    out.print("                   </a>");
                                    out.print("                   <a href='#' class='single-btn'>");
                                    out.print("                       <i class='fas fa-heart'></i>");
                                    out.print("                  </a>");
                                    out.print("                  <a href='#' class='single-btn'>");
                                    out.print("                      <i class='fas fa-random'></i>");
                                    out.print("                  </a>");
                                    out.print("                 <a href='#' data-toggle='modal' data-target='#quickModal'");
                                    out.print("                     class='single-btn'>");
                                    out.print("                    <i class='fas fa-eye'></i>");
                                    out.print("                </a>");
                                    out.print("             </div>");
                                    out.print("         </div>");
                                    out.print("     </div>");
                                    out.print("     <div class='price-block'>");
                                    out.print("         <span class='price'>" + b.getPrice() + " VND</span>");
                                    out.print("    <del class='price-old'>" + b.getPrice() + " VND</del>");
                                    out.print("    <span class='price-discount'>20%</span>");
                                    out.print("     </div>");
                                    out.print("    </div>");
                                    out.print(" </div> ");
                                    out.print(" </div>     ");
                                }
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--=================================
Best Seller Product
===================================== -->
<section class="section-margin bg-image section-padding-top section-padding"
         data-bg="layout/image/bg-images/best-seller-bg.jpg">
    <div class="container">
        <div class="section-title section-title--bordered mb-0">
            <h2>Best BEST SELLER BOOKS</h2>
        </div>
        <div class="best-seller-block">
            <div class="row align-items-center">
                <div class="col-lg-5 col-md-6">
                    <div class="author-image">
                        <img src="layout/image/others/best-seller-author.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-7 col-md-6">
                    <div class="sb-slick-slider product-slider product-list-slider multiple-row slider-border-multiple-row"
                         data-slick-setting='{
                         "autoplay": false,
                         "autoplaySpeed": 8000,
                         "slidesToShow":2,
                         "rows":2,
                         "dots":true
                         }' data-slick-responsive='[
                         {"breakpoint":1200, "settings": {"slidesToShow": 1} },
                         {"breakpoint":992, "settings": {"slidesToShow": 1} },
                         {"breakpoint":768, "settings": {"slidesToShow": 1} },
                         {"breakpoint":575, "settings": {"slidesToShow": 1} },
                         {"breakpoint":490, "settings": {"slidesToShow": 1} }
                         ]'>
                        <%
                            List<Books> bestSeller = (List<Books>) request.getAttribute("bestSeller");
                            if (bestSeller.size() > 0) {
                                for (Books b : bestSeller) {
                                    out.print("<div class='single-slide'>");
                                    out.print(" <div class='product-card'>");
                                    out.print("     <div class='product-header'>");
                                    out.print("        <a href='#' class='author'>");
                                    out.print(b.getAuthor());
                                    out.print("        </a>");
                                    out.print("        <h3><a href='productdetail?pid=" + b.getId() + "'>" + b.getTitle() );
                                    out.print("               </a></h3>");
                                    out.print("   </div>");
                                    out.print("   <div class='product-card--body'>");
                                    out.print("       <div class='card-image'>");
                                    out.print("           <img src='" + b.getThumbnail() +"' alt=''>");
                                    out.print("            <div class='hover-contents'>");
                                    out.print("               <a href='productdetail?pid="+ b.getId() + "' class='hover-image'>");
                                    out.print("                   <img src='"+ b.getThumbnail() +"' alt=''>");
                                    out.print("               </a>");
                                    out.print("               <div class='hover-btns'>");
                                    out.print("                   <a href='cart' class='single-btn'>");
                                    out.print("                       <i class='fas fa-shopping-basket'></i>");
                                    out.print("                   </a>");
                                    out.print("                   <a href='#' class='single-btn'>");
                                    out.print("                       <i class='fas fa-heart'></i>");
                                    out.print("                  </a>");
                                    out.print("                  <a href='#' class='single-btn'>");
                                    out.print("                      <i class='fas fa-random'></i>");
                                    out.print("                  </a>");
                                    out.print("                 <a href='#' data-toggle='modal' data-target='#quickModal'");
                                    out.print("                     class='single-btn'>");
                                    out.print("                    <i class='fas fa-eye'></i>");
                                    out.print("                </a>");
                                    out.print("             </div>");
                                    out.print("         </div>");
                                    out.print("     </div>");
                                    out.print("     <div class='price-block'>");
                                    out.print("         <span class='price'>" + b.getPrice() + " VND</span>");
                                    out.print("    <del class='price-old'>" + b.getPrice() + " VND</del>");
                                    out.print("    <span class='price-discount'>20%</span>");
                                    out.print("     </div>");
                                    out.print("    </div>");
                                    out.print(" </div> ");
                                    out.print(" </div>     ");
                                }
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--=================================
    Promotion Section Three
===================================== -->
<section class="section-margin">
    <div class="promo-wrapper promo-type-three">
        <a href="#" class="promo-image promo-overlay bg-image" data-bg="layout/image/bg-images/promo-banner-full.jpg">
        </a>
        <div class="promo-text w-100 ml-0">
            <div class="container">
                <div class="row w-100">
                    <div class="col-lg-7">
                        <h2>I Love This Idea!</h2>
                        <h3>Cover up front of book and
                            leave summary</h3>
                        <a href="#" class="btn btn--yellow">$78.09 - Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--=================================
Footer
===================================== -->
<!-- Modal view-->

<jsp:include page="footer.jsp" />