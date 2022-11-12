<%-- 
    Document   : login
    Created on : Jun 19, 2022, 7:55:28 PM
    Author     : hanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MCmobile - Điện thoại, Máy tính Bảng, Đồng hồ</title>
        <link rel="icon" href="images/logo.png">
        <style>
            body {
                background:url(images/background.jpg);
                background-size: cover;
            }
            #wrapper {
                min-height: 100vh;
                display:flex;
                justify-content: center;
                align-items: center;
            }

            #form-login {
                max-width: 400px;
                background: rgba(0,0,0,0.2);
                flex-grow: 1;
                padding: 30px 30px 40px;
                box-shadow: 0px 0px 17px 2px rgba(255,255,255,0.8);
            }

            .form-heading {
                font-size: 35px;
                font-weight: bold;
                text-align: center;
                margin-bottom: 30px;
            }

            .form-group {
                border-bottom: 1px solid black;
                margin-top: 15px;
                margin-bottom: 20px;
                display: flex;
            }

            .form-group i {
                padding-right: 20px;
            }

            .form-input {
                background: transparent;
                border:0;
                outline: 0;
                font-size: 18px;
                flex-grow: 1;
            }

            .form-input::placeholder {
                color: black;
            }

            .form-submit {
                background: transparent;
                border: 1px solid black;
                color: black;
                text-transform: uppercase;
                padding: 6px 10px;
                transition: 0.25s ease-in-out;
                margin-top: 10px;
                margin-bottom: 10px;
            }

            .form-submit:hover {
                border: 1px solid #9999ff;
                color: white;
                background-color: black;
            }

            .form-check {  
                margin-right: 5px;
            }         

        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div id="wrapper">
                <form id="form-login" action="login" method="post">
                   <h1 class="form-heading">Đăng Nhập</h1>
                    <div class="form-group">
                        <i><img src="images/user.png"/></i>
                        <input type="text" class="form-input" name="user" placeholder="Tên Đăng Nhập"/>
                    </div>               
                    <div class="form-group">
                        <i> <img src="images/key.png"/></i>
                        <input type="password" class="form-input" name="pass" placeholder="Mật khẩu"/><br/>
                    </div>
                    <div>
                        <input type="checkbox" ${cookie.crem.value != null?'checked':''} name="rem" value="ON" class="form-check"/>Remember me<br/>
                    </div>
                    <input type="submit" value="Đăng nhập" class="form-submit"/>
                    

                </form>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
