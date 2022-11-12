<%-- 
   Document   : detail
   Created on : Jun 24, 2022, 12:43:27 AM
   Author     : hanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MCmobile - Điện thoại, Máy tính Bảng, Đồng hồ</title>
        <link rel="icon" href="images/logo.png">
        <script type="text/javascript">
            function buy(id) {
                var m = document.f.num.value;
                document.f.action = "buy?id=" + id + "&num" + m;
                document.f.submit();
            }
        </script>
        <style>
            .product {
                padding: 100px 100px;

            }

            .product-content {
                display: flex;
            }

            .product-content-left {
                width: 50%;
                display: flex;

            }

            .product-content-right {
                width: 50%;

            }

            .product-content-left-bigimg {
                width: 80%;
                padding-right: 20px;

            }

            .product-content-left-bigimg img {
                width: 100%;

            }

            .product-content-left-smallimg {
                width: 20%;
                display: block;
            }

            .product-content-left-smallimg img {
                width: 100%;

            }

            .product-content-right {
                width: 50%;
                padding-left: 80px;

            }

            .product-content-right-right-product-name h1 {
                font-family: var(--main-text-font);
                font-size: 40px;
            }

            .product-content-right-right-product-name p {
                color: #cccccccc;
                font-size: 12px;

            }

            .product-content-right-product-price {
                margin: 12px 0;
                font-size: 20px;
                font-weight: bold;
                font-family: var(--main-text-font);
            }

            .product-content-right-right-product-color img {
                width: 5px;
                height: 5px;
                border-radius: 50%;
            }

            .product-content-right-right-product-color-img {
                height: 40px;
                width: 40px;
                border: 1px solid #333;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 12px 0;
            }

            .size span {
                display: inline-block;
                padding: 3px 6px;
                border: 1px solid #dddddd;
                margin: 12px 10px 12px 0;
                font-size: 12px;
                cursor: pointer;
            }

            .quantiy {
                display: flex;
                margin-bottom: 20px;
                padding-right: 10px;
            }

            .quantiy p {
                padding-top: 1px;
            }
            .quantiy input {
                width: 25px;
                height: 20px;
                padding-left: 1px;
                margin-left: 10px;
                margin-bottom: 0px;

            }

            .product-content-right-product-button button {
                width: 150px;
                height: 40px;
                display: block;
                margin: 20px 0 12px;
                transition: all 0.3s ease;
            }

            .product-content-right-product-button button p {
                padding-left: 10%;
            }

            .product-content-right-product-button button img {
                padding-left: 0%;
                margin-right: 10px;
            }

            .product-content-right-product-button input {
                display: flex;
                justify-content: space-between;
                align-items: center;
                border: 2px solid black;
                cursor: pointer;
                height: 35px;
                with: 35px;
            }

            .product-content-right-product-button input:hover {
                background-color: #333;
                color: aliceblue;
            }
            .des {
                margin-top: 100px;
                border: 1px solid gray;
                padding: 8px;
            }

            .des h1 {
                text-align: center;
                text-transform: uppercase;
                color: #4CAF50;
            }

            .des p {
                text-indent: 50px;
                text-align: justify;
                letter-spacing: 3px;
            }

        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <section class="product">
                <div class="container">
                    <form  action="addcart" method="post">
                        <div class="product-content">
                            <div class="product-content-left">
                                <div class="product-content-left-bigimg">
                                    <img src="${detail.image}" alt="">
                            </div>
                            <div class="product-content-left-smallimg">
                                <img src="${detail.image}" alt="">
                                <img src="${detail.image}" alt="">
                                <img src="${detail.image}" alt="">
                                <img src="${detail.image}" alt="">
                            </div>
                        </div>
                        <div class="product-content-right">
                            <div class="product-content-right-right-product-name">
                                <h1>${detail.name}</h1>

                            </div>
                            <div class="product-content-right-product-price">
                                <p>${detail.price * 2}<sup>đ</sup></p>

                            </div>
                            <div class="product-content-right-product-color">

                                <div class="product-content-right-product-color-img">
                                    <!-- <img src="/assets/img/paris.jpg"> -->
                                </div>
                                <div class="product-content-right-product-capacity">

                                </div>
                                <div class="quantiy">
                                    <p style="font-weight: bold">Số lượng</p>
                                    <input type="hidden" name="id" value="${detail.id}"/>
                                    <input type="number" name="num" min="1" value="1">
                                </div>
                                <div class="product-content-right-product-button">
                                    <input type="submit" value="THÊM VÀO GIỎ HÀNG"/>                                     
                                </div>
                                </form>
                                <div class="des">
                                    <h1>Đánh Giá Sản Phẩm</h1>
                                    <p>${detail.desc}
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>
            </div>
        </section>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
