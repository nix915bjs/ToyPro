<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/ToyProj/app/toyProduct/parsingDataUpdate" method="post">
	<input type="submit" value="관리자가 파싱해서 DB에 저장"><br><br>
</form>
	<a href="/ToyProj/app/toyProduct/guroRentalShopParsing">관리자가 파싱해서 DB에 저장(대여점)</a>
<!-- <a href="/ToyProj/app/toyProduct/parsingDataUpdate">aa</a> -->

<img src="../images/searchmap.gif" name="sample" usemap="#map">
	<map name="map">
		<area shape="rect" title="지점 선택해보기.."  coords="0, 0, 50, 50" href="/toysearch/search.jsp">
	</map>

</body>
</html>