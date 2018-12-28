<%@page import="com.teamproject3.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>잠재고객관리</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
    <link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/pages/dashboard.css" rel="stylesheet">
    
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <style>
    	#file { width:0; height:0; } 
    	#menu2 { text-align: right}
    </style>
    
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript">
    $(function(){          
    	$('#btn-upload').click(function(e){
    		e.preventDefault();
    		
    		$("input:file").click();
    		var ext = $("input:file").val().split(".").pop().toLowerCase();
    		if(ext.length > 0){
    			if($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) { 
    				alert("gif,png,jpg 파일만 업로드 할수 있습니다.");
    				return false;  
    			}                  
    		}
    		<%-- $("input:file").val().toLowerCase(); <!-- 기존방법, 파일명 남기는 부분은 컨트롤러에서--> --%>
    		var file = $("input:file").val().toLowerCase();
    		var image = file
    		$('#image').val(image);
    	}); 
    	
    	$('#possible').on('click', function(event) {
    		 event.preventDefault();
        	 event.stopPropagation();
        	 $('#newregister').submit();
		});
    	
    	$('#').on('click', function(event) {
			
		})
    });     
 	</script>
</head>
<body>
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </a><a class="brand" href="index.jsp">Bootstrap Admin Template </a>
                <div class="nav-collapse">
                    <ul class="nav pull-right">
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="icon-cog"></i> Account <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:;">Settings</a></li>
                                <li><a href="javascript:;">Help</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="icon-user"></i> EGrappler.com <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:;">Profile</a></li>
                                <li><a href="javascript:;">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-search pull-right">
                    <input type="text" class="search-query" placeholder="Search">
                    </form>
                </div>
                <!--/.nav-collapse -->
            </div>
            <!-- /container -->
        </div>
        <!-- /navbar-inner -->
    </div>
    <!-- /navbar -->
    <div class="subnavbar">
        <div class="subnavbar-inner">
            <div class="container">
                <ul class="mainnav">
                    <li><a href="index.jsp"><i class="icon-dashboard"></i><span>고객관리</span> </a>
                    </li>
                    <li><a href="reports.jsp"><i class="icon-list-alt"></i><span>상품등록</span> </a>
                    </li>
                    <li><a href="guidely.jsp"><i class="icon-bar-chart"></i><span>회계관리</span>
                    </a></li>
                    <li class="active"><a href="charts.jsp"><i class="icon-facetime-video"></i><span>잠재고객관리</span> </a>
                    </li>
                    <li><a href="shortcodes.jsp"><i class="icon-code"></i><span>스케줄관리</span> </a>
                    </li>
                    <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-long-arrow-down"></i><span>상품관리</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                        	<li><a href="icons.jsp">Icons</a></li>
                            <li><a href="faq.jsp">FAQ</a></li>
                            <li><a href="pricing.jsp">Pricing Plans</a></li>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="signup.jsp">Signup</a></li>
                            <li><a href="error.jsp">404</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /container -->
        </div>
        <!-- /subnavbar-inner -->
    </div>
    <!-- /subnavbar -->

    <div class="main">
        <div class="main-inner">
            <div class="container">
            
			
           <div class="dropdown">등록일 &nbsp;
			<select name="product" size="1" style="width: 95px">
				<option value="ironman">결제구분</option>
				<option value="deadpool" name="deadpool">결제고객</option>
				<option value="spiderman">미결제 고객</option>
				
			</select> <select name="salesvalue" size="1" style="width: 90px">
				<option value="salesvalue">고객관리 담당자선택</option>
				<option value="deadpool">신규결제</option>
				<option value="spiderman">재 결제</option>
				<option value="spiderman">카드취소</option>
				<option value="spiderman">이체/현금 환불</option>
				
			</select> <select name="manager" size="1" style="width: 85px">
				<option value="ironman">유입경로선택</option>
				<option value="deadpool">전단지</option>
				<option value="spiderman">간판</option>
				<option value="spiderman">회원추천 및 소개</option>
				<option value="spiderman">지인소개</option>
				<option value="spiderman">페이스북</option>
				<option value="spiderman">인스타그램</option>
				<option value="spiderman">블로그</option>
				<option value="spiderman">검색</option>
				<option value="spiderman">기업제휴</option>
				<option value="spiderman">재등록</option>
				
				
			</select> <select name="payment" size="1" style="width: 90px">
				<option value="ironman">정렬</option>
				<option value="deadpool">등록일순</option>
				<option value="spiderman">최근 연락일순</option>
			</select> 
			
			<input type="text" width="5px" name="membersearch" placeholder="회원명">
			<button type="submit" id="search" name="search" class="btn btn-small btn-success">검색</button>
			<button type="button" id="register" name="register" class="btn btn-small btn-success" data-toggle="modal" data-target="#myModal">신규고객등록</button>
		</div>
		
		<%-- 두번째 메뉴 --%>
		<hr>
		<div id="menu2">
		<a href="#" id="call" class="btn btn-warning">전화연락</a>
		<a href="#" id="call" class="btn btn-warning">방문상담</a>
		<a href="#" id="listdel" class="btn btn-danger">목록에서제거</a>
		</div>
		
		<br>
		
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
 <%--      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">취소</button>
      </div> --%>
      <div class="modal-body">
        	<form action="#" id="newregister" method="post" enctype="multipart/form-data"  modelAttribute="membervo" >			
			
			<div class="form-horizontal">

				<fieldset>
				
				<div class="control-group">											
					<label class="control-label" for="firstname">
				<img src="/team-project3/resources/assets/img/user.png"/></label>
				<input type='file' id='file' name='file' />
				<input type="text" name="image" id="image" readonly/>
			<button id='btn-upload' class="btn btn-info" onfocus="this.blur();">이미지찾기</button>
				</div>
				
				<div class="control-group">											
					<label class="control-label" for="firstname">*회원명</label>
					<div class="controls">
						<input type="text" name="firstname" id="firstname" placeholder="이름 입력">
						<br>
						<label class="radio inline">
                            <input type="radio" name="radiobtns" checked="checked"> 남성
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="radiobtns"> 여성
                       </label>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">*휴대전화번호</label>
					<div class="controls">
						<input type="text" name="firstname" id="firstname" class="span1 m-wrap">
						<input type="text" name="firstname" id="firstname" class="span1 m-wrap">
						<input type="text" name="firstname" id="firstname" class="span1 m-wrap">
						<label class="checkbox inline">
                           <input type="checkbox" checked="checked"> SNS 수신 동의
                        </label>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">*회원 번호</label>
					<div class="controls">
						<input type="text" name="firstname" id="firstname">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">회원 바코드 번호</label>
					<div class="controls">
						<input type="text" name="firstname" id="firstname">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">*유입 상태</label>
					<div class="controls">
						<label class="radio inline">
                            <input type="radio" name="radiobtns" checked="checked"> 방문
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="radiobtns"> 전화
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="radiobtns"> 온라인
                       </label>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<hr>
				
				<div class="control-group">											
					<label class="control-label" for="firstname">고객관리 담당자</label>
					<div class="controls">
						<select name="search_expire" data-function="search" style="width: auto;">
							<option >검색조건 선택</option>
							<option value="search_service_expire">이용권 만료일 검색</option>
							<option value="search_locker_expire">락커 만료일 검색</option>
							<option value="search_visit_expire">방문 만료일 검색</option>
						</select>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">고객 유입 경로</label>
					<div class="controls">
						<select name="search_expire" data-function="search" style="width: auto;">
							<option >검색조건 선택</option>
							<option value="search_service_expire">이용권 만료일 검색</option>
							<option value="search_locker_expire">락커 만료일 검색</option>
							<option value="search_visit_expire">방문 만료일 검색</option>
						</select>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">생년월일</label>
					<div class="controls">
						<input type="date" name="firstname" id="firstname">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">주소</label>
					<div class="controls">
						<input type="text" name="firstname" id="firstname" class="span3 m-wrap" placeholder="주소를 입력하세요">
						<input type="text" name="firstname" id="firstname" class="span3 m-wrap" placeholder="상세주소 입력">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
			
				<div class="control-group">											
					<label class="control-label" for="firstname">이메일</label>
					<div class="controls">
						<input type="text" name="firstname" id="firstname" class="span2 m-wrap">
						@
						<input type="text" name="firstname" id="firstname" class="span1 m-wrap">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">메모</label>
					<div class="controls">
						<textarea rows="3" cols="30"></textarea>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
			</fieldset>
			</div>
			
			<div class="form-actions">
				
				<button class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="submit" id="possible"class="btn btn-primary">잠재고객 등록</button>
				<button class="btn btn-default" data-dismiss="modal">등록후 상품 판매</button>
				
			</div> <!-- .actions -->
			
		</form>		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      </div>
    </div>

  </div>
</div>

 
            
      <%-- 전체 월별 리스트 --%>
		<div id="list">
			<table class="table table-bordered table-condensed table-hover"
				id="reservationList">
				<thead>
					<tr>
						<th style="width: 1%"><input type="checkbox" /></th>
						<th style="width: 7%">등록일</th>
						<th style="width: 5%">최근연락일</th>
						<th style="width: 6%">고객관리담당자</th>
						<th style="width: 8%">고객정보</th>

						<th style="width: 5%">고객정보</th>
						<th style="width: 4%">유입경로</th>
						<th style="width: 6%">등록목적</th>
						<th style="width: 8%">유입상태</th>
						<th style="width: 6%">방문예정일</th>

						<th style="width: 6%">결제상태</th>
						<!-- <th style="width: 6%">예상 환불금액</th> -->
						<th style="width: 8%">미결제사유</th>
						<!-- 2.0v 2017-08-07 수정 -->
						<th style="width: 5%">연락상태</th>

						<!-- <th style="width: 4%">기간</th> -->
						<!-- <th style="width: 4%">횟수</th> -->


						<!-- 통계용 -->
						<!-- 결제수단 -->
						<!-- <th style="display:none" data-statistics="payCardCnt">신용카드 결제 건수</th>
						<th style="display:none" data-statistics="payCardSales">신용카드 매출</th>
						<th style="display:none" data-statistics="payBankCnt">이체 결제 건수</th>
						<th style="display:none" data-statistics="payBankSales">이체 결제 매출</th>
						<th style="display:none" data-statistics="payCashCnt">현금 결제 건수</th>
						<th style="display:none" data-statistics="payCashSales">현금 결제 매출</th>
						
						상품분류
						<th style="display:none" data-statistics="newRegistPayCnt">신규결제 건수</th>
						<th style="display:none" data-statistics="newRegistPaySales">신규결제 매출</th>
						<th style="display:none" data-statistics="reRegistPayCnt">재결제 건수</th>
						<th style="display:none" data-statistics="reRegistPaySales">재결제 매출</th>
						<th style="display:none" data-statistics="productRefundCardCnt">카드취소 건수</th>
						<th style="display:none" data-statistics="productRefundCardSales">카드취소 환불</th>
						<th style="display:none" data-statistics="productRefundCashCnt">현금 환불 건수</th>
						<th style="display:none" data-statistics="productRefundCashSales">현금 환불</th>
						<th style="display:none" data-statistics="productRefundBankCnt">이체 환불 건수</th>
						<th style="display:none" data-statistics="productRefundBankSales">이체 환불</th>
						
						
						<th style="display:none" data-statistics="receivablesCnt">미수잔액 건수</th>
						<th style="display:none" data-statistics="receivablesSales">미수잔액 금액</th> -->
					</tr>
				</thead>

				<c:choose>
					<c:when test="${ empty data }">
						<tbody>
							<td colspan="15" style="text-align:center">목록이 없습니다</td>
						</tbody>
					</c:when>
					<c:otherwise>
						<tbody>
							<%-- <!-- if not empty연락상태 -->
							if 전화{
							전화: ${ date } ${담당자}
							}
							else if( ? )
							?: ${ date } ${ 담당자 }
							--%>
						</tbody>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
               
            </div>
            <!-- /container -->
        </div>
        <!-- /main-inner -->
    </div>
    <!-- /main -->
  
    <div class="footer">
        <div class="footer-inner">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        &copy; 2018 <a href="#">헬스장 다니자</a>.
                    </div>
                    <!-- /span12 -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /footer-inner -->
    </div>
    <!-- /footer -->
    <!-- Le javascript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>
    <script src="/team-project3/resources/assets/js/excanvas.min.js"></script>
    <script src="/team-project3/resources/assets/js/chart.min.js" type="text/javascript"></script>
    <script src="/team-project3/resources/assets/js/bootstrap.js"></script>
    <script src="/team-project3/resources/assets/js/base.js"></script>
    <script>
        var doughnutData = [
				{
				    value: 30,
				    color: "#F7464A"
				},
				{
				    value: 50,
				    color: "#46BFBD"
				},
				{
				    value: 100,
				    color: "#FDB45C"
				},
				{
				    value: 40,
				    color: "#949FB1"
				},
				{
				    value: 120,
				    color: "#4D5360"
				}

			];

        var myDoughnut = new Chart(document.getElementById("donut-chart").getContext("2d")).Doughnut(doughnutData);


        var lineChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    pointColor: "rgba(220,220,220,1)",
				    pointStrokeColor: "#fff",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    pointColor: "rgba(151,187,205,1)",
				    pointStrokeColor: "#fff",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }

        var myLine = new Chart(document.getElementById("area-chart").getContext("2d")).Line(lineChartData);


        var barChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }

var myLine = new Chart(document.getElementById("bar-chart").getContext("2d")).Bar(barChartData);

var pieData = [
				{
				    value: 30,
				    color: "#F38630"
				},
				{
				    value: 50,
				    color: "#E0E4CC"
				},
				{
				    value: 100,
				    color: "#69D2E7"
				}

			];

				var myPie = new Chart(document.getElementById("pie-chart").getContext("2d")).Pie(pieData);

				var chartData = [
			{
			    value: Math.random(),
			    color: "#D97041"
			},
			{
			    value: Math.random(),
			    color: "#C7604C"
			},
			{
			    value: Math.random(),
			    color: "#21323D"
			},
			{
			    value: Math.random(),
			    color: "#9D9B7F"
			},
			{
			    value: Math.random(),
			    color: "#7D4F6D"
			},
			{
			    value: Math.random(),
			    color: "#584A5E"
			}
		];
				var myPolarArea = new Chart(document.getElementById("line-chart").getContext("2d")).PolarArea(chartData);
	</script>
</body>
</html>
