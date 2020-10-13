<jsp:include page="admin_header.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <div id="page-wrapper">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading" style="margin-top: 30px;">
                                Basic Form Elements
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form role="form">
                                            <div class="form-group">
                                                <label>Text Input with Placeholder</label>
                                                <input class="form-control" placeholder="Enter text">
                                            </div>
                                            <div class="form-group">
                                                <label>Chọn Ảnh</label>
                                                <input type="file">
                                            </div>
                                            <div class="form-group">
                                                <label>Text areaaassa</label>
                                                <textarea class="form-control" rows="3"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Chọn Thể Loại</label>
                                                <select class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                </select>
                                            </div>

                                            <tr>
                                                <td>
                                                    <button type="button" class="btn btn-info btn-circle"><i
                                                            class="fa fa-check"></i></button>Add
                                                </td>
                                                <td><button type="button" class="btn btn-info btn-circle"><i
                                                            class="fa fa-rotate-right"></i></button>reset</td>
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