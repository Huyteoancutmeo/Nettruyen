<%-- 
    Document   : category
    Created on : 12 thg 4, 2023, 20:56:16
    Author     : mgnd3
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- link css -->
        <link rel="stylesheet" href="css/fontawesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <!--link js -->
        <script src="js/jquery-3.6.0.min.js"></script>
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

                <ul class="breadcrumb">
                    <li><a href="Home">Trang chủ</a></li>
                    <li><a href="the_loai">Thể loại</a></li>
                    <li><a href="the_loai?catrgory=${category}">${category}</a></li>
                </ul>
                <div class="row">    
                    <div class="center-side col-md-8">
                        <div class="ModuleContent">
                            <h1>Truyện thể loại ${category}</h1>
                            <div class="description">
                                <div class="info">Tất cả truyện tranh</div>
                            </div>
                            <ul class="nav-tabs">
                                <li class="active"><a href="">Tất cả</a></li>
                                <li><a href="">Hoàn thành</a></li>
                                <li><a href="">Đang tiến hành</a></li>
                            </ul>
                            <div class="sort-by row">
                                <div class="col-sm-3 mrt5 mrb5">Sắp xếp theo: </div>
                                <div class="col-sm-9">
                                    <div class="hidden-xs">
                                        <a class="active" href="">Ngày cập nhật</a>
                                        <a href="">Truyện mới</a>
                                        <a href="">
                                            <i class="fa-solid fa-eye"></i>
                                            Top all
                                        </a>
                                        <a href="">
                                            <i class="fa-solid fa-eye"></i>
                                            Top tháng
                                        </a>
                                        <a href="">
                                            <i class="fa-solid fa-eye"></i>
                                            Top tuần
                                        </a>
                                        <a href="">
                                            <i class="fa-solid fa-eye"></i>
                                            Top ngày
                                        </a>
                                        <a href="">
                                            <i class="fa-solid fa-heart"></i>
                                            Theo dõi
                                        </a>
                                        <a href="">
                                            <i class="fa-solid fa-comment"></i>
                                            Bình luận
                                        </a>
                                        <a href="">
                                            <i class="fa-solid fa-list"></i>
                                            Số chapter
                                        </a>
                                        <a href="">
                                            <i class="fa-solid fa-list"></i>
                                            Top Follow
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ModuleContent">
                            <div class="items">
                                <div class="row">
                                    <c:forEach items="${requestScope.list}" var="listStory">
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
                                                            ${listStory.comment}
                                                            <i class="fa-solid fa-heart"></i>
                                                            ${listStory.like}
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
                        <div class="darkBox">
                            <div class="ModuleContent">
                                <h2 class="module-title">Thể loại</h2>
                                <ul>
                                    <li class="active"><a href="">Tất cả</a></li>
                                    <c:forEach items="${requestScope.listCategory}" var="listCategory">
                                    <li><a href="the_loai?category=${listCategory.name}">${listCategory.name}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer -->
        <jsp:include page="footer.jsp"/>
    </body>
</html>
