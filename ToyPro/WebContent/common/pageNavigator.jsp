<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<c:if test="${ page.currentPage <= page.pageUnit }">
			<%--이전페이지 이동 --%>
			<img src="../images/btn_prev.gif" border=0 >
	</c:if>
	<c:if test="${ page.currentPage > page.pageUnit }">
			<a href="javascript:fncToyList('${ page.currentPage-1}')"><img src="../images/btn_prev.gif" border=0 ></a>
	</c:if>
	
	<c:forEach var="i"  begin="${page.beginUnitPage}" end="${page.endUnitPage}" step="1">
		<a href="javascript:fncToyList('${ i }');">${ i }</a>
	</c:forEach>
	
	<c:if test="${ page.endUnitPage >= page.maxPage }">
			<%--다음페이지 이동--%>
			<img src="../images/btn_next.gif" border=0 >
	</c:if>
	<c:if test="${ page.endUnitPage < page.maxPage }">
			<a href="javascript:fncToyList('${page.endUnitPage+1}')"><img src="../images/btn_next.gif" border=0 ></a>
	</c:if>