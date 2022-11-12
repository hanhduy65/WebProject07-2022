<%-- 
    Document   : update
    Created on : Jul 8, 2022, 3:29:27 PM
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
            <h1>Update Product</h1>
            <c:set var="c" value="${requestScope.product}"/>
            <form action="update" method="post">
                <p>ID</p>
                <div class="id"><input type="text" readonly name="id" value="${c.id}"></div>
                <p>Name</p>
                <div class="name"><input type="text" name="name" value="${c.name}"></div>
                <p>Title</p>
                <div class="title"><input type="text" name="title" value="${c.title}"></div>
                <p>Price</p>
                <div class="price"><input type="text" name="price" value="${c.price}"></div>
                <p>Quantity</p>
                <div class="quantity"><input type="number" name="quantity" value="${c.quantity}"></div>
                <p>Unit</p>
                <div class="unit"><input type="text" name="unit" value="${c.unit}"></div>
                <p>Image</p>
                <div class="image"><input type="text" name="image" value="${c.image}"></div>
                <p>Release Date</p>
                <div class="releaseDate"><input type="date" name="releaseDate" value="${c.releaseDate}"></div>
                <p>Descript</p>
                <div class="des"><input type="text" name="des" value="${c.desc}"></div>
                <p>Category <select name="op">
                        <c:forEach items="${requestScope.cate}" var="d">
                            <option value="${d.id}" ${c.idlsp eq d.id?"selected":""}>${d.name}</option>
                        </c:forEach>
                    </select></p>

                <div class="submit">
                    <input type="submit" value="Update">
                </div>
            </form>
        </div>
    </body>
</html>
