<%-- 
    Document   : admin_header
    Created on : Oct 8, 2020, 5:27:47 PM
    Author     : PC
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>DashBoard</title>
        
        <!-- DataTables CSS -->
    <link href="admin/css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="admin/css/dataTables/dataTables.responsive.css" rel="stylesheet">

        <!-- Bootstrap Core CSS -->
        <link href="admin/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="admin/css/metisMenu.min.css" rel="stylesheet">

        <!-- Timeline CSS -->
        <link href="admin/css/timeline.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="admin/css/startmin.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <!-- <link href="admin/css/morris.css" rel="stylesheet"> -->

        <!-- Custom Fonts -->
        <link href="admin/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/respond/js/1.4.2/respond.min.js"></script>
            <![endif]-->

    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/Project4/admin">Startmin</a>
                </div>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <ul class="nav navbar-nav navbar-left navbar-top-links">
                    <li><a href="/Project4/home"><i class="fa fa-home fa-fw"></i> Website</a></li>
                </ul>
                <%
                    if (session.getAttribute("status") == null) {

                        out.print("<ul class='nav navbar-nav navbar-right navbar-top-links'>");
                        out.print("<li><a href='/Project4/loginadmin'> Login </a></li>");
                        out.print("</ul>");

                    }
                    if (session.getAttribute("status") != null) {
                        int status = (Integer) session.getAttribute("status");
                        if (status == 1) {
                            out.print("<ul class='nav navbar-right navbar-top-links'>");
                            out.print("<li class='dropdown'>");
                            out.print("<a class='dropdown-toggle' data-toggle='dropdown' href='#'>");
                            out.print(" <i class='fa fa-user fa-fw'></i> Admin <b class='caret'></b>");
                            out.print("</a>");
                            out.print(" <ul class='dropdown-menu dropdown-user'>");
                            out.print("<li><a href='#'><i class='fa fa-user fa-fw'></i> User Profile</a>");
                            out.print("</li>");
                            out.print("<li><a href='#'><i class='fa fa-gear fa-fw'></i> Settings</a>");
                            out.print("</li>");
                            out.print("<li class='divider'></li>");
                            out.print("<li><a href='logoutadmin'><i class='fa fa-sign-out fa-fw'></i> Logout</a>");
                            out.print("</li>");
                            out.print("</ul>");
                            out.print("</li>");
                            out.print("</ul>");
                        }
                    }
                %>

               
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li>
                                <a href="/Project4/admin" class="active"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i>Phản Hồi<span class="fa arrow"></span></a>
                                
                                    <% 
                                        if (session.getAttribute("status") != null) {
                                        int status = (Integer) session.getAttribute("status");
                                            if (status == 1) {
                                                out.print("<ul class='nav nav-second-level'>");
                                                out.print("<li>");
                                                out.print("<a href='/Project4/listFeedback'>Danh Sách</a>");
                                                out.print("</li>");
                                                out.print("</ul>");
                                            }
                                        }
                                    
                                    %>
                               
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i>Cửa Hàng <span class="fa arrow"></span></a>
                                <% 
                                        if (session.getAttribute("status") != null) {
                                        int status = (Integer) session.getAttribute("status");
                                            if (status == 1) {
                                                out.print("<ul class='nav nav-second-level'>");
                                                out.print("<li>");
                                                out.print("<a href='/Project4/listShop'>Danh Sách</a>");
                                                out.print("</li>");
                                                out.print("<li>");
                                                out.print("<a href='/Project4/addshop'>Thêm Mới</a>");
                                                out.print("</li>");
                                                out.print("</ul>");
                                            }
                                        }
                                    
                                    %>            
                                <!-- /.nav-second-level -->
                            </li>

                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i>Thể Loại<span class="fa arrow"></span></a>
                                <% 
                                        if (session.getAttribute("status") != null) {
                                        int status = (Integer) session.getAttribute("status");
                                            if (status == 1) {
                                                out.print("<ul class='nav nav-second-level'>");
                                                out.print("<li>");
                                                out.print("<a href='/Project4/theloai'>Danh Sách</a>");
                                                out.print("</li>");
                                                out.print("<li>");
                                                out.print("<a href='/Project4/themtheloai'>Thêm Mới</a>");
                                                out.print("</li>");
                                                out.print("</ul>");
                                            }
                                        }
                                    
                                    %>                      
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i>User<span class="fa arrow"></span></a>
                                <% 
                                        if (session.getAttribute("status") != null) {
                                        int status = (Integer) session.getAttribute("status");
                                            if (status == 1) {
                                                out.print("<ul class='nav nav-second-level'>");
                                                out.print("<li>");
                                                out.print("<a href='/Project4/listuser'>Danh Sách</a>");
                                                out.print("</li>");
                                                out.print("<li>");
                                                out.print("<a href='/Project4/addadmin'>Them Admin</a>");
                                                out.print("</li>");
                                                out.print("</ul>");
                                            }
                                        }
                                    
                                    %>            
                                <!-- /.nav-second-level -->
                            </li>    

                        </ul>


                    </div>
                </div>
            </nav>
