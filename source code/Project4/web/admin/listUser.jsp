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
                                        <th>Fullname</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Phone</th>
                                        <th></th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="users" items="${usList}" varStatus="loop">
                                        <c:if test="${users.status == 0}">

                                        <tr class="odd gradeX" style="background: #0d6aad ">
                                            <td>${loop.index + 1}</td>
                                            <td>${users.fullname}</td>
                                            <td>${users.email}</td>
                                            <td>${users.address}</td>
                                            <td>${users.phone}</td>   
                                            <td>
                                                <form method="post">
                                                    <input type="text" value="${users.id}"   name="id" style="display: none"/>
                                                    <button class="btn btn-warning btn-circle"><i
                                                            class="fa fa-times"></i></button>
                                                </form>
                                            </td>
                                            
                                        </tr>
                                        </c:if>
                                         <c:if test="${users.status == 1}">

                                        <tr class="odd gradeX">
                                            <td>${loop.index + 1}</td>
                                            <td>${users.fullname}</td>
                                            <td>${users.email}</td>
                                            <td>${users.address}</td>
                                            <td>${users.phone}</td>   
                                            <td>
                                                <form method="post">
                                                    <input type="text" value="${users.id}"   name="id" style="display: none"/>
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