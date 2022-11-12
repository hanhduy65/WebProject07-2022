<%-- 
    Document   : manager
    Created on : Jul 7, 2022, 3:35:53 PM
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
        <script type="text/javascript">
            function doDelete(pid) {
                if(confirm("Are you sure delete this Product?")) {
                    window.location = "delete?pid="+pid;
                }
            }
        </script>
  <style>
        .wrapper {
            margin-top: 50px;
            margin-left: 20%;
            margin-right: 20%;
        }

        .title {
            display: flex;
            justify-content: space-between;
            height: 70px;
            color: white;
            align-items: center;
            background-color: darkslategrey;
            width: 100%;
        }

        .title h1 {
            padding: 12px 50px;
        }

        .title a {
            padding: 4px 10px;
            margin: 12px 50px;
            text-decoration: none;
            background-color: green;
            color: white;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        table tr td {
            text-align: center;
            width: 20%;
        }

        table tr td img {
            width: 50%;    
        }

        table tr td a {
            text-decoration: none;
        }

        table tr td a:last-child{
            color: red;
        }
        
        .first a {
                font-size: 20px;
                color: black;
                background-color: bisque;
                font-weight: bold;
                text-decoration: none;
                padding-bottom: 10px;
                border: 1px solid;
                margin-top: 100px;

            }
        
    </style>
    </head>
    <body>
        
        <div class="first"><a href="home">Home</a>
            </div>
        <div class="wrapper">
        <div class="title">
            <h1> Manage Product </h1>
            <a href="add">Add New Product</a>
        </div>
        <table>
           
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Image</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${requestScope.listP}" var="c">
                <c:set var="id" value="${c.id}"/>
            <tr>
                <td>${id}</td>
                <td>${c.name}</td><!-- comment -->
                <td><img src="${c.image}"></td>
                <td>${c.price}</td>
                <td>
                    <a href="update?id=${id}">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#" onclick="doDelete('${id}')">Delete</a>
                </td>
            </tr>
             </c:forEach>
        </table>
    </div>

        
    </body>
</html>
