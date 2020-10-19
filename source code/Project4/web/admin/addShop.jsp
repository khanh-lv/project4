<%@page import="entity.Books"%>
<%@page import="entity.Categories"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                        <input class="form-control" value="${books.title}" name="title" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">  
                                        <label>Chọn Thể Loại</label>
                                          
                                        <select class="form-control">         
                                            <%
                                            List<Categories> cateList = (List<Categories>)request.getAttribute("categories");
                                            Books book = (Books) request.getAttribute("books");
                                                for (Categories c : cateList) {
                                                    if(c.getStatus() == 1){
                                                        if(book.getCatId() != null && c.getId() == book.getCatId().getId()){
                                                            out.print("<option value='" + c.getId() + "' selected>" + c.getCatName() +" </option>");
                                                        } else{
                                                            out.print("<option value='" + c.getId() + "' >" + c.getCatName() +" </option>");
                                                        }
                                                    }
                                                }
                                            %>              
                                        
                                        </select>
                                         
                                    </div>
                                    <div class="form-group">
                                        <label>Tác Giả</label>
                                        <input class="form-control" value="${books.author}" name="author" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Nhà Xuất Bản</label>
                                        <input class="form-control" value="${books.publishingCompany}" name="publishingCompany" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Năm Xuất Bản</label>
                                        <input class="form-control" value="${books.publishingYear}" name="publishingYear" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Số Lượng</label>
                                        <input class="form-control" value="${books.quantityInStock}" name="quantityInStock" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Giá</label>
                                        <input class="form-control" value="${books.price}" name="price" placeholder="Enter text"/>
                                    </div>                                           
                                    <div class="form-group">
                                        <label>Thông Tin Sách</label>
                                        <input class="form-control" value="${books.shortDes}" name="shortDes" placeholder="Enter text"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Chọn Ảnh</label>
                                        <input type="file" value="${books.thumbnail}" name="file"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Giới Thiệu Sách</label>
                                        <textarea class="form-control" value="${books.description}" name="description" rows="3"></textarea>
                                    </div>
                                    <tr>
                                        <%
                                            if(request.getParameter("id") != null && Integer.parseInt(request.getParameter("id")) > 0) {
                                        %>
                                        <td>
                                            <button type="submit" class="btn btn-info btn-circle" name="action" value="update"><i
                                                    class="fa fa-check"></i></button>Update
                                        </td>
                                        <%
                                            } else {
                                        %>
                                        <td>
                                            <button type="submit" class="btn btn-info btn-circle" name="action" value="insert"><i
                                                    class="fa fa-check"></i></button>Add
                                        </td>
                                        <%
                                            }
                                        %>
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