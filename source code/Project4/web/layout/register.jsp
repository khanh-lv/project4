
<jsp:include page="header.jsp" />

<section class="breadcrumb-section">
    <h2 class="sr-only">Site Breadcrumb</h2>
    <div class="container">
        <div class="breadcrumb-contents">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Project4/home">Home</a></li>
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
            <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb--30 mb-lg--0" >
                <!-- Login Form s-->
                <form action="/Project4/register" method="post" onsubmit="return validate()">
                    <div class="login-form" style="border:solid #62ab00 1px">
                        <h4 class="login-title">New Customer</h4>
                        <p><span class="font-weight-bold">I am a new customer</span></p>
                        <div class="row">
                            <div class="col-md-12 col-12 mb--15">
                                <label for="fullname">Full Name</label>
                                <input class="mb-0 form-control" type="text" id="fullname"
                                       placeholder="Enter your full name" name="fullname">
                            </div>
                            <div style="color: red; display: none; padding-left: 20px;" id="alert">This field is required</div>
                            <div class="col-12 mb--20">
                                <label for="email">Email</label>
                                <input class="mb-0 form-control" type="email" id="email" placeholder="Enter Your Email Address Here.." name="email">
                                <div style="color: red; display: none; padding-left: 20px;" id="alertemail">This field is required</div>
                            </div>                  
                            <div class="col-lg-6 mb--20">
                                <label for="password">Password</label>
                                <input class="mb-0 form-control" type="password" id="password" placeholder="Enter your password" name="password">
                                <div style="color: red; display: none; padding-left: 20px;" id="alertpassword">This field is required</div>
                            </div>
                            
                            <div class="col-lg-6 mb--20">
                                <label for="password">Repeat Password</label>
                                <input class="mb-0 form-control" type="password" id="repeat-password" placeholder="Repeat your password" name="repassword">
                                <div style="color: red; display: none; padding-left: 20px;" id="alertrepass">This field is required</div>
                                <div style="color: red; display: none; padding-left: 20px;" id="alertpass">Password and repassword is incorret</div>
                            </div>
                            
                            <div class="col-md-12 col-12 mb--15s">
                                <label for="address">Address</label>
                                <input class="mb-0 form-control" type="text" id="address" placeholder="Enter your address" name="address">
                            </div>
                            <div style="color: red; display: none; padding-left: 20px;" id="alertaddress">This field is required</div>
                            <div class="col-md-12 col-12 mb--15">
                                <label for="phone">Phone</label>
                                <input class="mb-0 form-control" type="number" id="phone" placeholder="Enter your phone" name="phone">
                            </div>
                            <div style="color: red; display: none; padding-left: 20px;" id="alertphone">This field is required</div>
                            <div class="col-md-12">
                                <Button type="submit" class="btn btn-outlined">Register</button>
                                <a href="/Project4/login" class="btn btn-outlined">Login</a>
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
        var fullname = document.getElementById("fullname");
        var email = document.getElementById("email");
        var password = document.getElementById("password");
        var repassword = document.getElementById("repassword");
        var address = document.getElementById("address");
        var phone = document.getElementById("phone");
        
        if (!password.value.equals (repassword.value)) {
            var element = document.getElementById("alertpass");
            element.style.display = "";
            password.style.border = "solid red 1px";
            repassword.style.border = "solid red 1px";
        }
        if (fullname.value == ""){
        var element = document.getElementById("alert");
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
        var element = document.getElementById("alertaddress");
        element.style.display = "";
        phone.style.border = "solid red 1px";
        
        return false;
        }
        
        return true;
    }
    
</script>

<jsp:include page="footer.jsp" />
