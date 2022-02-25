<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="img/favicon1.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <!-- Bootstrap core CSS -->
     <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
 
   <!-- ------------------------------------------------ -->     
        
        <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
        
        
       <!-- 浮動icon --> 
 <script language="javascript">
 
    $(function(){
    var div_id='tomeet'; //自訂Div區塊id名稱
    var seat ='up'; //浮動圖片位置 down=緊黏右下角 up=緊黏右上角 或可另用x或y定義
    var nowTop2 =0;
    w = $(window);
    div_left =(parseInt(w.width()) - parseInt($("#"+div_id).width()));
    $("#"+div_id).css('left', div_left);
    if(seat =='down'){
    $("#"+div_id).css('top', w.height() - $("#"+div_id).height());
    }else{
    $("#"+div_id).css('top', 0);
    }
    w.scroll(function(){
    nowHight =parseInt(document.body.scrollTop, 10) ||parseInt(document.documentElement.scrollTop, 10);
    nowTop =parseInt(document.body.scrollTop, 10) ||parseInt(document.documentElement.scrollTop, 10);
    if(seat =='down'){
    $("#"+div_id).css('top', nowTop+(w.height() - $("#"+div_id).height()));
    }else{
    $("#"+div_id).css('top', nowTop);
    }
    nowTop2 =nowTop;
    });
    });
    </script>
        
</head>
<body  >
<header >
 <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
			
             <a class="navbar-brand"  href="<c:url value="/"/>"><img src="img/8B2194C5-D69F-424B-B8D5-1BEF50181C5A.png"/></a>  
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    
                    <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">住宿</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="/clientevent"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/clientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">租車</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">活動</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/clientSpevent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">部落格</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            購物車
                            <span class="badge bg-dark text-white ms-1 rounded-pill ">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        </header>
        <!-- Header
        <header class="home-banner">
            <div class="overlap">
                <div class="text-center text-white">
                    <h1 class="title">全世界最棒的旅遊體驗</h1>
                    <h5 class="sub-title">帶你深入探索有趣又獨特的旅遊體驗行程</h5>
                </div>
            </div>
        </header>
        -->
        <div id="tomeet">
        
        <!-- HeaderBanner -->
       
<div >
            <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-indicators">
                <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
              </div>

              <div class="carousel-inner">
                  <div class="carousel-item active">
                      <svg class="bd-placeholder-img" width="100%" height="100%"  aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 1920 500"><image xlink:href="img/banner-1.jpg" ></image></svg>
                      
                      
                      <div class="container">
                    <div class="carousel-caption text-start">
                      <h1>特搜獨特體驗！</h1>
                      <p>風格手作體驗活動，讓你輕鬆將儀式感帶入日常生活</p>
                    <p><a class="btn btn-md btn-primary" href="<c:url value="/clientSpEvent"/>">前往看看</a></p>  
                    </div>
                  </div>
                </div>
                <div class="carousel-item">
                    
                  <svg class="bd-placeholder-img" width="100%" height="100%"  aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 1920 500" ><image xlink:href="img/banner-2.jpg" ></image></svg>
          
                  <div class="container">
                    <div class="carousel-caption">
                      <h1><font color="black">享受最棒的親子時光</font></h1>
                      <p><font color="black">多項親子體驗活動！小朋友輕鬆學習，大人無憂度假</font></p>
                      <p><a class="btn btn-md btn-primary" href="<c:url value="/clientSpEvent"/>">前往體驗</a></p>
                    </div>
                  </div>
                </div>
                <div class="carousel-item">
                  <svg class="bd-placeholder-img" width="100%" height="100%"  aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 1920 500" ><image xlink:href="img/banner-3.jpg" ></image></svg>
          
                  <div class="container">
                    <div class="carousel-caption text-end">
                      <h1><font color="black">微旅行一日遊</font></h1>
                      <p><font color="black">遠離塵囂 安心舒適</font></p>
                      <p><a class="btn btn-md btn-primary" href="<c:url value="/clientSpEvent"/>">前往體驗</a></p>
                    </div>
                  </div>
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
        </div> 
    <!-- headerBanner end -->
        
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20210621003.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">木匠兄妹檜木手作體驗</h5>
                                    <!-- Product price-->
                                    $450 - $1280
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
<!--                                 <div class="text-center"> -->
<!--                                 <a class="btn btn-outline-dark mt-auto" href="#">加入購物車</a> -->
<!--                                 </div> -->
								<!-- 放到購物車 -->
								<div class="text-center"> 
                                <c:url var="checkout" value="/insertRestaurant" />
								<form action="${checkout}" method="post">
									<input type="hidden" name="productCode" value="5">
									<input type="hidden" name="customerId" value="1"> 
									<input class="btn btn-outline-dark mt-auto" type="submit" value="加入購物車">	
								</form>
                                </div>     	        
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20210316063640_qiguY.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"> 頭城休閒農場體驗之旅｜半日/一日遊</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$900</span>
                                    $790
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20180502104607_Q7kaH.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">新旺集瓷陶藝教室｜手拉胚・手捏陶・貼花教學</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$480</span>
                                    $380
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20200904150327_lDCxg.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Mosaic Art Studio・土耳其馬賽克燈 DIY</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $980
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20210621001.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Welcome Bake 手作體驗｜蛋糕＆麵包＆餅乾＆塔類課程</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$680</span>
                                    $580
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20190318074743_pVYE6.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">HUBOX 手作復古工業風燈具 DIY 課程體驗</h5>
                                    <!-- Product price-->
                                    $980 - $2590
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20200505080947_8lxjY.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">TINGS Candle ｜手作香氛蠟燭課程體驗</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$1680</span>
                                    $1580
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20190309124045_d28gj.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">【台灣在地六四設計品牌】圓弧設計銀戒手作體驗</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $2019
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>  
        </section>
        
    
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
    </main>
        <!-- Bootstrap core JS-->
         <script src="AdminTemplate/vendor/jquery/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        
     <!-- //自訂Div區塊id名稱   參考網站:http://faq.tomeet.net/front/bin/ptdetail.phtml?Part=javascript01 -->   
    <div style="position:fixed;width:61px;height:59px;z-index:20;visibility:visible;left: 87%;top:50%;">
    <div style="width:100px; height:80px; border:solid 0px #cccccc;">
   
   
    <a href="<c:url value='/insertGame' />"> <!-- Sylvia\insertGame -->
    <img border="0" src="img/floating-icon-animation-2.gif" width="160" height="160"></a>
    
    </div>
    </div>
     <!-- Core plugin JavaScript-->
    <script src="AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="AdminTemplate/js/sb-admin-2.min.js"></script>

    </body>
</html>