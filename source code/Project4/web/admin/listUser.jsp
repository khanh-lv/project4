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
                                        <th>Fullname</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Phone</th>
                                    </tr>
                                </thead>
                                <tbody>
                                       <c:forEach var="user" items="${usList}" varStatus="loop">
                                        <tr>
                                            <td>${loop.index + 1}</td>
                                            <td>${user.fullname}</td>
                                            <td>${user.email}</td>
                                            <td>${user.address}</td>
                                            <td>${user.phone}</td>
                                            <td><a href="listUser?id=" class="btn btn-warning btn-circle"><i
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