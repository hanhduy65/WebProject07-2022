<%-- 
    Document   : add
    Created on : Jul 7, 2022, 10:22:37 PM
    Author     : hanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MCmobile - Điện thoại, Máy tính Bảng, Đồng hồ</title>
        <link rel="icon" href="images/logo.png">
        <style>
            body {
                background: url(images/background.jpg);
                background-size: cover;
            }

            a {
                font-size: 20px;
                color: black;
                background-color: bisque;
                font-weight: bold;
                text-decoration: none;
                padding: 10px 10px;
                border: 1px solid;


            }

            .wrapper {
                margin-top: 20px;
                margin-right: 30%;
                margin-left: 30%;
                margin-bottom: 30%;
                background-color: bisque;
                justify-content: center;
                align-items: center;
            }

            h1 {
                margin-bottom: 15px;
                text-align: center;
            }

            form div {
                text-align: center;
                padding-top: 4px;
                padding-bottom: 10px;
            }

            p {
                margin-left: 10%;
                margin-bottom: 4px;
            }

            input {
                width: 80%;
                height: 30px;
            }

            .des input {
                padding-top: 15px;
                padding-bottom: 200px;
                /*height: 100px;*/
            }

            select {
                width: 78%;
                height: 30px;

            }

            .submit {
                padding-top: 20px;
                padding-bottom: 20px;
                width: 20%;
                padding-left: 10%;
            }

            .submit input {
                color: white;
                background-color: black;
            }

            .submit input:hover {
                cursor: pointer;
                background-color: #cccc;
            }

        </style>
    </head>
    <body>
        <a href="manager">Quản Lý Sản Phẩm</a>
        <div class="wrapper">
            <h1>Add Product</h1>
            <form action="add">
                <p>Name</p>
                <div class="name"><input type="text" name="name" required></div>
                <p>Title</p>
                <div class="title"><input type="text" name="title" required></div>
                <p>Price</p>
                <div class="price"><input type="text" name="price" required></div>
                <p>Quantity</p>
                <div class="quantity"><input type="number" name="quantity" required></div>
                <p>Unit</p>
                <div class="unit"><input type="text" name="unit" required></div>
                <p>Image</p>
                <div class="image"><input type="text" name="image" required></div>
                <p>Release Date</p>
                <div class="releaseDate"><input type="date" name="releaseDate" required></div>
                <p>Descript</p>
                <div class="des"><input type="text" name="des"></div>
                <p>Category <select name="op">
                        <c:forEach items="${requestScope.cate}" var="c">
                            <option value="${c.id}">${c.name}</option>
                        </c:forEach>
                    </select></p>

                <div class="submit">
                    <input type="submit" value="Add">
                </div>
            </form>
        </div>
    </body>
</html>
