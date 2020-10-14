<%-- 
    Document   : loginadmin
    Created on : Oct 8, 2020, 5:37:35 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <!-- Font Awesome -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
        <!-- SweetAlert2 -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/limontesweetalert2/7.2.0/sweetalert2.min.css/>" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>


        <link rel="stylesheet" href="admin/css/loginadmin.css" />
    </head>
    <body>
        <div class="loading" id="loading" >
            <img src="https://thumbs.gfycat.com/HighCorruptIsabellineshrike-max-1mb.gif" alt="loading">
        </div>
        <div class="container">
            <div class="header">
                <div class="header__icon">
                    <i class="fas fa-users"></i>
                </div>
                <div class="header__title">
                    <h2>Admin Login</h2>
                </div>
            </div>
            <form
                action="/Project4/loginadmin"
                class="form"
                method="post"
                
                onsubmit="onSubmitForm(this);
                        return false;"
                >
                <div class="form__username">
                    <div class="form__username--icon form__icon">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="form__username--input form__input">
                        <input
                            type="text"
                            id="email"
                            placeholder="Email"
                            name="email"
                            />
                    </div>
                </div>
                <p id="errorUsername"></p>
                <div class="form__password">
                    <div class="form__password--icon form__icon">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="form__password--input form__input">
                        <input
                            type="password"
                            id="password"
                            placeholder="Password"
                            name="password"
                            />
                        <span class="fas fa-eye" id="togglePassword"></span>
                    </div>
                </div>
                <p id="errorPassword"></p>
                <div class="form__submit">
                    <button type="submit">
                        <i class="fas fa-arrow-right"></i>
                    </button>
                </div>
            </form>
        </div>

        <script src="admin/js/loginadmin.js"></script>
    </body>
</html>