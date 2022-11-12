<%-- 
    Document   : footer
    Created on : Jun 24, 2022, 1:15:10 AM
    Author     : hanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
               .app-container {
        text-align: center;
        align-items: center;
        padding: 150px 0 50px 0;
    }

    .app-google {
        margin: 50px;
    }

    .app-google img {
        height: 50px;
        cursor: pointer;
    }

    .app-container p {
        line-height: 20px;
        letter-spacing: 1px;
        font-size: 17px;
        color: #000;
        font-weight: bold;
    }

    .app-container input {
        margin-top: 50px;
        border: none;
        border-bottom: 1px solid #000;
        padding-bottom: 20px;
        width: 400px;
        text-align: center;
        outline: none;
    }
    
    footer {
        text-align: center;

    }

    .footer-top {
        display: flex;
        text-align: center;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
    }

    .footer-top li {
        padding: 0 12px;
        position: relative;

    }

    .footer-top li::after {
        content: "";
        display: block;
        width: 1px;
        height: 20px;
        background: #cccccc;
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
    }
    .footer-top li:last-child::after {
        display: none;
    }

    .footer-top li:last-child a {
        margin-right: 12px;
    }

    .footer-bottom {
        margin: 20px 0;
        border-top: 1px solid #333;
    }

    .footer-bottom p {
        margin: 20px;
    }

    footer p span {
        font-weight: bold;
    }

</style>
<section class="app-container">
    <p>Tải Ứng dụng</p>
    <div class="app-google">
        <img src="images/appstore.png">
        <img src="images/googleplay.png">
    </div>
    <p>Nhận bản tin </p>
    <input type="text" placeholder="Nhập email của bạn...">
    <footer></footer>
</section>
<footer>
    <div class="footer-top">
        <li><a href=""><img src="images/img-congthuong.png" alt=""></a></li>
        <li><a href="">Liên hệ</a></li>
        <li><a href="">Tuyển dụng</a></li>
        <li><a href="">Giới thiệu</a></li>
        <li>
            <a href=""><img src="images/fb.png"></a>
            <a href=""><img src="images/gg.png"></a>
            <a href=""><img src="images/ins.jpg"></a>
        </li>
    </div>
    <p> Công ty Cổ phần DK với số đăng ký kinh doanh: 010234534523 <br />
        Địa chỉ đăng ký: Khu Công nghệ cao Hòa Lạc – Km29 Đại lộ Thăng Long, H. Thạch Thất, TP. Hà Nội <br />
        Đặt hàng online: <span>0246 662 3434</span>
    </p>
    <div class="footer-bottom">
        <p>@MC All right reserved</p>
    </div>
</footer>
