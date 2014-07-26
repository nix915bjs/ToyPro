<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>����Ư���� ���� �峭�� ������</title>
<link href="../css/template.css" rel="stylesheet" type="text/css" />
<link href="../css/search.css" rel="stylesheet" type="text/css" />
<link href="../css/header.css" rel="stylesheet" type="text/css" />
<link href="../css/footer.css" rel="stylesheet" type="text/css" />
<link href="../css/aside.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
//�˻� / page �ΰ��� ��� ��� Form ������ ���� JavaScrpt �̿�  
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
					<p class="location font_loca1">
						<img src="../images/iconHome.gif" width="10" height="8" alt=""
							style="vertical-align: middle; margin-top: -2px;" /> Ȩ <img
							src="../images/iconArrow.gif" width="3" height="5" alt=""
							style="vertical-align: middle; margin-top: -2px;" /> �Ұ� <img
							src="../images/iconArrow.gif" width="3" height="5" alt=""
							style="vertical-align: middle; margin-top: -2px;" /> <strong
							class="font_loca2">�峭�� �˻�</strong>
					</p>
					 <span>�峭���˻�</span><br/>

					<img class="bar_img" src="../images/child_011.png" alt="" />
					<p class="line2"></p>

				</div>

				<!-- begin #centent_content  -->
				<div id="content_content">
    			<center>
    			<form method="post" id="searchForm" name="searchForm" action="/listToyProductList.do" >
    			<div id="search_box">
					�� ��&nbsp;&nbsp;
					<select id="subject" name="searchConditionCate"> 
						<option value="">�з��˻�</option>
						<c:choose>
							<c:when test="${search.searchConditionCate == '000' }"><option value="000" selected="selected">�ڵ�����</option></c:when>
							<c:otherwise><option value="000">�ڵ�����</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '100' }"><option value="100" selected="selected">���ҳ���</option></c:when>
							<c:otherwise><option value="100">���ҳ���</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '200' }"><option value="200" selected="selected">������</option></c:when>
							<c:otherwise><option value="200">������</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '300' }"><option value="300" selected="selected">��ü����</option></c:when>
							<c:otherwise><option value="300">��ü����</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '400' }"><option value="400" selected="selected">����(����)��</option></c:when>
							<c:otherwise><option value="400">����(����)��</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when  test="${search.searchConditionCate == '500' }"><option value="500" selected="selected">��</option></c:when>
							<c:otherwise><option value="500">��</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '600' }"><option value="600" selected="selected">����</option></c:when>
							<c:otherwise><option value="600">����</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '700' }"><option value="700" selected="selected">����</option></c:when>
							<c:otherwise><option value="700">����</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionCate == '800' }"><option value="800" selected="selected">��Ÿ</option></c:when>
							<c:otherwise><option value="800">��Ÿ</option></c:otherwise>
						</c:choose>
					</select> 
					&nbsp;&nbsp;&nbsp; 
					�� ��&nbsp;&nbsp;
					<select id="age" name="searchConditionAge">
						<option value="">���ɰ˻�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<c:choose>
							<c:when test="${search.searchConditionAge == '0��~1��' }"><option value="0��~1��" selected="selected">0��~1��</option></c:when>
							<c:otherwise><option value="0��~1��">0��~1��</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '1��~2��' }"><option value="1��~2��" selected="selected">1��~2��</option></c:when>
							<c:otherwise><option value="1��~2��">1��~2��</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '2��~3��' }"><option value="2��~3��" selected="selected">2��~3��</option></c:when>
							<c:otherwise><option value="2��~3��">2��~3��</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '3��~4��' }"><option value="3��~4��" selected="selected">3��~4��</option></c:when>
							<c:otherwise><option value="3��~4��">3��~4��</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '4��~5��' }"><option value="4��~5��" selected="selected">4��~5��</option></c:when>
							<c:otherwise><option value="4��~5��">4��~5��</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '5���̻�' }"><option value="5���̻�" selected="selected">5���̻�</option></c:when>
							<c:otherwise><option value="5���̻�">5���̻�</option></c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${search.searchConditionAge == '��ü����' }"><option value="��ü����" selected="selected">��ü����</option></c:when>
							<c:otherwise><option value="��ü����">��ü����</option></c:otherwise>
						</c:choose>
					</select> 
					&nbsp;&nbsp;&nbsp;
					�峭����&nbsp;
					<input type="text" size="20" name="searchKeyword" />&nbsp;
					<input type="submit" value=" �� �� "  class="search_btn"/>
				</div>
				
				
				<div id="search_map">
					<img src="../images/searchmap.gif" alt="����� ���� �峭�� ������" usemap="#map"/>
					<map name="map" id="map">
						<!-- <area href="#" alt="�����峭������" title="�����峭������" coords="194,320,207,330" shape="rect" target="_top" /> -->
						<area href="#" alt="������������(������)" title="������������(������)" coords="421,318,431,328" shape="rect" />
						<area href="#" alt="������������(������)" title="������������(������)" coords="455,318,465,328" shape="rect" />
						<area href="#" alt="������������(��ġ��)" title="������������(��ġ��)" coords="431,336,441,346" shape="rect" />
						<area href="#" alt="������������(������)" title="������������(������)" coords="463,336,473,346" shape="rect" />
						<area href="#" alt="����������(������)" title="����������(������)" coords="553,250,563,260" shape="rect" />
						<area href="#" alt="Ű��Ű����հ���" title="Ű��Ű����հ���" coords="94,229,104,239" shape="rect" />
						<area href="#" alt="�޳�����" title="�޳�����" coords="274,367,284,377" shape="rect" />
						<area href="#" alt="��̾���" title="��̾���" coords="468,257,478,267" shape="rect" />
						<area href="#" alt="�峭������(������)" title="�峭������(������)" coords="194,319,204,329" shape="rect" />
						<area href="#" alt="�峭������(������)" title="�峭������(������)" coords="160,305,170,315" shape="rect" />
						
						<area href="#" alt="�峭������(������)" title="�峭������(������)" coords="209,358,219,368" shape="rect" />
						<area href="#" alt="�峭������(������)" title="�峭������(������)" coords="213,376,223,386" shape="rect" />
						<area href="#" alt="���̾ƶ� �����" title="���̾ƶ� �����" coords="465,109,475,119" shape="rect" />
						<area href="#" alt="���̾ƶ� ������" title="���̾ƶ� ������" coords="465,127,475,137" shape="rect" />
						<area href="#" alt="���е��峭������" title="���е��峭������" coords="389,91,399,101" shape="rect" />
						<area href="#" alt="â���峭��������" title="â���峭��������" coords="407,91,417,101" shape="rect" />
						<area href="#" alt="�峭����(��ʸ���)" title="�峭����(��ʸ���)" coords="437,204,447,214" shape="rect" />
						<area href="#" alt="�峭����(������)" title="�峭����(������)" coords="453,203,463,213" shape="rect" />
						<area href="#" alt="�ξ��峭���뿩��" title="�ξ��峭���뿩��" coords="298,306,308,316" shape="rect" />
						<area href="#" alt="��ȭ�峭���뿩��" title="��ȭ�峭���뿩��" coords="231,234,241,244" shape="rect" />
						
						<area href="#" alt="�����峭���뿩��" title="�����峭���뿩��" coords="254,239,264,249" shape="rect" />
						<area href="#" alt="���հ��뿩" title="���հ��뿩" coords="263,210,273,220" shape="rect" />
						<area href="#" alt="�����峭��������" title="�����峭��������" coords="381,337,391,347" shape="rect" />
						<area href="#" alt="�������峭������" title="�������峭������" coords="412,245,422,255" shape="rect" />
						<area href="#" alt="�峭��������" title="�峭��������" coords="375,176,385,186" shape="rect" />
						<area href="#" alt="���̰��뿩��" title="���̰��뿩��" coords="504,305,514,315" shape="rect" />
						<area href="#" alt="�ش����뿩��" title="�ش����뿩��" coords="171,279,181,289" shape="rect" />
						<area href="#" alt="����峭������" title="����峭������" coords="243,146,253,156" shape="rect" />
						<area href="#" alt="���ӳ�����" title="���ӳ�����" coords="328,200,338,210" shape="rect" />
						<area href="#" alt="�������峭��������" title="�������峭��������" coords="363,220,377,234" shape="rect" />

					</map>
				</div>
				
				<!-- search list -->
				<c:choose>
				<c:when test="${!empty list }">
				<div id="search_list">
					<table>
						<tr>
							<p id="search_list_p">�� ${page.totalCount} �Ǽ�</p>
							<c:set var="cnt" value="1"/>
							<c:forEach var="toy" items="${list }">
								<td>
									<img src="../images/toy/${toy.toyImg }" width="155"/><br/>
									<a href="getToy.do?toyIdid=${toy.toyCode }">${toy.toyName }</a><br/>
									<c:choose>
										<c:when test="${toy.rentalState=='���Ⱑ��      ' }">���Ⱑ��</c:when>
										<c:when test="${toy.rentalState=='����          ' }">������ </c:when>
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
					<jsp:include page="pageNavigator.jsp"/>	
				</div>
				</c:when>
				<c:otherwise>
					�˻������ �����ϴ�.
				</c:otherwise>
				</c:choose>
				</form>
				</center>
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
