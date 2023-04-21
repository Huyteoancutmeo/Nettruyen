<%-- 
    Document   : footer
    Created on : 19 thg 4, 2023, 20:24:36
    Author     : mgnd3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Footer -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 copyright">
                        <a href="">
                            <img src="img/logo-nettruyen.webp" alt="">
                        </a>
                        <p class="link">
                            <a href="">Điều khoản</a>
                        </p>
                        <p class="link">
                            <a href="">Chính sách bảo mật</a>
                        </p>
                        <img style="max-width: 70%;" src="img/lienhe.webp" alt="">
                        <p> Copyright © 2023 NetTruyen </p>
                    </div>
                    <div class="col-md-8">
                        <div class="link-footer">
                            <h4>Từ khoá</h4>
                            <ul>
                                <li><a href="Home">Truyện tranh</a></li>
                                <li><a href="">Truyện tranh online</a></li>
                                <li><a href="">Đọc truyện tranh</a></li>
                                <li><a href="">Truyện tranh hot</a></li>
                                <li><a href="">Truyện tranh hay</a></li>
                                <li><a href="the_loai?category=Ngôn%20Tình">Truyện ngôn tình</a></li>
                                <li><a href="">truyenqq</a></li>
                                <li><a href="">mi2manga</a></li>
                                <li><a href="">doctruyen3q</a></li>
                                <li><a href="">cmanga</a></li>
                                <li><a href="">vlogtruyen</a></li>
                                <li><a href="">blogtruyen</a></li>
                                <li><a href="">saytruyen</a></li>
                                <li><a href="">dichtruyen</a></li>
                                <li><a href="">truyensieuhay</a></li>
                                <li><a href="">vcomic</a></li>
                                <li><a href="">hamtruyen</a></li>
                                <li><a href="">truyentranhaudio</a></li>
                                <li><a href="Home">nettruyen</a></li>
                                <li><a href="Home">nettruyenco</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a onclick="topFunction()" id="back-to-top">
            <i class="fa-solid fa-chevron-up"></i>
        </a>
        <script>
            let backToTop = document.getElementById("back-to-top");

            window.onscroll = function () {
                scrollFunction();
            };

            function scrollFunction() {
                if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
                    backToTop.style.display = "block";
                } else {
                    backToTop.style.display = "none";
                }
            }

            function topFunction() {
                document.documentElement.scrollTop = 0;
            }
        </script>
    </body>
</html>
