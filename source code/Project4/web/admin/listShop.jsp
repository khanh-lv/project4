<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<jsp:include page="admin_header.jsp" />


<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="margin-top: 30px;">
                        Danh Sách 
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên Sách</th>
                                        <th>Tác Giả</th>
                                        <th>Nhà Xuất Bản</th>
                                        <th>Giá</th>
                                        <th>Hình Ảnh</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="books" items="${bookList}" varStatus="loop">
                                        <tr>
                                            <td>${loop.index + 1}</td>
                                            <td>${books.title}</td>
                                            <td>${books.author}</td>
                                            <td>${books.publishingCompany}</td>
                                            <td>${books.price}</td>
                                            <td><img src="${books.thumbnail}" style="height: 100px; width: 100px"/></td>

                                            <td>
                                                <form method="post">
                                                <a href="listShop?actiondelete%id=<c:out value="${books.id}"/>" >
                                                    <button class="btn btn-warning btn-circle"><i
                                                            class="fa fa-times"></i></button>
                                                </a>
                                                    </form>
                                            </td>

                                            <td><a href="addshop?id=${book.id}"><button type="button" class="btn btn-warning btn-circle"><i
                                                            class="fa fa-wrench"></i></button></a></td>
                                        </tr>

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
        </div>
    </div>
</div>

</div>


<jsp:include page="admin_footer.jsp" />