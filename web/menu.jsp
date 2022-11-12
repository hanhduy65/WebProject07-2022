<%-- 
    Document   : menu
    Created on : Jun 24, 2022, 1:09:55 AM
    Author     : hanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family:  Sans serif, Times New Roman, sans-serif;
    }

    li {
        list-style: none;
    }

    a{
        text-decoration: none;
    }

    header {
        display: flex;
        justify-content: space-between;
        padding: 12px 50px;
        height: 70px;
        color: white;
        align-items: center;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        z-index: 1;
        background: rgba(255, 255, 255, 0.3);
    }

    header.sticky {
        background: rgba(255, 255, 255, 1);
    }

    header:hover {
        background: rgba(255, 255, 255, 1);
    }

    .logo {
        flex: 1;
        padding-bottom: 15px;
    }

    .menu {
        flex: 3;
        display: flex;
    }

    .menu > li {
        padding: 0 12px;
        position: relative;
    }

    .menu > li a {
        font-size: 16px;
        font-weight: bold;
        color: #333;
        display: block;
        line-height: 20px;
        text-transform: uppercase;
    }

    .menu > li a:hover {
        font-size: 18px;
        color: red;
    }

    .menu > li:hover .sub-menu{
        visibility: visible;
        top: 30px;
        width: 100%;
    }

    .sub-menu {
        position: absolute;
        width: 100%;
        border: 0px solid #ccc;
        padding: 10px 30px 10px 10px;
        visibility: hidden;
        transition: 0.3s;
        top: 30px;
        background-color: white;
        margin-top: 15px;
        z-index: 1;
    }

    .sub-menu li a {
        text-align: center;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .sub-menu li a:hover {
        font-size: 18px;
        border-radius: 0.9px;
        margin-bottom: 7px;
    }


    .other {
        flex: 1;
        display: flex;
    }

    .other > li {
        padding: 0 12px;
        position: relative;
        color: black;
        font-weight: bold;
        
    }
    
    .other > li > a {
        color: black;
        font-size: 16px;
        margin-bottom: 0px;
    }
    
    .other > li::after {
        content: "";
        display: block;
        width: 1px;
        height: 20px;
        background: #cccccc;
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
        margin-left: 5px;
    }

    .other li:last-child::after {
        display: none;
    }

    .other > form > li:first-child {
        position: relative;
    }

    .other > form  > li:first-child input {
        width: 100%;
        height: 100%;
        border: none;
        border-bottom: 1px solid #333;
        background: transparent;
        outline: none;

    }

    .other > form > li >button {
        height: 90%;
        padding-bottom: 2px;
        background: rgba(255, 255, 255, 0);
        border: none;
        padding-left: 2px;
       
    }

    .other > form > li >button:hover {
        cursor: pointer;
    }

    .other > form > li:first-child button {
        position: absolute;
        right: 1px;
    }
</style>

<header>
    <div class="logo">
        <a href=""> <img src="images/logo.png"></a>
    </div>

    <div class="menu">
        <li><a href="home">TRANG CHỦ</a>
            <c:forEach items="${requestScope.cate}" var="c">
            <li> <a href="category?cid=${c.id}">${c.name}</a>                             
            </li> 
        </c:forEach>  

        <li><a href="">SỬA CHỮA</a></li>
        <li><a href="">TIN TỨC</a></li>
        <c:if test="${sessionScope.account != null}">
            <li>
                
                <a href="manager">Quản Lý Sản Phẩm</a>
                
            </li>
        </c:if>
    </div>

    <div class="other">
        <form action="search" method="post">
            <li><input  placeholder="Tìm kiếm" type="text" name="txtSearch" value="${txtS}"/>
                <button type="submit"><img src="images/search.png" alt="alt"/></button>
            </li>
        </form>
        <c:if test="${sessionScope.account != null}">
            <li>
                <a href="">${sessionScope.account.username}</a>
                <a href="logout">Log out </a>
                
            </li>
        </c:if>
        <c:if test="${sessionScope.account == null}">
        <li><a href="login">Log in</a></li>
        </c:if>
        <li><a href="show">Giỏ Hàng</a>
                
                </li>

        </div>
</header>
