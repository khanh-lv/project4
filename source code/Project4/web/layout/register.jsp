<jsp:include page="header.jsp" />

        <section class="breadcrumb-section">
			<h2 class="sr-only">Site Breadcrumb</h2>
			<div class="container">
				<div class="breadcrumb-contents">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active">Register</li>
						</ol>
					</nav>
				</div>
			</div>
		</section>
		<!--=============================================
    =            Register page content         =
    =============================================-->
		<main class="page-section inner-page-sec-padding-bottom">
			<div class="container">
				<div class="row">
                                        <div class="col-sm-12 col-md-12 col-lg-3 col-xs-12"></div>
                                        <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb--30 mb-lg--0" style="border:solid #62ab00 1px">
						<!-- Login Form s-->
						<form action="#">
							<div class="login-form">
								<h4 class="login-title">New Customer</h4>
								<p><span class="font-weight-bold">I am a new customer</span></p>
								<div class="row">
									<div class="col-md-12 col-12 mb--15">
										<label for="fullname">Full Name</label>
										<input class="mb-0 form-control" type="text" id="fullname"
											placeholder="Enter your full name" name="fullname">
									</div>
									<div class="col-12 mb--20">
										<label for="email">Email</label>
										<input class="mb-0 form-control" type="email" id="email" placeholder="Enter Your Email Address Here.." name="email">
									</div>
									<div class="col-lg-6 mb--20">
										<label for="password">Password</label>
										<input class="mb-0 form-control" type="password" id="password" placeholder="Enter your password" name="password">
									</div>
									<div class="col-lg-6 mb--20">
										<label for="password">Repeat Password</label>
										<input class="mb-0 form-control" type="password" id="repeat-password" placeholder="Repeat your password" name="repassword">
									</div>
                                                                        <div class="col-md-12 col-12 mb--15s">
										<label for="address">Address</label>
										<input class="mb-0 form-control" type="text" id="address" placeholder="Enter your address" name="address">
									</div>
                                                                        <div class="col-md-12 col-12 mb--15">
										<label for="phone">Phone</label>
										<input class="mb-0 form-control" type="number" id="phone" placeholder="Enter your phone" name="phone">
									</div>
									<div class="col-md-12">
										<a href="#" class="btn btn-outlined">Register</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</main>
	</div>



    <jsp:include page="footer.jsp" />
