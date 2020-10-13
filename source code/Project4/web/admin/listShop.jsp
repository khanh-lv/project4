<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />


<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="margin-top: 30px;">
                        Danh Sách Phản Hồi
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
                                       <c:forEach var="book" items="${bookList}" varStatus="loop">
                                        <tr>
                                            <td>${loop.index + 1}</td>
                                            <td>${book.title}</td>
                                            <td>${book.author}</td>
                                            <td>${book.publishingCompany}</td>
                                            <td>${book.price}</td>
                                            <td><img src="${book.thumbnail}" style="height: 100px; width: 100px"/></td>
                                            <!--nut xoa nhé ong!-->
<!--                                            doan nay ong nghi cach truyen cai id cua sach vao cai id do.-->
                                            <td><a href="listShop?id=" class="btn btn-warning btn-circle"><i
                                                        class="fa fa-times"></i></a></td>
                                            <td><button type="button" class="btn btn-warning btn-circle"><i
                                                        class="fa fa-wrench"></i></button></td>
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