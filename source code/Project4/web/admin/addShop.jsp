<jsp:include page="admin_header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="margin-top: 30px;">
                        <a href="/Project4/listShop">Chuyển Tới Danh Sách </a>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form role="form" action="/Project4/addshop" method="post" enctype="multipart/form-data" >
                                    <div class="form-group">
                                        <label>Tên Sách</label>
                                        <input class="form-control" name="title" placeholder="Enter text"/>
                                    </div>
<!--                                    <div class="form-group">    
                                        <label>Chọn Thể Loại</label>
                                        <select class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>-->
                                    <div class="form-group">
                                        <label>Tác Giả</label>
                                        <input class="form-control" name="author" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Nhà Xuất Bản</label>
                                        <input class="form-control" name="publishingCompany" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Năm Xuất Bản</label>
                                        <input class="form-control" name="publishingYear" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Số Lượng</label>
                                        <input class="form-control" name="quantityInStock" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Giá</label>
                                        <input class="form-control" name="price" placeholder="Enter text"/>
                                    </div>                                           
                                    <div class="form-group">
                                        <label>Thông Tin Sách</label>
                                        <input class="form-control" name="shortDes" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Chọn Ảnh</label>
                                        <input type="file" name="file"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Giới Thiệu Sách</label>
                                        <textarea class="form-control" name="description" rows="3"></textarea>
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