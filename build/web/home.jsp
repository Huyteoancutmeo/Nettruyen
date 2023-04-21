<%-- 
    Document   : home
    Created on : 8 thg 4, 2023, 15:46:24
    Author     : mgnd3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- link css -->
        <link rel="stylesheet" href="css/slick.css">
        <link rel="stylesheet" href="css/slick-theme.css">
        <link rel="stylesheet" href="css/fontawesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <!--link js -->
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <!--Header-->
        <jsp:include page="header.jsp"/>
        <!--Main content-->
        <div class="main">
            <div class="container">
                <div class="notify_block" style="margin: 0;"> 
                    <div class="info">
                        <i class="fa-solid fa-circle-info"></i>
                    </div>
                    <a href="#">
                        Nhấn vào đây 
                    </a>
                    để đăng nhập tự động và đồng bộ truyện theo dõi.
                    <span class="error">Không truy cập các site giả mạo để tránh bị hack tài khoản và tránh virus</span>
                </div>
            </div>
            <div class="container">
                <div class="slider">
                    <div class="ModuleContent">
                        <h2 class="page-title">
                            Truyện đề cử
                            <i class="fa-solid fa-angle-right"></i>
                        </h2>
                        <div class="items-slider" style="position: relative; margin: 0 -7px; height: 240px;">
                            <c:forEach items="${requestScope.list}" var="c">
                                <div class="item-slider">
                                    <div class="item">
                                        <a href="truyen_tranh?story=${c.name}">
                                            <img src="${c.image}" alt="" class="lazy">
                                        </a>
                                        <div class="slide-caption">
                                            <h3><a href="truyen_tranh?story=${c.name}">${c.name}</a></h3>
                                            <a href="#">Chương</a>
                                            <span class="time">
                                                <i class="fa-regular fa-clock"></i>
                                                1 giờ trước
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="center-side col-md-8">
                        <div class="ModuleContent">
                            <div class="items">
                                <div class="relative">
                                    <h1 class="page-title">
                                        Truyện mới cập nhật
                                        <i class="fa-solid fa-angle-right"></i>
                                    </h1>
                                    <a href="" class="filter-icon">
                                        <i class="fa-solid fa-filter"></i>
                                    </a>
                                </div>
                                <div class="row">
                                    <c:forEach items="${requestScope.listStory}" var="listStory">
                                        <div class="item">
                                            <figure class="clearfix">
                                                <div class="image">
                                                    <a href="truyen_tranh?story=${listStory.name}">
                                                        <img src="${listStory.image}" alt="">
                                                    </a>
                                                    <div class="view clearfix">
                                                        <span class="pull-left">
                                                            <i class="fa-regular fa-eye"></i>
                                                            ${listStory.view}
                                                            <i class="fa-solid fa-comment"></i>
                                                            240
                                                            <i class="fa-solid fa-heart"></i>
                                                            7,019
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="figcaption">
                                                    <h3>
                                                        <a href="">${listStory.name}</a>
                                                    </h3>
                                                    <ul>
                                                        <li class="chapter clearfix"><a href="#">Chương 1079</a><i class="time">3 ngày trước</i></li>
                                                        <li class="chapter clearfix"><a href="#">Chương 1078</a><i class="time">10 ngày trước</i></li>
                                                        <li class="chapter clearfix"><a href="#">Chương 1077</a><i class="time">17 ngày trước</i></li>
                                                    </ul>
                                                </div>
                                            </figure>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="pagination-outter">
                                <ul class="pagination">
                                    <li><a href="Home">&laquo;</a></li>
                                    <li><a href="Home?page=${initPage-1}">&lsaquo;</a></li>
                                    <li class="active"><a href="/Home?page=${initPage}">${initPage}</a></li>
                                    <li><a href="Home?page=${initPage+1}">${initPage+1}</a></li>
                                    <li><a href="Home?page=${initPage+2}">${initPage+2}</a></li>
                                    <li><a href="Home?page=${initPage+3}">${initPage+3}</a></li>
                                    <li><a href="Home?page=${initPage+4}">${initPage+4}</a></li>
                                    <li><a href="Home?page=${initPage+5}">${initPage+5}</a></li>
                                    <li><a href="Home?page=${initPage+1}">&rsaquo;</a></li>
                                    <li><a href="">&raquo;</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="right-side col-md-4">
                        <div class="history-comics">
                            <div class="box darkBox">
                                <h2>
                                    Lịch sử đọc truyện
                                    <a href="#" class="view-all">Xem tất cả</a>
                                </h2>
                                <ul class="list-unstyled">
                                    <li>
                                        <div class="t-item">
                                            <a href="" class="thumb">
                                                <img src="img/dai-vuong-tha-mang.jpeg" alt="">
                                            </a>
                                            <h3>
                                                <a href="">Đại Vương Tha Mạng</a>
                                            </h3>
                                            <p class="chapter">
                                                <a href="">
                                                    Đọc tiếp chương 500
                                                    <i class="fa-solid fa-angle-right"></i>
                                                </a>
                                                <span class="view pull-right">
                                                    <a href="">
                                                        <i class="fa-solid fa-xmark"></i>
                                                        Xoá
                                                    </a>
                                                </span>
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="t-item">
                                            <a href="" class="thumb">
                                                <img src="img/dai-vuong-tha-mang.jpeg" alt="">
                                            </a>
                                            <h3>
                                                <a href="">Đại Vương Tha Mạng</a>
                                            </h3>
                                            <p class="chapter">
                                                <a href="">
                                                    Đọc tiếp chương 500
                                                    <i class="fa-solid fa-angle-right"></i>
                                                </a>
                                                <span class="view pull-right">
                                                    <a href="">
                                                        <i class="fa-solid fa-xmark"></i>
                                                        Xoá
                                                    </a>
                                                </span>
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Footer -->
        <jsp:include page="footer.jsp"/>
        <script>
            $('.items-slider').slick({
                slidesToShow: 5,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 5000
            });
        </script>
        <script>
            function searchByName(param) {
                var search = param.value; 
                $.ajax({
                    url: "ajax",
                    type: "get",
                    data: {
                        search : search
                    },
                    success: function(data) {
                        var row = document.getElementById('content');
                        row.innerHTML = data;
                    },
                    error: function(xhr){
                        
                    }
                });
                document.getElementById("suggestsearch").style.display = "block";
            }
        </script>
    </body>
</html>
