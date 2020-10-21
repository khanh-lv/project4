<%
    if(request.getAttribute("message") != null){
        out.print("<script>alert('"+ request.getAttribute("message") +"')</script>");
    }
%>
<script>
    function validate(){
        var password = document.getElementById("current-pwd")
        var newpass = document.getElementById("new-pwd");
        var newrepass = document.getElementById("confirm-pwd");
        
        if (password.value == ""){
        var element = document.getElementById("alertpassword");
        element.style.display = "";
        password.style.border = "solid red 1px";
        
        return false;
        }
        
        if (newpass.value == ""){
        var element = document.getElementById("alertnewpass");
        element.style.display = "";
        newpass.style.border = "solid red 1px";
        
        return false;
        }
        
        
        if (newrepass.value == ""){
        var element = document.getElementById("alertrepass");
        element.style.display = "";
        newrepass.style.border = "solid red 1px";
        
        return false;
        }
        
        if (newpass.value!= newrepass.value) {
            var element = document.getElementById("alertpass");
            element.style.display = "";
            newpass.style.border = "solid red 1px";
            newrepass.style.border = "solid red 1px";
            
            return false;
        }
        
        return true;
    }
    
</script>
<%@page import="entity.Users"%>
<jsp:include page="header.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Users user = (Users) session.getAttribute("user"); %>
<section class="breadcrumb-section">
	<h2 class="sr-only">Site Breadcrumb</h2>
	<div class="container">
		<div class="breadcrumb-contents">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">My Account</li>
				</ol>
			</nav>
		</div>
	</div>
</section>
<div class="page-section inner-page-sec-padding">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="row">
					<!-- My Account Tab Menu Start -->
					<div class="col-lg-3 col-12">
						<div class="myaccount-tab-menu nav" role="tablist">
							<a href="#dashboad" class="active" data-toggle="tab"><i class="fas fa-tachometer-alt"></i>Dashboard</a>
							<a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i> Orders</a>
                                                        <a href="#address-edit" data-toggle="tab"><i class="fa fa-map-marker"></i> address</a>
							<a href="#account-info" data-toggle="tab"><i class="fa fa-user"></i> Account Details</a>
							<a href = "logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
						</div>
					</div>
					<!-- My Account Tab Menu End -->
					<!-- My Account Tab Content Start -->
					<div class="col-lg-9 col-12 mt--30 mt-lg--0">
						<div class="tab-content" id="myaccountContent">
							<!-- Single Tab Content Start -->
							<div class="tab-pane fade show active" id="dashboad" role="tabpanel">
								<div class="myaccount-content">
									<h3>Dashboard</h3>
									<div class="welcome mb-20">
										<p>Hello, <strong><%=user.getFullname()%></strong> (If Not <strong><%=user.getFullname()%>
												</strong>, please <a href="logout">
												Logout</a>)</p>
									</div>
									<p class="mb-0">From your account dashboard. you can easily check &amp; view
										your
										recent orders, manage your shipping and billing addresses and edit your
										password and account details.</p>
								</div>
							</div>
							<!-- Single Tab Content End -->
							<!-- Single Tab Content Start -->
							<div class="tab-pane fade" id="orders" role="tabpanel">
								<div class="myaccount-content">
									<h3>Orders</h3>
									<div class="myaccount-table table-responsive text-center">
										<table class="table table-bordered">
											<thead class="thead-light">
												<tr>
													<th>No</th>
													<th>Name</th>
													<th>Date</th>
													<th>Status</th>
													<th>Total</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Mostarizing Oil</td>
													<td>Aug 22, 2018</td>
													<td>Pending</td>
													<td>$45</td>
													<td><a href="cart.html" class="btn">View</a></td>
												</tr>
												<tr>
													<td>2</td>
													<td>Katopeno Altuni</td>
													<td>July 22, 2018</td>
													<td>Approved</td>
													<td>$100</td>
													<td><a href="cart.html" class="btn">View</a></td>
												</tr>
												<tr>
													<td>3</td>
													<td>Murikhete Paris</td>
													<td>June 12, 2017</td>
													<td>On Hold</td>
													<td>$99</td>
													<td><a href="cart.html" class="btn">View</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>											
							<!-- Single Tab Content End -->
							<!-- Single Tab Content Start -->
							<div class="tab-pane fade" id="address-edit" role="tabpanel">
								<div class="myaccount-content">
									<h3>Billing Address</h3>
									<address>
										<p>Fullname: <strong><%=user.getFullname()%></strong></p>
										<p>Address: <%=user.getAddress() %></p>
										<p>Phone Number: <%=user.getPhone() %></p>
									</address>
									<a href="#" class="btn btn--primary"><i class="fa fa-edit"></i>Edit
										Address</a>
								</div>
							</div>
							<!-- Single Tab Content End -->
							<!-- Single Tab Content Start -->
							<div class="tab-pane fade" id="account-info" role="tabpanel">
								<div class="myaccount-content">
									<h3>Account Details</h3>
									<div class="account-details-form">
										<form action="/Project4/changepass" method="post" onsubmit="return validate()">
											<div class="row">
												
												<div class="col-12  mb--30">
													<input id="display-name" placeholder="Fullname" type="text"
                                                                                                               value="<%=user.getFullname()%>" name="fullname">
                                                                                                       
												</div>
												<div class="col-12  mb--30">
													<input id="email" placeholder="Email Address" type="email"
                                                                                                               value="<%=user.getEmail()%>" name="email">
												</div>
												<div class="col-12  mb--30">
													<h4>Password change</h4>
												</div>
												<div class="col-12  mb--30">
													<input id="current-pwd" placeholder="Current Password"
                                                                                                               type="password" name="password" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,15}" 
                                                                                                               title="Password contains at least one uppercase English letter, at least one lowercase English letter, at least one digit, contains no special characters and has a length of 8 to 15">
                                                                                                        <div style="color: red; display: none; padding-left: 20px;" id="alertpassword">This field is required</div>
												</div>
												<div class="col-lg-6 col-12  mb--30">
                                                                                                    <input id="new-pwd" placeholder="New Password" type="password" name="newpass" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,15}" 
                                                                                                            title="Password contains at least one uppercase English letter, at least one lowercase English letter, at least one digit, contains no special characters and has a length of 8 to 15">
                                                                                                    <div style="color: red; display: none; padding-left: 20px;" id="alertnewpass">This field is required</div>
												</div>
												<div class="col-lg-6 col-12  mb--30">
													<input id="confirm-pwd" placeholder="Confirm Password"
                                                                                                               type="password" name="newrepass">
                                                                                                        <div style="color: red; display: none; padding-left: 20px;" id="alertrepass">This field is required</div>
                                                                                                        <div style="color: red; display: none; padding-left: 20px;" id="alertpass"> New password and new repassword is incorret</div>
												</div>
												<div class="col-12">
                                                                                                    <button type="submit" class="btn btn--primary">Save Changes</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!-- Single Tab Content End -->
						</div>
					</div>
					<!-- My Account Tab Content End -->
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<jsp:include page="footer.jsp" />