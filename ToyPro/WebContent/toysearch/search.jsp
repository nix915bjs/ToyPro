<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <link href="../css/template.css" rel="stylesheet" type="text/css" />
<link href="../css/search.css" rel="stylesheet" type="text/css" />
<link href="../css/header.css" rel="stylesheet" type="text/css" />
<link href="../css/footer.css" rel="stylesheet" type="text/css" />
<link href="../css/aside.css" rel="stylesheet" type="text/css" /> -->
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
//검색 / page 두가지 경우 모두 Form 전송을 위해 JavaScrpt 이용  
	/* function fncToyList(currentPage) {
		document.getElementById("currentPage").value = currentPage;
	   	document.searchForm.submit();		
	} */
/* 	function fncToyList(currentPage2) {
		var currentPage = document.getElementById("currentPage")
		currentPage.value = currentPage2;
		alert(currentPage.value);
		var searchForm = document.getElementById("searchForm");
		searchForm.submit();
	} */
	var xmlHttp;

	$(document).ready(function()
	{
		// 버튼이 눌렸을 때의 이벤트를 펑션으로 구현
		initEventListener();
		
		// Ajax 구현을 위한 환경설정 중 아래와 같이 두 단계의 내용을 실행
		// 1. XMLHttpRequest 객체 생성
		// 2. 요청에 대한 응답 처리 이벤트 리스너 등록
		initXMLHttpRequest();
	});

	// 외부 페이지의 파일명을 알아낸다.
	function initEventListener()
	{
		// 버튼을 클릭 했을 때 이벤트 발생
		$("#testBtn").click(function(e)
		{
			alert("읽어들일 페이지 " + $(this).attr("data"));
			loadPage($(this).attr("data"));
			alert("loadPage 통과했나?");
		});
	}

	// XMLHttpRequest를 미리 생성해 둡니다.
	function initXMLHttpRequest()
	{
		// 1. 브라우저에 따른 XMLHttpReqeust 생성
		xmlHttp = createXMLHTTPObject();
		
		// 2. 요청에 대한 응답 처리 이벤트 리스너 등록
		xmlHttp.onreadystatechange = on_ReadyStateChange;
	}

	// 1. 브라우저에 따른 XMLHttpRequest 생성
	function createXMLHTTPObject()
	{
		var xhr = null;
		if(window.XMLHttpRequest)
		{
			// IE7 버전 이상, 크롬, 사파리, 파이어폭스, 오페라 등 거의 대부분의
			// 브라우저에서는 XMLHttpReqeust 객체를 제공합니다.
			xhr = new XMLHttpRequest();
			alert("객체 생성 완료");
		}
		else
		{
			// IE5, IE6 버전에서는 다음과 같은 방법으로 XMLHttpRequest 객체를 생성합니다.
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
		}
		return xhr;
	}

	// 페이지를 로딩하는 함수입니다.
	// 페이지를 읽어 들일 때 책임을 맡는다.
	function loadPage(strPage)
	{
		// 3. 서버로 보낼 데이터 생성
		// 4. GET 방식으로 데이터 보내기, 응답은 비동기화 클라이언트와 서버 간의 연결 요청 준비
		alert("loadPage 탔나?");
		alert(strPage);
		xmlHttp.open("GET", strPage, true);
		//xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		
		/* alert("open 다음"); */
		// 5. 실제 데이터 전송
		xmlHttp.send(null);
		/* alert("loadPage() 끝!!"); */
	}

	// 6. 응답 처리
	function on_ReadyStateChange()
	{
		// 4 = 데이터 전송 완료 (0 = 초기화 전, 1 = 로딩 중, 2 = 로딩 됨, 3 = 대화 상태)
		alert(xmlHttp.readyState);
		if(xmlHttp.readyState == 4)
		{
			// 200은 에러 없음 (404 = 페이지가 존재하지 않음)
			alert(xmlHttp.status);
			if(xmlHttp.status == 200)
			{
				// 서버에서 받은 값
				alert("서버에서 받은 원본 데이터 : " + xmlHttp.responseText);
				
				// 7. 데이터 처리
				addPage(xmlHttp.responseText );
			}
			else
			{
				alert("처리 중 에러가 발생했습니다.");			
			}
		}
	}

	// 7. json 형식의 데이터 처리
	function addPage(strInfo)
	{
		alert("strInfo : "+strInfo);
		alert("addPage() 탔나?");
		var $newPage = $('strInfo');
		alert("newPage 다음");
		var strID = $newPage.attr("id");
		alert("strID 다음");
		if($("#"+strID).size() == 0)
		{
			alert("if 문 탔다");
			$("#page_container").append(strInfo);	
		}
		else
		{
			alert("이미 "+strID+"페이지가 존재합니다.");
		}
	}
	
	function display()
	{
		var a = document.getElementById("countId");
		a.style.display = "block";
	}
	
	function fncToyList(currentPage2) {
		var currentPage = document.getElementById("currentPage");
		if(currentPage!=null){
			currentPage.value = currentPage2;
			//alert("currentPage : "+currentPage.value);
		}
		
/* 		var searchCon = document.searchForm.searchConditionCate.value;
		alert(searchCon);
		
		var searchAge = document.searchForm.searchConditionAge.value;
		alert(searchAge); */
		
		var searchForm = document.getElementById("searchForm");
		searchForm.submit();
	}
</script>

		<!-- begin #contentContainer -->
		<div id="contentContainer">

			<!-- aside -->
			<jsp:include page="../layout/aside.jsp" />

			<div id="content">
				<div id="content_title">				
					<p class="location font_loca1">
						<img src="../images/iconHome.gif" width="10" height="8" alt=""
							style="vertical-align: middle; margin-top: -2px;" /> 홈 <img
							src="../images/iconArrow.gif" width="3" height="5" alt=""
							style="vertical-align: middle; margin-top: -2px;" /> 소개 <img
							src="../images/iconArrow.gif" width="3" height="5" alt=""
							style="vertical-align: middle; margin-top: -2px;" /> <strong
							class="font_loca2">장난감 검색</strong>
					</p>
					 <span>장난감검색</span><br/>

					<img class="bar_img" src="../images/child_011.png" alt="" />
					<p class="line2"></p>

				</div>

				<!-- begin #centent_content  -->
				<div id="content_content">
    			<center>
    			<form method="post" id="searchForm" name="searchForm" action="/listToyProductList.do" >
    			<div id="search_box">
					분 류&nbsp;&nbsp;
					<select id="subject" name="searchConditionCate"> 
						<option value="">분류검색</option>
						<c:choose>
							<c:when test="${search.searchConditionCate == '000' }"><option value="000" selected="selected">자동차류</option></c:when>
							<c:otherwise><option value="000">자동차류</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '100' }"><option value="100" selected="selected">역할놀이</option></c:when>
							<c:otherwise><option value="100">역할놀이</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '200' }"><option value="200" selected="selected">조립류</option></c:when>
							<c:otherwise><option value="200">조립류</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '300' }"><option value="300" selected="selected">신체놀이</option></c:when>
							<c:otherwise><option value="300">신체놀이</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '400' }"><option value="400" selected="selected">퍼즐(종이)류</option></c:when>
							<c:otherwise><option value="400">퍼즐(종이)류</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when  test="${search.searchConditionCate == '500' }"><option value="500" selected="selected">블럭</option></c:when>
							<c:otherwise><option value="500">블럭</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '600' }"><option value="600" selected="selected">음률</option></c:when>
							<c:otherwise><option value="600">음률</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '700' }"><option value="700" selected="selected">비디오</option></c:when>
							<c:otherwise><option value="700">비디오</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '800' }"><option value="800" selected="selected">기타</option></c:when>
							<c:otherwise><option value="800">기타</option></c:otherwise>
						</c:choose>
					</select> 
					&nbsp;&nbsp;&nbsp; 
					연 령&nbsp;&nbsp;
					<select id="age" name="searchConditionAge">
						<option value="">연령검색&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<c:choose>
							<c:when test="${search.searchConditionAge == '0세~1세' }"><option value="0세~1세" selected="selected">0세~1세</option></c:when>
							<c:otherwise><option value="0세~1세">0세~1세</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '1세~2세' }"><option value="1세~2세" selected="selected">1세~2세</option></c:when>
							<c:otherwise><option value="1세~2세">1세~2세</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '2세~3세' }"><option value="2세~3세" selected="selected">2세~3세</option></c:when>
							<c:otherwise><option value="2세~3세">2세~3세</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '3세~4세' }"><option value="3세~4세" selected="selected">3세~4세</option></c:when>
							<c:otherwise><option value="3세~4세">3세~4세</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '4세~5세' }"><option value="4세~5세" selected="selected">4세~5세</option></c:when>
							<c:otherwise><option value="4세~5세">4세~5세</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '5세이상' }"><option value="5세이상" selected="selected">5세이상</option></c:when>
							<c:otherwise><option value="5세이상">5세이상</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '전체연령' }"><option value="전체연령" selected="selected">전체연령</option></c:when>
							<c:otherwise><option value="전체연령">전체연령</option></c:otherwise>
						</c:choose>
					</select> 
					&nbsp;&nbsp;&nbsp;
					장난감명&nbsp;
					<input type="text" size="20" name="searchKeyword" />&nbsp;
					<input type="submit" value=" 검 색 "  class="search_btn"/>
				</div>
				
				
				<div id="search_map">
					<img src="../images/searchmap.gif" alt="서울시 소재 장난감 도서관" usemap="#map"/>
					<div class="count" id="countId">5</div>
					<map name="map" id="map">
						<!-- <area href="#" alt="구로장난감나라" title="구로장난감나라" coords="194,320,207,330" shape="rect" target="_top" /> -->
						<area href="#" alt="육아지원센터(개포점)" title="육아지원센터(개포점)" coords="421,318,431,328" shape="rect" />
						<area href="#" alt="육아지원센터(논현점)" title="육아지원센터(논현점)" coords="455,318,465,328" shape="rect" />
						<area href="#" alt="육아지원센터(대치점)" title="육아지원센터(대치점)" coords="431,336,441,346" shape="rect" />
						<area href="#" alt="육아지원센터(도곡점)" title="육아지원센터(도곡점)" coords="463,336,473,346" shape="rect" />
						<area href="#" alt="동동레코텍(성내점)" title="동동레코텍(성내점)" coords="553,250,563,260" shape="rect" />
						<area href="#" alt="키득키득놀잇감터" title="키득키득놀잇감터" coords="94,229,104,239" shape="rect" />
						<area href="#" alt="꿈놀이터" title="꿈놀이터" coords="274,367,284,377" shape="rect" />
						<area href="#" alt="재미씨앗" title="재미씨앗" coords="468,257,478,267" shape="rect" />
						<area href="#" alt="장난감나라(구로점)" title="장난감나라(구로점)" coords="194,319,204,329" shape="rect" />
						<area href="#" alt="장난감나라(개봉점)" title="장난감나라(개봉점)" coords="160,305,170,315" shape="rect" />
						
						<area href="#" alt="장난감나라(시흥점)" title="장난감나라(시흥점)" coords="209,358,219,368" shape="rect" />
						<area href="#" alt="장난감나라(독산점)" title="장난감나라(독산점)" coords="213,376,223,386" shape="rect" />
						<area href="#" alt="놀이아띠 상계점" title="놀이아띠 상계점" coords="465,109,475,119" shape="rect" />
						<area href="#" alt="놀이아띠 월계점" title="놀이아띠 월계점" coords="465,127,475,137" shape="rect" />
						<area href="#" alt="방학동장난감나라" title="방학동장난감나라" coords="389,91,399,101" shape="rect" />
						<area href="#" alt="창동장난감나눔이" title="창동장난감나눔이" coords="407,91,417,101" shape="rect" />
						<area href="#" alt="장난감방(답십리점)" title="장난감방(답십리점)" coords="437,204,447,214" shape="rect" />
						<area href="#" alt="장난감방(제기점)" title="장난감방(제기점)" coords="453,203,463,213" shape="rect" />
						<area href="#" alt="로야장난감대여점" title="로야장난감대여점" coords="298,306,308,316" shape="rect" />
						<area href="#" alt="도화장난감대여점" title="도화장난감대여점" coords="231,234,241,244" shape="rect" />
						
						<area href="#" alt="망원장난감대여점" title="망원장난감대여점" coords="254,239,264,249" shape="rect" />
						<area href="#" alt="놀잇감대여" title="놀잇감대여" coords="263,210,273,220" shape="rect" />
						<area href="#" alt="서초장난감도서관" title="서초장난감도서관" coords="381,337,391,347" shape="rect" />
						<area href="#" alt="무지개장난감세상" title="무지개장난감세상" coords="412,245,422,255" shape="rect" />
						<area href="#" alt="장난감이좋아" title="장난감이좋아" coords="375,176,385,186" shape="rect" />
						<area href="#" alt="놀이감대여실" title="놀이감대여실" coords="504,305,514,315" shape="rect" />
						<area href="#" alt="해누리대여터" title="해누리대여터" coords="171,279,181,289" shape="rect" />
						<area href="#" alt="라온장난감나라" title="라온장난감나라" coords="243,146,253,156" shape="rect" />
						<area href="#" alt="숲속놀이터" title="숲속놀이터" coords="328,200,338,210" shape="rect" />
						<area href="#" alt="서울녹색장난감도서관" title="서울녹색장난감도서관" coords="363,220,377,234" shape="rect" />

					</map>
				</div>
				<input type="button" id="testBtn" value="버튼이다" data="/app/toyProj/test/100/1세~2세"></input>
				<!-- search list -->
				<c:choose>
				<c:when test="${!empty list }">
				<div id="search_list">
					<table>
						<tr>
							<p id="search_list_p">총 ${page.totalCount} 건수</p>
							<c:set var="cnt" value="1"/>
							<c:forEach var="toy" items="${list }">
								<td>
									<img src="../images/toy/${toy.toyImg }" width="155"/><br/>
									<a href="getToy.do?toyIdid=${toy.toyCode }">${toy.toyName }</a><br/>
									<c:choose>
										<c:when test="${toy.rentalState=='대출가능      ' }">대출가능</c:when>
										<c:when test="${toy.rentalState=='제적          ' }">대출중 </c:when>
									</c:choose>	
								</td>
								<c:if test="${cnt mod 4 == 0 }">
									</tr><tr>
								</c:if>
								<c:set var="cnt" value="${cnt + 1 }"/>
							</c:forEach>
						</tr>
					</table>
				</div>
				
				
				<div id="search_page">
					<input type="hidden" id="currentPage" name="currentPage" value=""/>
					<jsp:include page="../common/pageNavigator.jsp"/>	
				</div>
				</c:when>
				<c:otherwise>
					검색결과가 없습니다.
				</c:otherwise>
				</c:choose>
				</form>
				</center>
    		</div>
				<!-- end #centent_content  -->
			</div>
		</div>
		<!-- end #contentContainer -->
