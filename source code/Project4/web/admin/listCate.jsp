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
                                        <th>Tên Thể Loại</th>
                                        <th>Ngày Tạo</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cate" items="${cateList}" varStatus="loop"> 
                                        <tr  class="odd gradeX">
                                            <td>${loop.index + 1}</td>
                                            <td>${cate.catName}</td>
                                            <td><fmt:formatDate value="${cate.createdAt}" pattern="yyyy-MM-dd"/></td>

                                            <td><a class="btn btn-warning btn-circle"><i
                                                        class="fa fa-times"></i></a></td>
                                            <td><a href="themtheloai?id=${cate.id}"><button type="button" class="btn btn-warning btn-circle">
                                                        <i class="fa fa-wrench"></i>
                                                    </button>
                                            </a></td>
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
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>



<jsp:include page="admin_footer.jsp" />
