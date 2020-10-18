<%
    if(request.getAttribute("message") != null){
        out.print("<script>alert('"+ request.getAttribute("message") +"')</script>");
    }
    if(request.getAttribute("message1") != null){
        out.print("<script>alert('"+ request.getAttribute("message1") +"')</script>");
    }
%>
<jsp:include page="admin_header.jsp" />
<script>
     function validateForm(){    
        var fullname = document.getElementById("fullname");
        var email = document.getElementById("email");
        var password = document.getElementById("password");
        var repassword = document.getElementById("repassword");
        var address = document.getElementById("address");
        var phone = document.getElementById("phone"); 
        
        if (password.value!= repassword.value) {
            var element = document.getElementById("alertpass");
            element.style.display = "";
            password.style.border = "solid red 1px";
            repassword.style.border = "solid red 1px";
            
            return false;
        }
        if (fullname.value == ""){
            var element = document.getElementById("alertfullname");
            element.style.display = "";
            fullname.style.border = "solid red 1px";

            return false;
        }
        
        if (email.value == ""){
            var element = document.getElementById("alertemail");
            element.style.display = "";
            email.style.border = "solid red 1px";

            return false;
        }
        
        if (password.value == ""){
            var element = document.getElementById("alertpassword");
            element.style.display = "";
            password.style.border = "solid red 1px";

            return false;
        }
        
        if (repassword.value == ""){
            var element = document.getElementById("alertrepass");
            element.style.display = "";
            repassword.style.border = "solid red 1px";

            return false;
        }
        
        if (address.value == ""){
            var element = document.getElementById("alertaddress");
            element.style.display = "";
            address.style.border = "solid red 1px";

            return false;
        }
        
        if (phone.value == ""){
            var element = document.getElementById("alertphone");
            element.style.display = "";
            phone.style.border = "solid red 1px";

            return false;
        }
        
//        if (fullname == "" || email == "" || password == "" || repassword == "" || address == "" || phone == "") {
//            alert("Register fail, please enter full registration infomation");
//            return false;
//        }  
    }   
</script>
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
                    <div class="panel-body"style="margin-top: 30px;">
                        <div class="row">
                            <div class="col-lg-6">
                                <form action="/Project4/addadmin" method="post" onsubmit=" return validateForm()" >
                                    <div class="form-group">
                                        <label>Fullname</label>
                                        <input id="fullname" type="text" class="form-control" name="fullname" placeholder="Enter text" 
                                               pattern="[a-zA-Z ]{1,15}" 
                                       title="Fullname must contain no special symbols and must not exceed 50 characters in length"
                                               >
                                    </div>
                                    <div style="color: red; display: none; padding-left: 20px;" id="alertfullname">This field is required</div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input id="email" type="email" class="form-control" name="email" placeholder="Enter text">
                                        <div style="color: red; display: none; padding-left: 20px;" id="alertemail">This field is required</div>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input id="password" type="password" class="form-control" name="password" placeholder="Enter text" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,15}" 
                                       title="Password contains at least one uppercase English letter, at least one lowercase English letter, at least one digit, contains no special characters and has a length of 8 to 15">
                                        <div style="color: red; display: none; padding-left: 20px;" id="alertpassword">This field is required</div>
                                    </div>
                                    <div class="form-group">
                                        <label>Re Password</label>
                                        <input id="repassword" type="password" class="form-control" name="repassword" placeholder="Enter text">
                                        <div style="color: red; display: none; padding-left: 20px;" id="alertrepass">This field is required</div>
                                <div style="color: red; display: none; padding-left: 20px;" id="alertpass">Password and repassword is incorret</div>
                                    </div>
                                    <div class="form-group">
                                        <label>Address</label>
                                        <input id="address" type="text" class="form-control" name="address" placeholder="Enter text" pattern="[a-zA-Z, ]{1,250}" 
                                       title="It must not contain #?!@$%^&*- and must be no more than 250 characters long">
                                        
                                    </div>
                                    <div style="color: red; display: none; padding-left: 20px;" id="alertaddress">This field is required</div>
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input id="phone" type="text" class="form-control" name="phone" placeholder="Enter text" pattern="[0-9]{10,15}" 
                                       title="Phone numbers are 10 to 15 in length">
                                    </div>  
                                    <div style="color: red; display: none; padding-left: 20px;" id="alertphone">This field is required</div>
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
