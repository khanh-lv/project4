<jsp:include page="admin_header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="margin-top: 30px;">
                        <a href="/Project4/theloai">Chuyển Tới Danh Sách </a>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form  action="/Project4/themtheloai" method="post" >
                                    <div class="form-group">
                                        <label>Tên Thể Loại</label>
                                        <input class="form-control" name="catName" placeholder="Enter text"/>
                                    </div>
                                    <tr>
                                        <td>
                                            <button type="submit" class="btn btn-info btn-circle"><i
                                                    class="fa fa-check"></i></button>Add
                                        </td>
                                        <td>
                                            <button type="reset" class="btn btn-info btn-circle"><i
                                                    class="fa fa-rotate-right"></i></button>reset
                                        </td>

                                    </tr>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<jsp:include page="admin_footer.jsp" />