<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<jsp:include page="admin_header.jsp" />




<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Danh Sách</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                                DataTables Advanced Tables
                            </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover"
                                        id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên Sách</th>
                                        <th>Tác Giả</th>
                                        <th>Nhà Xuất Bản</th>
                                        <th>Giá</th>
                                        <th>Hình Ảnh</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="books" items="${bookList}" varStatus="loop">
                                        <c:if test="${books.status == 0}">

                                        <tr class="odd gradeX" style="background: #c1d2de ">
                                            <td>${loop.index + 1}</td>
                                            <td>${books.title}</td>
                                            <td>${books.author}</td>
                                            <td>${books.publishingCompany}</td>
                                            <td>${books.price}</td>
                                            <td><img src="${books.thumbnail}" style="height: 100px; width: 100px"/></td>
                                            <td>
                                                <form method="post">
                                                    <input type="text" value="${books.id}"   name="id" style="display: none"/>
                                                    <button class="btn btn-warning btn-circle"><i
                                                            class="fa fa-times"></i></button>
                                                </form>
                                            </td>
                                            <td><a href="addshop?id=${books.id}"><button type="button" class="btn btn-warning btn-circle">
                                                        <i class="fa fa-wrench"></i>
                                                    </button>
                                            </a></td>
                                        </tr>
                                        </c:if>
                                         <c:if test="${books.status == 1}">

                                        <tr class="odd gradeX">
                                            <td>${loop.index + 1}</td>
                                            <td>${books.title}</td>
                                            <td>${books.author}</td>
                                            <td>${books.publishingCompany}</td>
                                            <td>${books.price}</td>
                                            <td><img src="${books.thumbnail}" style="height: 100px; width: 100px"/></td>
                                            <td>
                                                <form method="post">
                                                    <input type="text" value="${books.id}"   name="id" style="display: none"/>
                                                    <button class="btn btn-warning btn-circle"><i
                                                            class="fa fa-times"></i></button>
                                                </form>
                                            </td>
                                            <td><a href="addshop?id=${books.id}"><button type="button" class="btn btn-warning btn-circle">
                                                        <i class="fa fa-wrench"></i>
                                                    </button>
                                            </a></td>
                                        </tr>
                                        </c:if>
                                        
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>


<jsp:include page="admin_footer.jsp" />