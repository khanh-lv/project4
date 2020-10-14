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
                        Danh Sach
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Số Thứ Tự</th>
                                        <th>Tên</th>
                                        <th>Địa Chỉ Thư</th>
                                        <th>Nội Dung</th>
                                        <th>Ngày Gửi</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="fb" items="${fbList}" varStatus="loop">
                                        <tr>
                                            <td>${loop.index + 1}</td>
                                            <td>${fb.fullname}</td>
                                            <td>${fb.email}</td>
                                            <td>${fb.content}</td>                                           
                                            <td><fmt:formatDate value="${fb.createdAt}" pattern="yyyy-MM-dd"/></td>

                                            <td><button type="button"><i><a href="mailto:">phản hồi</a></i></button></td>
                                            <td><button type="button" class="btn btn-warning btn-circle"><i class="fa fa-wrench"></i></button></td>
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