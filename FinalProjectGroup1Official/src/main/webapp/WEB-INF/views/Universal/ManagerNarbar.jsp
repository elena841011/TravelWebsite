<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value='/gotoAdminHomePage'/>">
                <div class="sidebar-brand-icon rotate-n-15">
                </div>
                <div class="sidebar-brand-text mx-3"><img src="${pageContext.request.contextPath}/AdminTemplate/img/white.png" alt="無法顯示圖片" width="100%"></div>
            </a>

            <!-- 分隔線 -->
            <hr class="sidebar-divider my-0">

              <!-- 用戶管理 -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/exciseSelectAll'/>">
            
                    <i class="fas fa-user-cog" aria-hidden="true"></i>
                    <span>用戶管理</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                      <!-- <h6 class="collapse-header">Custom Components:</h6>
                       <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a> --> 
                    </div>
                </div>
            </li>
               <li class="nav-item">
                <a class="nav-link" href="<c:url value='/shopeCarOrderPage'/>">
                    <i class="fas fa-clipboard-list" aria-hidden="true"></i>
                    <span>訂單管理</span></a>
            </li>

             <li class="nav-item">
                <a class="nav-link" href="<c:url value='/joelin'/>">
                    <i class="fas fa-clipboard-list" aria-hidden="true"></i>
                    <span>住宿商品管理</span></a>
            </li>

          <!-- Nav Item - Pages Collapse Menu -->
<!--             <li class="nav-item"> -->
<!--                 <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse2" -->
<!--                     aria-expanded="true" aria-controls="collapse2"> -->
<!--                     <i class="fas fa-car-alt" aria-hidden="true"></i> -->
<!--                     <span>交通商品管理</span> -->
<!--                 </a> -->
<!--                 <div id="collapse2" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar"> -->
<!--                     <div class="bg-white py-2 collapse-inner rounded"> -->
<!--                        <h6 class="collapse-header">Login Screens:</h6> -->
<!--                         <a class="collapse-item" href="car.html">租車</a> -->
<!--                         <a class="collapse-item" href="train.html">火車票</a> -->
                       
<!--                     </div> -->
<!--                 </div> -->
<!--             </li> -->
            
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/wade'/>">
                    <i class="fas fa-clipboard-list" aria-hidden="true"></i>
                    <span>租車管理</span></a>
            </li>
            
           <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse3"
                    aria-expanded="true" aria-controls="collapse3">
                    <i class="far fa-calendar-check " aria-hidden="true"></i>
           <span>活動商品管理</span>
       </a> 
       <div id="collapse3" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
          
             <a class="collapse-item" href="<c:url value='/sylvia' />">特色體驗</a>
          <a class="collapse-item" href="<c:url value='/queryGame' /> ">城市尋寶</a>  
                                             
         </div>
                </div>

            </li>

            <!-- Nav Item - Charts -->
<!--             <li class="nav-item"> -->
<!--                 <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse3" -->
<!--                     aria-expanded="true" aria-controls="collapse3"> -->
<!--                     <i class="far fa-calendar-check " aria-hidden="true"></i> -->
<!--                     <span>活動商品管理</span> -->
<!--                 </a> -->
<!--                 <div id="collapse3" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar"> -->
<!--                     <div class="bg-white py-2 collapse-inner rounded"> -->
<!--                        <h6 class="collapse-header">Login Screens:</h6> -->
<!--                         <a class="collapse-item" href="Event.html">特色體驗</a> -->
<!--                         <a class="collapse-item" href="SpEvent.html">城市尋寶</a> -->
                       
<!--                     </div> -->
<!--                 </div> -->

<!--             </li> -->

          <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/bos'/>">
                    <i class="fas fa-clipboard-list" aria-hidden="true"></i>
                    <span>部落格管理</span></a>
            </li>
            
             <li class="nav-item">
                <a class="nav-link" href="<c:url value='/'/>">
                    <i class="fas fa-house-user" aria-hidden="true"></i>
                    <span>返回首頁</span>
                </a>

            </li>
  
            
            
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            
        </ul>


</body>
</html>