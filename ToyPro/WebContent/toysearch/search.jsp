<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <link href="../css/template.css" rel="stylesheet" type="text/css" />
<link href="../css/search.css" rel="stylesheet" type="text/css" />
<link href="../css/header.css" rel="stylesheet" type="text/css" />
<link href="../css/footer.css" rel="stylesheet" type="text/css" />
<link href="../css/aside.css" rel="stylesheet" type="text/css" /> -->

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
					<input id="keyword" type="text" size="20" name="searchKeyword" />&nbsp;
					<input type="button" id="Btn" value="검색" class="search_btn" data="/app/showCount"></input>
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
					<span id="b1"></span>
					<span id="b2"></span>
					<span id="b3"></span>
					<span id="b4"></span>
					<span id="b5"></span>
					<span id="b6"></span>
					<span id="b7"></span>
					<span id="b8"></span>
					<span id="b9"></span>
					<span id="b10"></span>
					<span id="b11"></span>
					<span id="b12"></span>
					<span id="b13"></span>
					<span id="b14"></span>
					<span id="b15"></span>
					<span id="b16"></span>
					<span id="b17"></span>
					<span id="b18"></span>
					<span id="b19"></span>
					<span id="b20"></span>
					<span id="b21"></span>
					<span id="b22"></span>
					<span id="b23"></span>
					<span id="b24"></span>
					<span id="b25"></span>
					<span id="b26"></span>
					<span id="b27"></span>
					<span id="b28"></span>
					<span id="b29"></span>
					<span id="b30"></span>
				</div>
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
				</c:choose>
				</center>
    		</div>
				<!-- end #centent_content  -->
			</div>
		</div>
		<!-- end #contentContainer -->
		
<script type="text/javascript">
initEventListener();

initXMLHttpRequest();
</script>
