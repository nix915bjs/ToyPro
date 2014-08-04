<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>서울특별시 종합 장난감 도서관</title>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	
	function fncNoticeList(currentPage2) {
		var currentPage = document.getElementById("currentPage");
		if(currentPage!=null){
			currentPage.value = currentPage2;
			//alert("currentPage : "+currentPage.value);
		}
		
		var noticeForm = document.getElementById("noticeForm");
		noticeForm.submit();
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
					 <span>공지사항</span><br/>

					<img class="bar_img" src="../images/child_011.png" alt="" />
					<p class="line2"></p>

				</div>

				<!-- begin #centent_content  -->
				<div id="content_content">
    			<center>
    			<form method="post" id="noticeForm" name="noticeForm" action="/app/notice/noticeList" >
    			
    			<!--search condition  -->
    			<table width="100%" border="1" cellpadding="0"	cellspacing="0">
					<tr>
						<td align="center">
							<select name="searchCondition"  id="search_con">
								<option value="0">제목</option>
								<option value="1">내용</option>
							</select>
							<input type="text" name="searchKeyword" id="search_key" />
							<input type="image" src="../images/notice/btn_search.gif" id="search_btn" onclick="fncNoticeList();"/>
						</td>
					</tr>
				</table>
				<p/>
				<!-- search content -->	
				<!--insert into notice values(
						(select NVL(MAX(notice_code)+1,1) from notice), -- 값이없을때 1을 준다
						'게시판 제목',SYSDATE,0,'진솔이','JSP 게시판 제작CONTEN','')  -->			
				<div id="notice">
				<table width="730" cellpadding="5px" >
					<tr>
						<th width="10%">번호</th>
						<th width="40%">제목</th>
						<th width="10%">첨부</th>
						<th width="15%">작성자</th>
						<th width="15%">등록일</th>
						<th width="10%">조회수</th>
					</tr>
					<c:forEach var="notice" items="${list }">
						<tr class="line">
							<td width="10%">${notice.noticeCode }</td>
							<td width="40%" align="left">&nbsp;&nbsp;<a href="../main/main.jsp?no=15&contNo=${notice.noticeCode }">${notice.subject }</a></td>
							<td width="10%">${notice.attachment }</td>
							<td width="15%">${notice.writer }</td>
							<td width="15%"><fmt:formatDate value="${notice.regDate }" pattern="yyyy-MM-dd"/></td>
							<td width="10%">${notice.noticeCount }</td>
						</tr>
					</c:forEach>
				</table>
				</div>
				
				<div id="search_page">
					<input type="hidden" id="currentPage" name="currentPage" value=""/>
					<jsp:include page="../common/pageNavigator.jsp"/>	
				</div>
				
				</form>
				</center>
    		</div>
				<!-- end #centent_content  -->
			</div>
		</div>
		<!-- end #contentContainer -->
