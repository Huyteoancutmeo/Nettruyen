<%-- 
    Document   : story
    Created on : 10 thg 4, 2023, 21:59:52
    Author     : mgnd3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                    <li><a href="truyen_tranh?storyId=${story.id}">${story.name}</a></li>
                </ul>

                <div class="row">               
                    <div class="center-side col-md-8">
                        <div id="item-detail">
                            <h1>${story.name}</h1>
                            <time class="small" > [Cập nhật lúc: 2023-03-27 04:49:24]</time>
                            <div class="detail-info">
                                <div class="row">
                                    <div class="col-xs-4 image">
                                        <img src="${story.image}" alt="">
                                    </div>
                                    <div class="col-xs-8 info">
                                        <ul class="list-info">
                                            <li class="author row">
                                                <p class="name col-xs-4">
                                                    <i class="fa-solid fa-user"></i>
                                                    Tác giả
                                                </p>
                                                <p class="col-xs-8">Đang cập nhật </p>
                                            </li>
                                            <li class="status row">
                                                <p class="name col-xs-4">
                                                    <i class="fa-solid fa-rss"></i>
                                                    Tình trạng
                                                </p>
                                                <p class="col-xs-8">Đang cập nhật</p>
                                            </li>
                                            <li class="kind row">
                                                <p class="name col-xs-4">
                                                    <i class="fa-solid fa-tag"></i>
                                                    Thể loại
                                                </p>

                                                <p class="col-xs-8">
                                                    <c:forEach items="${requestScope.list}" var="list">
                                                        <a href="the_loai?category=${list.category}">${list.category}</a> -
                                                    </c:forEach>
                                                </p>

                                            </li>
                                            <li class="row">
                                                <p class="name col-xs-4">
                                                    <i class="fa-solid fa-eye"></i>
                                                    Lượt xem
                                                </p>
                                                <p class="col-xs-8">${story.view}</p>
                                            </li>
                                        </ul>
                                        <div class="mrt5 mrb10">
                                            <a href="truyen_tranh?storyId=${story.id}">${story.name}</a>
                                            <span>
                                                Xếp hạng: 
                                                <span>4.5</span>
                                                /
                                                <span>5</span>
                                                - 
                                                <span>24478</span>
                                                Lượt đánh giá
                                            </span>
                                        </div>
                                        <div class="row rating">
                                            <div class="col-xs-6">
                                                <img src="img/star-on.webp" alt="">&nbsp;
                                                <img src="img/star-on.webp" alt="">&nbsp;
                                                <img src="img/star-on.webp" alt="">&nbsp;
                                                <img src="img/star-on.webp" alt="">&nbsp;
                                                <img src="img/star-half.webp" alt="">&nbsp;
                                            </div>
                                        </div>
                                        <div class="follow">
                                            <span><span>40.792</span> Người đã theo dõi</span>
                                        </div>
                                        <div class="read-action mrt10">
                                            <a href="" class="btn btn-warning mrb5">Đọc từ đầu</a>
                                            <a href="" class="btn btn-warning mrb5">Đọc mới nhất</a>
                                            <a href="" class="btn btn-danger mrb5">
                                                Đọc tiếp
                                                <i class="fa-solid fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="detail-content">
                                <h3 class="list-title">
                                    <i class="fa-regular fa-file-lines"></i>
                                    Nội dung
                                </h3>
                                <p class="shortened">
                                    Võ đạo đỉnh phong, là cô độc, là tịch mịch, là dài đằng đẵng cầu tác, là cao xử bất thắng hàn
                                    Phát triển trong nghịch cảnh, cầu sinh nơi tuyệt địa, bất khuất không buông tha, mới có thể có thể phá võ chi cực đạo.
                                    Lăng Tiêu các thí luyện đệ tử kiêm quét rác gã sai vặt Dương Khai ngẫu lấy được một bản vô tự hắc thư, từ nay về sau đạp vào dài đằng đẵng võ đạo. 
                                </p>
                                <a href="" class="morelink">
                                    Xem thêm
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </div>
                            <div class="list-chapter">
                                <h2 class="list-title clearfix">
                                    <i class="fa-solid fa-list"></i>
                                    Danh sách chương
                                </h2>
                                <div class="row heading">
                                    <div class="col-xs-5 no-wrap">Số chương</div>
                                    <div class="col-xs-4 no-wrap text-center">Cập nhật</div>
                                </div>
                                <nav>
                                    <ul>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3175</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">13 giờ trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3174</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">20 giờ trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3173</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">1 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3172</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">1 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3171</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">1 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3170</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">2 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3169</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">2 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3168</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">2 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3167</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">2 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3166</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">3 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3165</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">3 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3164</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">4 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3163</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">4 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3163</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">4 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3162</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">4 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3161</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">5 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3160</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">5 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3159</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">5 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3158</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">6 ngày trước</div>
                                        </li>
                                        <li>
                                            <div class="col-xs-5 chapter"><a href="">Chương 3157</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">6 ngày trước</div>
                                        </li>
                                        <li class="less">
                                            <div class="col-xs-5 chapter"><a href="">Chương 3157</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">6 ngày trước</div>
                                        </li>
                                        <li class="less">
                                            <div class="col-xs-5 chapter"><a href="">Chương 3157</a></div>
                                            <div class="col-xs-4 no-wrap small text-center">6 ngày trước</div>
                                        </li>
                                    </ul>
                                    <a href="#" class="view-more hidden">
                                        <i class="fa-solid fa-plus"></i>
                                        Xem thêm
                                    </a>
                                </nav>
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
        <jsp:include page="footer.jsp"/>
    </body>
</html>

