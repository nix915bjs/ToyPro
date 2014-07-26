<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>서울특별시 종합 장난감 도서관</title>
<link href="../css/template.css" rel="stylesheet" type="text/css" />
<link href="../css/sitemap.css" rel="stylesheet" type="text/css" />
<link href= "../css/header.css" rel="stylesheet" type="text/css" />
<link href="../css/footer.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- begin #container -->
<div id="container">

    <!-- header -->
	<jsp:include page="../layout/header.jsp" />

    <!-- begin #contentContainer -->
    <div id="contentContainer">
    	
    	<!-- aside -->
    	<jsp:include page="../layout/aside.jsp" />
    	
    	<div id="content">
    		<div id="content_title">
    			content_title <br><br>
    			
    			준우형 content 타이틀이랑 구분하는 라인 만들기~!~!<br>
    			
    			template.jsp
    			
    		</div>
    		
    		<!-- begin #centent_content  -->
    		<div id="content_content">
					
					<hr class="sitemap_hr"/>
					
					<div id="sitemap">
					
						<table>
							<tr>
								<td class="sitemap_menutitle">소 개</td>
								<td class="sitemap_menu">운영안내</td>
								<td class="sitemap_menu">오시는 길</td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
							</tr>
							<tr>
								<td class="sitemap_menutitle">이용안내</td>
								<td class="sitemap_menu">이용안내</td>
								<td class="sitemap_menu">이용수칙</td>
								<td class="sitemap_menu">놀이방 안내</td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
							</tr>
							<tr>
								<td class="sitemap_menutitle">장난감 검색</td>
								<td class="sitemap_menu">장난감 검색</td>
								<td class="sitemap_menu">NEW 장난감 목록</td>
								<td class="sitemap_menu">BEST 장난감 목록</td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
							</tr>
							<tr>
								<td class="sitemap_menutitle">키즈뱅크</td>
								<td class="sitemap_menu">키즈뱅크란</td>
								<td class="sitemap_menu">장난감 기부하기</td>
								<td class="sitemap_menu">장난감 교환하기</td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
							</tr>
							<tr>
								<td class="sitemap_menutitle">커뮤니티</td>
								<td class="sitemap_menu">공지사항</td>
								<td class="sitemap_menu">사진갤러리</td>
								<td class="sitemap_menu">자유게시판</td>
								<td class="sitemap_menu">FAQ</td>
								<td class="sitemap_menu">희망 장난감 신청</td>
							</tr>
						</table>
						
					</div>
					
    		</div>
    		<!-- end #centent_content  -->
    	</div>
    </div>
	<!-- end #contentContainer -->
	
	<br class="clearfloat" />

    <!-- footer -->
	<jsp:include page="../layout/footer.jsp" />
    
</div>
<!-- end #container -->
</body>
</html>
