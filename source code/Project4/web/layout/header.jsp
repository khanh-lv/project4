<%-- 
    Document   : header
    Created on : Sep 26, 2020, 1:23:32 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>BookStore</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="layout/css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="layout/css/main.css" />
    <link rel="shortcut icon" type="image/x-icon" href="layout/image/favicon.ico">
</head>

<body>
    <div class="site-wrapper" id="top">
        <div class="site-header d-none d-lg-block">
            <div class="header-middle pt--10 pb--10">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 ">
                            <a href="/Project4/home" class="site-brand">
                                <img src="layout/image/logo.png" alt="">
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <div class="header-phone ">
                                <div class="icon">
                                    <i class="fas fa-headphones-alt"></i>
                                </div>
                                <div class="text">
                                    <p>Free Support 24/7</p>
                                    <p class="font-weight-bold number">+Aptech@gmail.com</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="main-navigation flex-lg-right">
                                <ul class="main-menu menu-right ">
                                    <li class="menu-item has-children">
                                        <a href="/Project4/home">Home </a>
                                    </li>
                                    <li class="menu-item has-children mega-menu">
                                        <a href="/Project4/shop">shop</a>                                      
                                    </li>                               
                                    <li class="menu-item">
                                        <a href="/Project4/contact">Contact</a>
                                    </li>
                                    <%
                                        
                                        
                                        if(session.getAttribute("status") != null){
                                            int status = (Integer) session.getAttribute("status");
                                            
                                            if(status == 1){
                                                out.print("<li class='menu-item has-children'>");
                                                out.print(" <a href='/Project4/myaccount'>My Account </a>");
                                                out.print("</li>");
                                            }
                                        }
                                    %>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom pb--10">
                <div class="container">
                    <div class="row align-items-center">                       
                        <div class="col-lg-8">
                            <div class="header-search-block">
                                <form action="shop" method="get">
                                    <input type="text" name="search" placeholder="tìm kiếm ở đây">
                                    <button type="submit">Search</button>
                                </form>
                                
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="main-navigation flex-lg-right">
                                <div class="cart-widget">
                                    <%
                                        if(session.getAttribute("status") == null){
                                            
                                                out.print("<div class='login-block'>");
                                                out.print("<a href='/Project4/login' class='font-weight-bold'>Login</a>");
                                                out.print("</div>");
                                            
                                        }
                                    
                                    %>    
                                    <div class="cart-block">
                                        <div class="cart-total">
                                            <span class="text-number">
                                                1
                                            </span>
                                            <span class="text-item">
                                                Shopping Cart
                                            </span>
                                            <span class="price">
                                                £0.00
                                                <i class="fas fa-chevron-down"></i>
                                            </span>
                                        </div>
                                        <div class="cart-dropdown-block">
                                            <div class=" single-cart-block ">
                                                <div class="cart-product">
                                                    <a href="/Project4/productdetail" class="image">
                                                        <img src="layout/image/products/cart-product-1.jpg" alt="">
                                                    </a>
                                                    <div class="content">
                                                        <h3 class="title"><a href="/Project4/productdetail">Kodak PIXPRO
                                                                Astro Zoom AZ421 16 MP</a>
                                                        </h3>
                                                        <p class="price"><span class="qty">1 ×</span> £87.34</p>
                                                        <button class="cross-btn"><i class="fas fa-times"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class=" single-cart-block ">
                                                <div class="btn-block">
                                                    <a href="/Project4/cart" class="btn">View Cart <i
                                                            class="fas fa-chevron-right"></i></a>
                                                    <a href="/Project4/checkout" class="btn btn--primary">Check Out <i
                                                            class="fas fa-chevron-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="site-mobile-menu">
            <header class="mobile-header d-block d-lg-none pt--10 pb-md--10">
                <div class="container">
                    <div class="row align-items-sm-end align-items-center">
                        <div class="col-md-4 col-7">
                            <a href="/Project4/home" class="site-brand">
                                <img src="layout/image/logo.png" alt="">
                            </a>
                        </div>
                        <div class="col-md-3 col-5  order-md-2 text-right">
                            <div class="mobile-header-btns header-top-widget">
                                <ul class="header-links">
                                    <li class="sin-link">
                                        <a href="/Project4/cart" class="cart-link link-icon"><i class="ion-bag"></i></a>
                                    </li>
                                    <li class="sin-link">
                                        <a href="javascript:" class="link-icon hamburgur-icon off-canvas-btn"><i
                                                class="ion-navicon"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!--Off Canvas Navigation Start-->
            <aside class="off-canvas-wrapper">
                <div class="btn-close-off-canvas">
                    <i class="ion-android-close"></i>
                </div>
                <div class="off-canvas-inner">
                    <!-- search box start -->
                    <div class="search-box offcanvas">
                        <form action="shop" method="get">
                            <input type="text" placeholder="Search Here" name="search">
                            <button class="search-btn" type="submit"><i class="ion-ios-search-strong"></i></button>
                        </form>
                    </div>
                    <!-- search box end -->
                    <!-- mobile menu start -->
                    <div class="mobile-navigation">
                        <!-- mobile menu navigation start -->
                        <nav class="off-canvas-nav">
                            <ul class="mobile-menu main-mobile-menu">
                                <li class="menu-item-has-children">
                                    <a href="/Project4/home">Home</a>                                 
                                </li>
                                <li class="menu-item-has-children   ">
                                    <a href="/Project4/shop">Shop</a>                               
                                </li>
                                <li><a href="/Project4/contact">Contact</a></li>
                                <%    
                                        if(session.getAttribute("status") != null){
                                            int status = (Integer) session.getAttribute("status");
                                            if(status == 1){          
                                                out.print("<li><a href='/Project4/myaccount'>MyAccount</a></li>"); 
                                            }
                                        }
                                    %>                             
                            </ul>
                        </nav>
                        <!-- mobile menu navigation end -->
                    </div>
                    <!-- mobile menu end -->
                    <nav class="off-canvas-nav">
                        <ul class="mobile-menu menu-block-2">  
                            <%    
                                        if(session.getAttribute("status") != null){
                                            int status = (Integer) session.getAttribute("status");
                                            if(status == 1){          
                                                out.print("<li class='menu-item-has-children'>"); 
                                                out.print("<a href='#'>My Account <i class='fas fa-angle-down'></i></a>"); 
                                                out.print("<ul class='sub-menu'>"); 
                                                out.print("<li><a href='#'>My Account</a></li>"); 
                                                out.print("<li><a href='#'>Order History</a></li>"); 
                                                out.print(" <li><a href='#'>Transactions</a></li>"); 
                                                out.print("</ul>"); 
                                                out.print("</li>"); 
                                            }
                                        }
                                    %>                           
                        </ul>
                    </nav>
                    <div class="off-canvas-bottom">
                        <div class="contact-list mb--10">
                            <a href="#" class="sin-contact"><i class="fas fa-mobile-alt"></i>(12345) 78790220</a>
                            <a href="#" class="sin-contact"><i class="fas fa-envelope"></i>examle@handart.com</a>
                        </div>
                        <div class="off-canvas-social">
                            <a href="#" class="single-icon"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="single-icon"><i class="fas fa-rss"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-youtube"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </aside>
            <!--Off Canvas Navigation End-->
        </div>
        <!--follow menu -->
        <div class="sticky-init fixed-header common-sticky">
            <div class="container d-none d-lg-block">
                <div class="row align-items-center">
                    <div class="col-lg-4">
                        <a href="/Project4/home" class="site-brand">
                            <img src="layout/image/logo.png" alt="">
                        </a>
                    </div>
                    <div class="col-lg-8">
                        <div class="main-navigation flex-lg-right">
                            <ul class="main-menu menu-right ">
                                <li class="menu-item has-children">
                                    <a href="/Project4/home">Home </a>
                                </li>
                                <li class="menu-item has-children mega-menu">
                                    <a href="/Project4/shop">shop</a>                                      
                                </li>                               
                                <li class="menu-item">
                                    <a href="/Project4/contact">Contact</a>
                                </li>
                                <%    
                                        if(session.getAttribute("status") != null){
                                            int status = (Integer) session.getAttribute("status");
                                            if(status == 1){
                                                out.print("<li class='menu-item has-children'>");
                                                out.print("<a href='/Project4/myaccount'>My Account</a></li>"); 
                                                out.print("</li>");
                                            }
                                        }
                                    %>              
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
