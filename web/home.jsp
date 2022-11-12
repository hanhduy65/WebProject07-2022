<%-- 
    Document   : home
    Created on : Jun 20, 2022, 9:34:10 PM
    Author     : hanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MCmobile - Điện thoại, Máy tính Bảng, Đồng hồ</title>
        <link rel="icon" href="images/logo.png">

        <style>
            #Slider {
                border-bottom: 2px  #333;
                overflow: hidden;
                margin-bottom: 50px;
            }

            .aspect-ratio-169 {
                display: block;
                position: relative;
                padding-top: 40%;
                transition: 0.3s;

            }

            .aspect-ratio-169 img {
                display: block;
                position: absolute;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
            }

            .dot-container {
                position: absolute;
                height: 1px;
                width: 100%;
                display: flex;
                align-items: center;
                text-align: center;
                justify-content: center;
            }

            .dot {
                height: 18px;
                width: 18px;
                background-color: #ccc;
                border-radius: 50%;
                margin-right: 12px;
                cursor: pointer;
            }

            .dot.active {
                background-color: #333;
            }

            .wrapper1 {
                background-color: #ffcccc;
                border: 7px solid #ccc;
                margin-right: 10%;
                margin-left: 10%;


            }
            .search-content-items {
                display: flex;
                /* justify-content: center; */
                margin-left: 10%;
                margin-right: 10%;
                padding: 12px;
                border-radius: 5px;
                background-color: rgba(221, 221, 221, 0.5);
                margin-bottom: 30px;
            }

            .search-content-item {

                height: 35px;
                background-color: #fff;
                width: 25%;
                display: flex;
                align-items: center;
                border-radius: 5px;
                border: 1px solid #cccccc;
                position: relative;
                margin-right: 50px;
                margin-left: 50px;

            }

            .search-content-item input {
                /* position: absolute; */
                width: 100%;
                height: 100%;
                border: none;
                outline: none;
                margin-left: 16px;
                border-radius: 5px;

            }

            .search-content-item img {
                margin-left: 12px;
                z-index: 1;
            }

            .search-content-item:last-child {
                width: 130px;
                margin-left: 50px;
            }

            .search-content-item:last-child button {
                width: 100%;
                height: 100%;
                color: #fff;
                background-color: black;
                border-radius: 5px;
            }


            .search-content-item:last-child button:hover {
                background-color: #333;
            }

            .k{
                padding-top: 30px;
                display: flex;
                margin-left: 10%;
                margin-right: 10%

            }

            h3 {
                font-size: 16px;
                font-weight: bold;
                text-transform: uppercase;
                display: flex;

            }

            .k-select {
                padding-left: 87%;
            }

            ul.product {
                list-style: none;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                margin-left: 10%;
                margin-right: 10%;
                margin-top: 40px;

            }

            ul.product li {
                flex-basis: 25%;
                padding-left: 15px;
                padding-right: 15px;
                box-sizing: border-box;
                margin-bottom: 30px;

            }


            ul.product li .product-top{
                position: relative;
                overflow: hidden;
            }

            ul.product li .product-top .product-thumb {
                display: block;
            }


            ul.product li:hover .product-top .product-thumb img{
                filter: opacity(80%);
            }

            ul.product li .product-top .product-thumb img {
                display: block;
            }

            ul.product li .product-top a.buy-now {
                text-transform: uppercase;
                text-decoration: none;
                text-align: center;
                display: block;
                background-color: #446084;
                color: white;
                padding: 10px 0px;
                position: absolute;
                bottom: -36px;
                width: 100%;
                transition: 0.25s ease-in-out;
                opacity: 0.85

            }

            ul.product li:hover a.buy-now{
                bottom: 0px;
            }

            ul.product li .product-info {
                padding: 10px 0px;
            }

            ul.product li img {
                max-width: 100%;
                height: auto;
            }

            ul.product li .product-info a{
                display: block;
                text-decoration: none;
            }
            ul.product li .product-info a.product-cat {
                font-size: 11px;
                text-transform: uppercase;
                color: #003333;
                padding: 3px 0px;

            }

            ul.product li .product-info a.product-name {
                color: #334862;
                padding: 3px 0px;
            }

            ul.product li .product-info .product-price {
                color: #111;
                padding: 2px 0px;
                font-weight: 600;
            }


            .container-nav {
                display: flex;
                margin-left: 10%;
                margin-right: 10%;
            }

            .container-nav__heading {
                font-weight: bold;

                font-size: 1.6rem;
            }

            .container-nav__list {
                display: flex;
                flex: 1;
                max-width: 100%;
                list-style: none;
                flex-wrap: wrap;
                align-items: center;
                padding-left: 0;
                margin-left: 16px;
            }

            .container-nav__item {
                flex-shrink: 0;
                margin-right: 5px;
            }

            .container-nav__item:hover {
                background-color: #ffcc33;
                border-radius: 2px;
            }

            .container-nav__item-link {
                display: block;
                text-decoration: none;
                font-size: 1.4rem;
                color: var(--primary-color);
                padding: 12px 16px;
            }

            .price select {
                border: none;
                margin-left: 5px;
            }
            .page {
                padding-right: 10%;
                text-align: right;
            }

            .page a {
                background-color: black;
                color: white;
                padding: 10px;
                margin-left: 5px;
            }
        </style>
        <script type="text/javascript">
            function change() {
                document.getElementById("f1").submit();
            }
        </script>
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <section id="Slider">
                <div class="aspect-ratio-169">
                    <img src="images/slide1.webp">
                    <img src="images/slide2.jpg">
                    <img src="images/slide3.jpg">
                    <img src="images/silde4.webp">
                </div>
                <div class="dot-container">
                    <div class="dot active"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                </div>
            </section>

        <c:if test="${requestScope.cateID != null}">
            <form id="f1" action="search">
                <section class="search">
                    <div class="wrapper">
                        <div class="search-content-items">
                            <div class="search-content-item">
                                <img src="images/mobile-solid.png">

                                <input type="text" name="name" placeholder="Bạn muốn tìm kiếm sản phẩm nào?" />
                            </div>
                            <div class="search-content-item">
                                <img src="images/calendar-solid_1.png">
                                <input type="text" name="desc" placeholder="Miêu tả"/>
                            </div>
                            <div class="search-content-item">
                                <img src="images/money-bill-solid.png">
                                <div class="price">
                                    <select name="price">
                                        <option value="0">Giá</option>
                                        <option value="1">Dưới 1triệu</option>
                                        <option value="2">Từ 1-5triệu </option>
                                        <option value="3">Từ 5-10triệu</option>
                                        <option value="4">Trên 10triệu</option>
                                    </select>
                                </div>
                            </div>
                            <div class="search-content-item">

                                <button>Tìm kiếm</button>
                            </div>
                        </div>
                    </div>
                </section>       

                <div class="container-nav">
                    <div class="container-nav__heading">${requestScope.hint}</div>
                    <ul class="container-nav__list">
                        <input type="radio" name="op" checked value="0"/>Tất cả
                        <c:forEach items="${requestScope.cateID}" var="c">
                            <li class="container-nav__item">
                                <input type="radio" name="op" value="${c}"/>${c}

                            </li>
                        </c:forEach>
                    </ul>

                </div>
            </form>
        </c:if>
        <div class="wrapper1">
            <h3 style="padding-top: 10px;">Sản Phẩm Nổi Bật</h3>
            <ul class="product">
                <c:forEach items="${requestScope.listTop}" var="p"> 
                    <li>

                        <div class="product-item">
                            <div class="product-top">
                                <a href="detail?pid=${p.id}" class="product-thumb">
                                    <img src="${p.image}" alt="">
                                </a>
                                <!-- mua ngay -->
<!--                                <a href="detail?pid=${p.id}" class="buy-now">Mua Ngay</a>-->
                            </div>
                            <div class="product-info">
                                <a href="detail?pid=${p.id}" class="product-cat">${p.title}</a>
                                <a href="detail?pid=${p.id}" class="product-name">${p.name}</a>
                                <div class="product-price">${p.price*2}<span>đ</span></div>                            
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="k">
            <h3>Tất cả: ${requestScope.count}</h3>
            <!--        <div class="k-select">
            <c:if test="${requestScope.listP != null}">
            <select name="op">
                <option value="down">Giảm dần</option>
                <option value="up">Tăng dần</option>                
            </select>
            </c:if></div>-->
        </div>

        <div class="wrapper">
            <ul class="product">
                <c:forEach items="${requestScope.listP}" var="p"> 
                    <li>

                        <div class="product-item">
                            <div class="product-top">
                                <a href="detail?pid=${p.id}" class="product-thumb">
                                    <img src="${p.image}" alt="">
                                </a>
                                <!-- mua ngay -->
                                <a href="detail?pid=${p.id}" class="buy-now">Mua Ngay</a>
                            </div>
                            <div class="product-info">
                                <a href="detail?pid=${p.id}" class="product-cat">${p.title}</a>
                                <a href="detail?pid=${p.id}" class="product-name">${p.name}</a>
                                <div class="product-price">${p.price*2}<span>đ</span></div>                            
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="page">
            <c:forEach begin="1" end="${endP}" var="i">
                <c:if test="${i==1}">
                    <a href="page?index=${i}">${i}</a>
                </c:if>
                <c:if test="${i>1}">
                    ><a href="page?index=${i}">${i}</a>
                </c:if>
            </c:forEach>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
    <script>
        const header = document.querySelector("header")
        window.addEventListener("scroll", function () {
            x = window.pageYOffset
            if (x > 0) {
                header.classList.add("sticky")
            } else {
                header.classList.remove("sticky")
            }
        })
        const imgPosition = document.querySelectorAll(".aspect-ratio-169 img")
        const imgContainer = document.querySelector(".aspect-ratio-169")
        const dotItem = document.querySelectorAll(".dot")
        let index = 0;
        let imgNum = imgPosition.length
        // console.log(imgPosition)
        imgPosition.forEach(function (image, index) {
            image.style.left = index * 100 + "%"
            dotItem[index].addEventListener("click", function () {
                slider(index)
            })
        })
        function imgSilde() {
            index++;
            if (index >= imgNum) {
                index = 0
            }
            imgContainer.style.left = "-" + index * 100 + "%"
            slider(index)

        }

        function slider(index) {
            imgContainer.style.left = "-" + index * 100 + "%"
            const dotActive = document.querySelector(".active")
            dotActive.classList.remove("active")
            dotItem[index].classList.add("active")
        }
        setInterval(imgSilde, 5000)
    </script>

</html>
