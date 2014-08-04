<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>서울특별시 종합 장난감 도서관</title>
<link href="../css/main.css" rel="stylesheet" type="text/css" />
<link href="../css/header.css" rel="stylesheet" type="text/css" />
<link href="../css/footer.css" rel="stylesheet" type="text/css" />

<link href="../css/template.css" rel="stylesheet" type="text/css" />
<link href="../css/search.css" rel="stylesheet" type="text/css" />

<link href="../css/aside.css" rel="stylesheet" type="text/css" />
<link href="../css/notice.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/changeContent.js"></script>

</head>
<body>
<!-- begin #container -->
<div id="container">
	
	<!-- header -->
	<jsp:include page="../layout/header.jsp" />
    
    <div id="includeContent">

			<jsp:include page="mainContent.jsp" />

	</div>
	
    <br class="clearfloat" />
    <br>
    
    <!-- footer -->
	<jsp:include page="../layout/footer.jsp" />
	
</div>
<!-- end #container -->
</body>
</html>
