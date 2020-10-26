<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                        <th>Số Thứ Tự</th>
                                        <th>Tên</th>
                                        <th>Địa Chỉ Thư</th>
                                        <th>Nội Dung</th>
                                        <th>Ngày Gửi</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="fb" items="${fbList}" varStatus="loop">
                                        <c:if test="${fb.status == 0}">

                                            <tr class="odd gradeX" style="background: #c1d2de ">
                                                <td>${loop.index + 1}</td>
                                                <td>${fb.fullname}</td>
                                                <td>${fb.email}</td>
                                                <td>${fb.content}</td>                                           
                                                <td><fmt:formatDate value="${fb.createdAt}" type = "both" dateStyle = "short" timeStyle = "short"/></td>

                                                <td><button type="button"><i><a href="mailto:">phản hồi</a></i></button></td>
                                                <td>
                                                    <form method="post">
                                                        <input type="text" value="${fb.id}"  name="id" style="display: none"/>
                                                        <button class="btn btn-warning btn-circle"><i
                                                                class="fa fa-times"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${fb.status == 1}">
                                            <tr class="odd gradeX">
                                                <td>${loop.index + 1}</td>
                                                <td>${fb.fullname}</td>
                                                <td>${fb.email}</td>
                                                <td>${fb.content}</td>                                           
                                                <td><fmt:formatDate value="${fb.createdAt}" type = "both" dateStyle = "short" timeStyle = "short"/></td>

                                                <td><button type="button"><i><a href="mailto:">phản hồi</a></i></button></td>
                                                <td>
                                                    <form method="post">
                                                        <input type="text" value="${fb.id}"  name="id" style="display: none"/>
                                                        <button class="btn btn-warning btn-circle"><i
                                                                class="fa fa-times"></i></button>
                                                    </form>
                                                </td>
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

