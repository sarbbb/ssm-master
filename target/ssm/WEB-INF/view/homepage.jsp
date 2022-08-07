<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首頁</title>
 <!-- 引入bootstrap 样式文件 -->
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <!-- 引入我们自己的首页样式文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
    <!-- 先引入jquery js文件 -->
</head>
<body>
<input type="hidden" value="${search }" id="hsearch" />
  <div class="container">
        <div class="row">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                              <span class="sr-only"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                            </button>
                         <a class="navbar-brand" href="userlist">房屋買賣交易</a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li ><a href="#">台北市 <span class="sr-only">(current)</span></a></li>
                            <li ><a href="#">新北市</a></li>
                            <li ><a href="#">台中市</a></li>
                            <li ><a href="#">台南市</a></li>
                            <li ><a href="#">高雄市</a></li>
                        </ul>
                        <form class="navbar-form navbar-left" >
                            <div class="form-group">
                                <input type="text" style="width:350px" name="searchProduct" id="hideSearch" class="form-control" placeholder="搜索"/>
                            </div>
                            <button style="width:60px" type="button" class="btn btn-default btn-search">搜索</button>
                        </form>
                        <ul style="background-color:#f5f5f5" class="nav navbar-nav navbar-right" >
                            <c:if test="${sessionScope.loginUser.userimage == null}">
                                <li ><img class="img-circle" src="${pageContext.request.contextPath}/static/image/logo.png" style="width:60px;height:60px"></li>
                            </c:if>
							<c:if test="${sessionScope.loginUser.userimage != null }">
                            <li ><img class="img-circle" src="${sessionScope.loginUser.userimage }" style="width:60px;height:60px"></li>
                            </c:if>
							 
							 <li ><a href="userpage"  data-target=".login">${sessionScope.loginUser.username}</a></li>					
						</ul>
                        <!-- 模态框 -->
                       、
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>
        </div>
        <div class="row">
            <header class="col-md-2">
                <div class="logo">
                    <a href="userlist">
                        <img src="static/image/logo.png" alt="" class="hidden-xs">
                        <span class="visible-xs">房屋買賣交易</span>
                    </a>
                </div>
                 <div class="nav">
                     <ul>
                            <li id="shuma1"><a href="#" class="glyphicon glyphicon-camera">台北市 <span class="sr-only">(current)</span></a></li>
                            <li id="meizhuang1"><a href="#" class="glyphicon glyphicon-heart-empty">新北市</a></li>
                            <li id="shipin1"><a href="#" class="glyphicon glyphicon-cutlery">台中市</a></li>
                            <li id="shuji1"><a href="#"  class="glyphicon glyphicon-gift">台南市</a></li>
                            <li id="fushi1"><a href="#" class="glyphicon glyphicon-blackboard">高雄市</a></li>
                    </ul>
                </div>
            </header>
            
            <article class="col-md-7">
                <!-- 商品 -->
                <div class="news clearfix" style="width:850px">
                    <ul>
                        <li>
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <img src="/ssm/static/image/台北市.jpg" alt="...">
                                        <div class="carousel-caption">
                                            台北市精選物件
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="/ssm/static/image/新北市.jpg" alt="...">
                                        <div class="carousel-caption">
                                           新北市精選物件
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="/ssm/static/image/台中市.jpg" alt="...">
                                        <div class="carousel-caption">
                                            台中市精選物件
                                        </div>
                                    </div>
                                </div>

                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                            <script>
                                $('.carousel').carousel({
                                    interval: 2000
                                })
                            </script>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/ssm/static/image/桃園市.jpg" alt=" ">
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <img src="/ssm/static/image/高雄市.jpg" alt="">
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <img src="/ssm/static/image/台北市1.jpg" alt="" >
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <img src="/ssm/static/image/台北市2.jpg" alt="">
                            </a>
                        </li>

                    </ul>
                </div>
                <!-- 商品信息-->
                <div class="publish" style="width:850px">

                </div>
            <!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area" style="width:850px">
				
			</div>
            </article>
        </div>
    </div>
    
<script>
//页面加载时发送ajax请求获取商品数据
$(function(){
	if($("#hsearch").val()!="" && $("#hsearch").val()!=null)
		$("#hideSearch").val($("#hsearch").val());
		to_page(1);
});

//点击搜索按钮
$(".btn-search").click(function(){
	to_page(1);
});

//上方導航條
$("#shuma").click(function(){
	$("#hideSearch").val("台北市");
	to_page(1);
});

$("#meizhuang").click(function(){
	$("#hideSearch").val("新北市");
	to_page(1);
});
$("#shipin").click(function(){
	$("#hideSearch").val("台中市");
	to_page(1);
});
$("#shuji").click(function(){
	$("#hideSearch").val("台南市");
	to_page(1);
});
$("#fushi").click(function(){
	$("#hideSearch").val("高雄市");
	to_page(1);
});

//左侧导航条
$("#shuma1").click(function(){
    $("#hideSearch").val("台北市");
    to_page(1);
});

$("#meizhuang1").click(function(){
    $("#hideSearch").val("新北市");
    to_page(1);
});
$("#shipin1").click(function(){
    $("#hideSearch").val("台中市");
    to_page(1);
});
$("#shuji1").click(function(){
    $("#hideSearch").val("台南市");
    to_page(1);
});
$("#fushi1").click(function(){
    $("#hideSearch").val("高雄市");
    to_page(1);
});
//获取第几页得商品信息
  function to_page(pn) {
	var searchContent = $("#hideSearch").val();
        $.ajax({
            url:"/ssm/prolist",
            data:{"pn":pn,"searchContent":searchContent},
            type:"GET",
            success:function (result) {
            	console.log(result);
               if(result.objectMap.uproduct.list.length>0){
                   build_pros_table(result);
                   build_page_nav(result);
               }
            }
        });
    };
    //构建商品信息
   function build_pros_table(result) {
        //清空table表
        $(".publish").empty();
        var prods =  result.objectMap.uproduct.list;
        $.each(prods,function (index, pros) {
            var div1 = $("<div></div>").addClass("row");
            var div2 = $("<div></div>").addClass("col-sm-9");
            var ha = $("<h3></h3").append($("<a style='color:blue'></a>").append(pros.productname).attr("href","product?productid="+pros.productid));
            var p1 = $("<p></p>").addClass("text-muted hidden-xs").append("地區："+pros.productbrand);
            var p2 = $("<p></p>").addClass("hidden-xs").append(pros.productdes);
            var sp = $("<span></span").addClass("hidden-xs").append("房屋類型："+pros.productmodel+" ");
            var p3 = $("<p></p>").addClass("text-muted").append("房屋價格："+pros.productprice+"萬元 ");
            p3.append(sp);
            var div21 =$("<div></div").addClass("col-sm-3 pic hidden-xs");
            var im =$("<img src='"+pros.productimage+"'"+" alt='未上傳圖片' onerror=this.src='${pageContext.request.contextPath}/ssm/static/image/default.jpg'style='height:170px;width:180px' >");
            div21.append(im);
            div2.append(ha).append(p1).append(p2).append(p3);
            div1.append(div2).append(div21).appendTo(".publish");
        });
    };
    //解析构建分页条信息，点击进行跳转下一页
    function build_page_nav(result) {
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首頁").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if (result.objectMap.uproduct.hasPreviousPage == false) {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else {
            //为元素添加翻页事件
            firstPageLi.click(function () {
                to_page(1);
            });
            prePageLi.click(function () {
                to_page(result.objectMap.uproduct.pageNum -1);
            });
        }

        var nextPageLi = $("<li></li>").append($("<a style=></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a ></a>").append("末頁").attr("href","#"));
        if (result.objectMap.uproduct.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else {
            nextPageLi.click(function () {
                to_page(result.objectMap.uproduct.pageNum +1);
            });
            lastPageLi.click(function () {
                to_page(result.objectMap.uproduct.pages);
            });
        }

        ul.append(firstPageLi).append(prePageLi);
        $.each(result.objectMap.uproduct.navigatepageNums,function (index, item) {
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if (result.objectMap.uproduct.pageNum == item) {
                numLi.addClass("active");
            }
            numLi.click(function () {
                to_page(item);
            });
            ul.append(numLi);
        });

        ul.append(nextPageLi).append(lastPageLi);

        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    };
</script>
</body>
</html>