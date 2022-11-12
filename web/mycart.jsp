<%-- 
    Document   : mycart
    Created on : Jul 11, 2022, 5:21:57 PM
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
            .cart {
                padding: 100px 0;
            }

            .container {
                display: flex;
            }

            .cart-content-left {
                flex: 2;
                padding-left: 10%;
                padding-right: 12px;

            }

            .cart-content-left table {
                width: 100%;
                text-align: center;
            }

            .cart-content-left table th {
                padding-bottom: 30px;
                font-family: var(--main-text-font);
                font-size: 12px;
                text-transform: uppercase;
                color: #333;
                border-collapse: collapse;
                border-bottom: 2px solid #ddd;
            }

            .cart-content-left table p {
                font-family: var(--main-text-font);
                font-size: 12px;
                color: #333;
            }

            .cart-content-left table input {
                width: 30px;
            }


            .cart-content-left table span {
                display: block;
                width: 20px;
                height: 20px;
                border: 1px solid #ddd;
                cursor: pointer;
                color: red;
            }

            .cart-content-left table td {
                padding: 20px 0;
                border-bottom: 2px solid #ddd;
            }

            /*            .cart-content-left table td:first-child img {
                            width: 130px;
                        }*/

            .cart-content-right {
                flex: 1;
                padding-left: 12px;
                border-left: 2px solid #dddd;
                padding-right: 10%;
            }

            .cart-content-right table {
                width: 100%;
            }

            .cart-content-right table th {
                padding-bottom: 30px;
                font-family: var(--main-text-font);
                font-size: 12px;
                text-transform: uppercase;
                color: #333;
                border-collapse: collapse;
                border-bottom: 2px solid #ddd;
            }

            .cart-content-right table td {
                font-family: var(--main-text-font);
                font-size: 12px;

                color: #333;
                padding: 6px 0;
            }

            .cart-content-right tr:nth-child(4) td {
                border-bottom: 2px solid #ddd;

            }

            .cart-content-right tr td:last-child {
                text-align: right;
            }

            .cart-content-right-text {
                margin: 20px 0;
                text-align: center;
            }

            .cart-content-right-text p {
                font-family: var(--main-text-font);
                font-size: 12px;
                color: #333;
            }

            .cart-content-right-button {
                text-align: center;
                align-items: center;

            }
            .cart-content-right-button a {
                text-decoration: none;
                color: white;
                background-color: black;

                padding: 10px 10px;
            }

            .customer {
                background-color: #ffffff;
            }

            .customer form {
                border: 2px solid black;

                padding: 10px 30px 40px;

            }

            .customer form div {
                margin-top: 15px;

            }

            .customer form div input {
                border: none;

            }

            .customer form .submitC  {
                background-color: red;
                color: white;
            }




        </style>
    </head>
    <body>
        <section class="cart">
            <div class="container">
                <c:set var="o" value="${requestScope.cart}"/>
                <div class="cart-content-left">
                    <table>
                        <tr>
                            <th>stt</th>
                            <th>Sản Phẩm</th>
                            <th>Tên Sản Phẩm</th>
                            <th>Số Lượng</th>
                            <th>Giá</th>
                            <th>Thành Tiền</th>
                            <th>Thay đổi</th>
                        </tr>

                        <c:set var="tt" value="0"/>
                        <c:forEach items="${o.getItem()}" var="i">
                            <c:set var="tt" value="${tt+1}"/>
                            <tr>
                                <td>${tt}</td>
                                <td><img style="height: 20%; width: 20%" src="${i.product.image}"></td>
                                <td>${i.product.name}</td>
                                <td style="text-align: center">
                                    <a style="text-decoration: none" href="process?num=-1&id=${i.product.id}">-</a> ${i.quantity}
                                    <a style="text-decoration: none" href="process?num=1&id=${i.product.id}">+</a>
                                </td>
                                <td>${i.price}</td>
                                <td style="color: red; font-size: 18px;">${(i.price * i.quantity)}</td>
                                <td >
                                    <form action="process" method="post">
                                        <input type="hidden" name="id" value="${i.product.id}"/>
                                        <input style="width: 50px;;" type="submit" value="Xóa"/>
                                    </form></td>

                            </tr>
                        </c:forEach>
                    </table>
                    <c:if test="${requestScope.cart.getItem().size() > 0}">
                        <div class="customer">                     
                            <h1>Thông Tin Đặt Hàng</h1>
                            <form action="checkout" method="post">
                                <div name="C">
                                    <div name="genderC">
                                        <input type="radio" name="gender" value="mr" checked=""/>Anh
                                        <input type="radio" name="gender" value="mrs"/>Chị<br/>
                                    </div>
                                    <div name="nameC">
                                        <input style="padding: 20px;" type="text" name="name" placeholder="Họ và Tên" required/><br/>
                                    </div>
                                    <div name="phoneC">
                                        <input style="padding: 20px;" type="text" name="phone" placeholder="Số Điện Thoại" required/><br/>
                                    </div>
                                    <p>CHỌN CÁCH THỨC NHẬN HÀNG</p>

                                    <div name="addressC">
                                        <input style="padding: 20px;" type="text" name="address" placeholder="Địa Chỉ Giao Hàng" required/><br/>
                                    </div>
                                    <div name="noteC">
                                        <input style="width: 90%; padding: 20px;" type="text" name="note" placeholder="Yêu cầu khác (không bắt buộc)"/><br/>
                                    </div>
                                    <div name="submitC">
                                        <input  style="color: white; background-color: red; height: 45px; width: 90px; border-radius: 0.8px;" type="submit" value="Đặt Hàng"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </c:if>
                </div>

                <div class="cart-content-right">
                    <table>
                        <tr>
                            <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                        </tr>
                        <tr>
                            <td>Tổng Danh Mục Sản Phẩm</td>
                            <td>${o.getItem().size()}</td>
                        </tr>
                        <tr>
                            <td>Tổng Tiền Hàng</td>
                            <td>
                                ${o.getTotalMoney()}
                            </td>
                        </tr>
                        <tr>
                            <td>TẠM TÍNH</td>
                            <td>
                                <p style="color: black; font-weight: bold; font-size: 20px;">${o.getTotalMoney()} <sup>đ</sup></p>
                            </td>
                        </tr>
                    </table>
                    <c:if test="${(2000000- o.getTotalMoney()) > 0}">
                        <div class="cart-content-right-text">
                            <p>Bạn sẽ được miễn phí ship khi đơn hàng của bạn có tổng giá trị 2.000.000 đ</p>
                            <div style="color: red; font-weight: bold;">Mua thêm <span style="font-size: 22px;">${2000000- o.getTotalMoney()}</span> <sup>đ</sup> để
                                được miễn phí SHIP</div>

                        </div>
                    </c:if>
                    <div class="cart-content-right-button">
                        <hr/><br/>
                        <a href="home">TIẾP TỤC MUA HÀNG</a>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>
