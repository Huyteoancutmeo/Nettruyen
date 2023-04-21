<%-- 
    Document   : header
    Created on : 19 thg 4, 2023, 20:07:17
    Author     : mgnd3
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Header-->
        <header class="header" id="header">
            <div class="container">
                <div class="navbar">
                    <div class="navbar-header">
                        <div class="navbar-band">
                            <a href="Home" class="logo" title="Truyện tranh online">
                                <img src="./img/logo-nettruyen.webp" alt="Logo Nettruyen">
                            </a>
                        </div>
                        <div class="navbar-form navbar-left hidden-xs search-box comicsearchbox">
                            <form class="input-group" action="tim_kiem">
                                <input name="search" type="text" class="searchinput form-control" placeholder="Tìm truyện..." autocomplete="off" oninput="searchByName(this)">
                                <div class="input-group-btn">
                                    <input type="submit" value class="searchbutton btn btn-default">
                                </div>
                                <div id="suggestsearch" style="display: none;">
                                    <ul id="content">

                                    </ul>
                                </div>
                            </form>

                        </div>
                        <i class="fa-solid fa-lightbulb toggle-dark"></i>    
                    </div>
                    <ul class="nav-account list-inline hidden-xs pull-right">
                        <li class="login-link">
                            <a href="" rel="nofollow">Đăng nhập</a>
                        </li>
                        <li class="register-link">
                            <a href="" rel="nofollow">Đăng ký</a>
                        </li>
                    </ul>    
                </div>
            </div>
        </header>
        <!--Navigation-->
        <div class="main-nav hidden-xs" style="z-index: 1000; position: relative; top: 0px;">
            <div class="inner">
                <div class="container">
                    <div class="ModuleContent">
                        <ul class="nav navbar-nav main-menu">
                            <li class="active" style="padding: 0 5px; color:#ae4ad9; background-color: #fff;">
                                <a href="Home">
                                    <i class="fa-solid fa-house-chimney">
                                        <span class="visible-xs">Trang chủ</span>
                                    </i>
                                </a>
                            </li>
                            <li><a href="">Hot</a></li>
                            <li><a href="">Lịch sử</a></li>
                            <li class="dropdown">
                                <a href="">
                                    Thể loại
                                    <i class="fa-solid fa-caret-down"></i>
                                </a>
                                <div class="dropdown-menu navbar-dropdown">
                                    <c:forEach items="${requestScope.listCategory}" var="lC">
                                        <a href="the_loai?category=${lC.name}">${lC.name}</a>
                                    </c:forEach>
                                </div>
                            </li>
                            <li class="dropdown">
                                <a href="">
                                    Xếp hạng
                                    <i class="fa-solid fa-sort"></i>
                                </a>
                                <div class="dropdown-menu navbar-dropdown">
                                    <a href=""><i class="fa-solid fa-eye"></i> Top all</a>
                                    <a href="">
                                        <div class="strong">
                                            <i class="fa-solid fa-signal-bars"></i>
                                            Truyện full
                                        </div>
                                    </a>
                                    <a href=""><i class="fa-solid fa-eye"></i> Top tháng</a>
                                    <a href=""><i class="fa-solid fa-thumbs-up"></i> Yêu thích</a>
                                    <a href=""><i class="fa-solid fa-eye"></i> Top tuần</a>
                                    <a href=""><i class="fa-solid fa-arrows-rotate"></i> Mới cập nhật</a>
                                    <a href=""><i class="fa-solid fa-eye"></i> Top ngày</a>
                                    <a href=""><i class="fa-solid fa-cloud-arrow-up"></i> Truyện mới</a>
                                    <a href=""><i class="fa-solid fa-eye"></i> Top Follow</a>
                                    <a href=""><i class="fa-solid fa-list"></i> Số chapter</a>
                                </div>
                            </li>
                            <li>
                                <a href="tim_kiem?search=">Tìm truyện</a>
                            </li>
                            <li><a href="">Con gái</a></li>
                            <li><a href="">Con trai</a></li>
                            <li><a href="">TruyenQQ</a></li>
                            <li><a href="">Truyện chữ hay</a></li>
                            <li><a href="">Manga online</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
