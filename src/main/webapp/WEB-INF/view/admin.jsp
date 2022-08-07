<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首頁</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<input type="hidden" value="${search }" id="hsearch" />
	<div class="container">
		<div class="row">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">房屋交易</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="#">台北市 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">新北市</a></li>
						<li><a href="#">桃園市</a></li>
						<li><a href="#">台中市</a></li>
						<li><a href="#">高雄市</a></li>
					</ul>
					 <form class="navbar-form navbar-left" >
                            <div class="form-group">
                                <input type="text" style="width:350px" name="searchProduct" class="form-control" id="hidsearch"/>
                            </div>
                            <button style="width:60px" type="button" class="btn btn-default btn-search">搜索</button>
                     </form>
					<ul class="nav navbar-nav navbar-right">
						<li class="addpro"><a href="#" data-toggle="modal" data-target=".login">添加房屋商品</a></li>
							<li style="background:white"><a href="#" 
							data-target=".login">Admin</a></li>	
							<li style="background:white" id="adminLogout"><a href="" 
							data-target=".login">退出</a></li>
					</ul>
				</div>
				<div class="modal fade login" tabindex="-1" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title">房屋商品信息</h4>
							</div>
							<div class="modal-body">
								 <form action="adminAdd" method="post"  enctype="multipart/form-data">
									<input type="hidden" id="hiddenpro" value="0" name="productid">
									<div class="form-group">
										<label for="exampleInputEmail1">房屋商品名稱</label> <input
											type="text" class="form-control" id="exampleInputEmail1"
											placeholder="房屋商品名稱" name="productname" >
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">地區</label> <input
											type="text" class="form-control" name="productbrand"
											id="exampleInputPassword1" placeholder="地區">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">房屋類型</label> <input
											type="text" class="form-control" name="productmodel"
											id="exampleInputPassword2" placeholder="房屋類型">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">房屋價格</label> <input
											type="text" class="form-control" name="productprice"
											id="exampleInputPassword3" placeholder="房屋價格">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">房屋圖片</label> <input
											type="file" class="form-control" name="upFile"
											id="exampleInputPassword4" placeholder="房屋圖片">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">房屋描述</label> <input
											type="textarea" class="form-control" name="productdes"  rows="5" cols="20"
											id="exampleInputPassword5" placeholder="房屋描述">
									</div>
									<div class="modal-footer">
									  <input class="btn btn-default" data-dismiss="modal" type="submit" value="關閉"/>
                                      <input type="submit" class="btn btn-primary" value="添加"/>
									</div>
								</form>
							</div>
                           </div>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
			</nav>
		</div>
		<div class="row">
			<header class="col-md-2">
			<div class="logo">
				<a href="#"> <img src="static/image/logo.png" alt=""
					class="hidden-xs"> <span class="visible-xs">房屋買賣交易</span>
				</a>
			</div>
                 <div class="nav">
                  <ul>
                            <li id="shuma"><a href="#" class="glyphicon glyphicon-camera">台北市 <span class="sr-only">(current)</span></a></li>
                            <li id="meizhuang"><a href="#" class="glyphicon glyphicon-heart-empty">新北市</a></li>
                            <li id="shipin"><a href="#" class="glyphicon glyphicon-cutlery">桃園市</a></li>
                            <li id="shuji"><a href="#"  class="glyphicon glyphicon-gift">台中市</a></li>
                            <li id="fushi"><a href="#" class="glyphicon glyphicon-blackboard">高雄市</a></li>
                    </ul>
                </div>
            </header>
            <article class="col-md-7">
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
    	var daolian="<%=session.getAttribute("loginUser")%>";
    	if(daolian == "null" ||daolian==""){
    		window.location="/ssm/user/loginPage";
    	}else{
    		to_page(1);
    	}
    });
    //点击搜索按钮
    $(".btn-search").click(function(){
    	to_page(1);
    });
    //导航栏处理
    $("#shuma").click(function(){
    	$("#hidsearch").val("台北市");
    	to_page(1);
    });

    $("#meizhuang").click(function(){
    	$("#hidsearch").val("新北市");
    	to_page(1);
    });
    $("#shipin").click(function(){
    	$("#hidsearch").val("桃園市");
    	to_page(1);
    });
    $("#shuji").click(function(){
    	$("#hidsearch").val("台中市");
    	to_page(1);
    });
    $("#fushi").click(function(){
    	$("#hidsearch").val("高雄市");
    	to_page(1);
    });
      function to_page(pn) {
    	var search = $("#hidsearch").val();
            $.ajax({
                url:"/ssm/adminList",
                data:{"pn":pn,"searchContent":search},
                type:"GET",
                success:function (result) {
                    build_pros_table(result);
                    build_page_nav(result);
                }
            });
        };
        //构建商品信息
       function build_pros_table(result) {
            $(".publish").empty();
            var prods =  result.objectMap.uproduct.list;
            $.each(prods,function (index, pros) {
                var div1 = $("<div></div>").addClass("row");
                var div2 = $("<div></div>").addClass("col-sm-9");
                var ha = $("<h3></h3").append($("<a></a>").append(pros.productname));
                var p1 = $("<p></p>").addClass("text-muted hidden-xs").append("房屋類型："+pros.productbrand);
                var p2 = $("<p></p>").addClass("hidden-xs").append(pros.productdes);
                var sp = $("<span></span").addClass("hidden-xs").append("房屋:"+pros.productmodel+" ");
                var p3 = $("<p></p>").addClass("text-muted").append(" 房屋價格:"+pros.productprice+"萬元      ");
                p3.append(sp);
                var upBtn = $("<button type='button'  class='btn btn-warning btn-xs' data-toggle='modal' data-target='.login'></button>");
                upBtn.append("修改")
                upBtn.attr("data-id",pros.productid);
                upBtn.click(function(){
                	updatepro(pros.productid);
                })
                var delBtn = $( "<button type='button' class='btn btn-danger btn-xs'></button>");
                delBtn.append("删除");
                delBtn.attr("data-id",pros.productid);
                
                p3.append(upBtn).append(" ").append(delBtn);
                delBtn.click(function(){
                	deletepro(pros.productid);
                })
                var div21 =$("<div></div").addClass("col-sm-3 pic hidden-xs");
				var im =$("<img src='"+pros.productimage+"'"+" alt='未上傳圖片' onerror=this.src='${pageContext.request.contextPath}/ssm/static/image/default.jpg'style='height:170px;width:180px' >");
                div21.append(im);
                div2.append(ha).append(p1).append(p2).append(p3);
                div1.append(div2).append(div21).appendTo(".publish");
            });
        };
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
            var navEle = $("<nav></nav>").append(ul);
            navEle.appendTo("#page_nav_area");
        };

        //点击按钮删除
      function deletepro(id){
           if(confirm("確認刪除此物件嗎？")){
        	   $.ajax({
     			  url: "/ssm/adminDelete",
                   method: "post",
     			  data:{
     				 "productid":id
     			 },
     			 success:function(response){
     				 if(response.errorCode=="100"){
     					 alert("刪除成功！");
     					 window.location="/ssm/admin";
     				 }else{
     					alert("刪除失敗！");
     				    window.location="/ssm/admin";
     				 }
     					 	 
     			 },
     			 error:function(){
     				 console.log("請求發送失敗...");
     			 }
     		 });
           }
           else
        	   return false;
        	
        };
        function updatepro(id){
        	//alert("修改"+id);
        	$.ajax({
   			  url: "/ssm/adminUpdate",
              method: "post",
   			  data:{
   				 "productid":id
   			  },
   			  success:function(response){
   				  var pro = response.objectMap.uproduct;
   				  $("#hiddenpro").val(pro.productid);
   				  $("#exampleInputEmail1").val(pro.productname);
   				  $("#exampleInputPassword1").val(pro.productbrand);
   				  $("#exampleInputPassword2").val(pro.productmodel);
   				  $("#exampleInputPassword3").val(pro.productprice);
   				  $("#exampleInputPassword5").val(pro.productdes);
   				  $(".btn-primary").val("修改");
   				 
   				  },
   			  error:function(){
   				 console.log("請求發送失敗...");
   			  }
    	});
      };
     $(".addpro").click(function(){
			      $("#exampleInputEmail1").val("");
				  $("#exampleInputPassword1").val("");
				  $("#exampleInputPassword2").val("");
				  $("#exampleInputPassword3").val("");
				  $("#exampleInputPassword5").val("");
				  $(".btn-primary").val("添加");
				  $(".hiddenpro").val("0");
				  
     });

	$("#adminLogout").click(function() {
		if (confirm("確認退出嗎？")) {
			$.ajax({
				url : "/ssm/logout",
				method : "post",
				success : function(response) {
					if (response.errorCode == "100") {
						window.location = "/ssm/user/loginPage";
					} else {
						window.location = "/ssm/user/loginPage";
					}

				},
				error : function() {
					console.log("請求發送失敗...");
				}
			});
		}
	})
</script>
</body>
</html>