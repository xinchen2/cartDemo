<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./css/home.css">
<title>Insert title here</title>
</head>
<body>
	
	
	<div style="background-color:#5D4B33;">
<div id="header" style="">
        <div class="row">
          <div class="col-sm-2 col-md-2 col-xs-3 imooc" style="text-align: left;"> <span style="">IMOOC</span> </div>
          <div class="col-sm-7 col-md-7 col-xs-6">
            <div class="row">
              <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid" style="background-color:#5D4B33; border:none;">
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                  </div>
                  <div class="collapse navbar-collapse" id="navbar-collapse-1">
                    <ul class="nav navbar-nav border active">
                      <li><a href="#" role="button" >首页</a> </li>
                    </ul>
                  </div>
                </div>
              </nav>
            </div>
          </div>
          <div class="col-sm-3 col-md-3 col-xs-3" style="" id="headIcon">
            <div class="row">
				<div class="col-sm-3 col-md-3 col-xs-3" id="none"></div>
              <div class="col-sm-3 col-md-3 col-xs-3  " style="text-align: center; line-height: 50px ; position"> <span class="glyphicon glyphicon-search" aria-hidden="true" style=""></span> 
			
			  </div>
              <div class="col-sm-3 col-md-3 col-xs-3 " style="text-align: center; line-height: 50px ;"> <span  class="glyphicon glyphicon-user" aria-hidden="true" id="userIcon"></span> </div>
			<!--	登陆table -->
			
			
			  <div class="col-sm-3 col-md-3 col-xs-3 " style="position:relative;text-align: center; line-height: 50px ;"> 
				<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true" id="cartSpan"></span> 
				
			  </div>
				
			</div>
          </div>
        </div>
</div>




</div>





<!--	banner-->
	<div id="banner"  style="" >
		<div class="container">
		<div class="row" style="">
			<div class="col-md-7 col-md-push-1 col-xs-7 col-xs-push-1" id="title">
				<div style="">IMOOC&nbsp;蛋糕</div>
				<div style="">特别的日子，特别的你</div>
				<div><span style="">SHOP NOW</span></div>
			</div>
			<div class="col-md-4 col-md-push-1 col-xs-4 col-xs-push-1" style=" text-align: center; ">
				<img src="./images/2.png" width="80%"/>
			</div>
		</div>
	</div>
	</div>
<!--banner-->
	
	
	<style>
		.twoView,.view{position:absolute; bottom:0px; left:-1px; background:yellow; height:40px; line-height:40px; color:white; border-radius:4px;}
		.shop{padding:5px 10px; border:2px solid white;}
		.shop:hover{color:blue; border-color:blue;}
	</style>
	
<!--goods information	-->
<div class="row" id="goodsDetail">
	
</div>
<!--	==================-->

<!--search-->
	<div id="search">
		<div style="font-size: 30px;">Newsletter</div>
		<div>
			<input  placeholder="Email "/>
			<span>SubScribe</span>
		</div>
	</div>

	
<!--link-->
	<div id="link">
		<div class="row">
				<div class="col-md-2 col-xs-4">
					<span>COMPANY</span><br/>
					<span>Produce</span><br/>
					<span>Team</span><br/>
					<span>Happenings</span><br/>
					<span>Dealer Locator</span>
				</div>
				<div class="col-md-2 col-xs-4">
					<span>SERVICE</span><br/>
					<span>Support</span><br/>
					<span>FAQ</span><br/>
					<span>Warranty</span><br/>
					<span>Contact Us</span>
				</div>
				<div class="col-md-3 col-xs-4">
					<span>ORDER & RETURNS</span><br/>
					<span>Order Status</span><br/>
					<span>Shipping Policy</span><br/>
					<span>Return Policy</span><br/>
					<span>Digtal Gift Card</span><br/>
				</div>
				<div class="col-md-2 col-xs-4">
					<span>LEGAL</span><br/>
					<span>Privacy</span><br/>
					<span>Terms And Conditions</span><br/>
					<span>Social Responsibility</span>
				</div>
	</div>
	</div>

<!--footer-->
	<div id="footer">
		<span>Copyright@2017 imooc.com All Rights Reserved京ICP备 13046642号-2</span>
	</div>

<div id="login" style="">



</div>


<!-- Optional JavaScript --> 
<!-- jQuery first, then Popper.js, then Bootstrap JS --> 
<script src="./js/jquery-3.3.1.js"></script> 
<script type="text/javascript" src="./js/popper.js"></script> 
<script type="text/javascript" src="./js/bootstrap.js"></script>
	<script type="text/javascript" src="js/masonry.pkgd.js"></script>


<script>
	$.ajax({
		url:"./GetGoods",
		type:"post",
		dataType:"json",
		data:{},
		async:false,
		success:function(data){
			console.log(data[2]);
			for(i=2;i<data.length;i++){
				console.log(i);
				$("#goodsDetail").append(" \
					<div class='col-xs-12 col-md-3 col-sm-4'>\
		    			<div class='thumbnail twoBar' style='position:relative'>\
		    		    <img src='images/"+data[i].picture+"'/>\
		    		    <div class='twoView'>\
						<div class='col-xs-6 col-md-6 com-sm-6' style='text-align:left;'>\
							<span class='glyphicon glyphicon-eye-open'></span>\
							<span>View</span>\
						</div>\
						<div class='col-xs-6 col-md-6 com-sm-6' style='text-align:right;'><span class='shop' title="+data[i].name+">SHOP NOW</span></div>\
					  </div>\
		    		</div>\
					<div>\
						<div style='text-align:left;' >Loren lpsum is simply</div>\
						  <div style='height:15px;'>\
							<div style='heigth:15px; padding-bottm:10px;' >\
								<div style='width:15px; height:15px; background:url(images/star.png) -5px -20px no-repeat;float:left;'></div>\
								<div style='width:15px; height:15px; background:url(images/star.png) -5px -20px no-repeat;float:left;'></div>\
								<div style='width:15px; height:15px; background:url(images/star.png) -5px -20px no-repeat;float:left;'></div>\
								<div style='width:15px; height:15px; background:url(images/star.png) -5px -20px no-repeat;float:left;'></div>\
								<div style='width:15px; height:15px; background:url(images/star.png) -5px -20px no-repeat;float:left;'></div>\
							</div>\
							<div style='float:right; width:45px; height:15px; text-align:right; line-height:15px; padding-right:0px; color:grey;'>$95.00</div>\
						  </div>\
					</div>\
		  			</div>\
				\	");
			}
		},
		error:function(data){
			console.log("wrong");
			console.log(data);
		}
	});
</script>



<script>
$(function () {
  $('[data-toggle="popover"]').popover()
})



	$(
			function(){
				$("#userIcon").mouseover(
				function(){
					var x = $("#userIcon").offset().left;
					$("#login").attr("style","top:50px;right:"+(winWidth-x-30-15)+"px");

					$("table").css("display","block");
				});
				$("#userIcon").mouseout(
				function(){
						time = setTimeout(function(){$("table").css("display","none");},500);
				});
				
				$("table").hover(
					function(){
						clearTimeout(time);
				//		$("table").css("display","blobk");
					},
					function(){
						//$("table").css("display","none");
						setTimeout(function(){$("table").css("display","none");},500);
					}
				);
				
			}
		) 
		
		
		

</script>

<script>
		width = $(".oneBar:first").width();
		console.log(width);
		$(".view:first").first().css("width",width+10);

		width = $(".twoBar:first").width();
		console.log(width);
		$(".twoView").css("width",width+10);
		
	
		$(".shop").click(
			function(){
				title = $(this).attr("title");
				flag = false;
				$("#items>div").each(
					function(index){
						if($(this).attr("title")==title){
							flag = true;
							console.log($(this).attr("title"));
						//	$(this).children().eq(1).html($(this).children().eq(1).html+1);
							number = parseInt($(this).children().eq(1).html());
							$(this).children().eq(1).html(number+1);
						}
					}
				);
				if(!flag){
					$("#items").append(" \
					<div class='row' title="+title+"> \
						<div class='col-md-8 col-sm-8 col-xs-8' style='text-align:left;'>"+title+"</div> \
						<div class='col-md-1 com-sm-1 col-xs-1'>1</div> \
						<div class='col-md-1 com-sm-1 col-xs-1'>+</div> \
						<div class='col-md-1 com-sm-1 col-xs-1'>-</div> \
					</div>");
				}
			}
		);
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>