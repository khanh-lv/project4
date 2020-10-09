<jsp:include page="header.jsp" />

        <section class="breadcrumb-section">
			<h2 class="sr-only">Site Breadcrumb</h2>
			<div class="container">
				<div class="breadcrumb-contents">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active">Login</li>
						</ol>
					</nav>
				</div>
			</div>
		</section>
		<!--=============================================
    =            Login page content         =
    =============================================-->
		<main class="page-section inner-page-sec-padding-bottom">
			<div class="container">
				<div class="row">
                                    <div class="col-sm-12 col-md-12 col-lg-3 col-xs-12"></div>
					<div class="col-sm-12 col-md-12 col-lg-6 col-xs-12" >
                                            <form action="/Project4/login" method="post" onsubmit="return validate()">
							<div class="login-form" style="border:solid #62ab00 1px">
								<h4 class="login-title">Returning Customer</h4>
								<p><span class="font-weight-bold">I am a returning customer</span></p>
								<div class="row">
									<div class="col-md-12 col-12 mb--15">
										<label for="email">Enter your email address here...</label>
										<input class="mb-0 form-control" type="email" id="emai1"
											placeholder="Enter you email address here..." name="email">
                                                                                <div style="color: red; display: none; padding-left: 20px;" id="alertemail">This field is required</div>
									</div>
									<div class="col-12 mb--20">
										<label for="password">Password</label>
										<input class="mb-0 form-control" type="password" id="login-password" placeholder="Enter your password" name="password">
                                                                                <div style="color: red; display: none; padding-left: 20px;" id="alertpassword">This field is required</div>
									</div>
									<div class="col-md-12">
                                                                            <Button type="submit" class="btn btn-outlined">Login</button>
                                                                                <a href="/Project4/register" style="margin-left: 10px; color: #62ab00;">Do you have a account? Click here</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</main>
	</div>
<script>
    function validate(){
       
        var email = document.getElementById("email");
        var password = document.getElementById("login-password");
        
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
        
        return true;
    }
    
</script>


    <jsp:include page="footer.jsp" />
