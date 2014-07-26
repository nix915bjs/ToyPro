<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>����Ư���� ���� �峭�� ������</title>
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
    			
    			�ؿ��� content Ÿ��Ʋ�̶� �����ϴ� ���� �����~!~!<br>
    			
    			template.jsp
    			
    		</div>
    		
    		<!-- begin #centent_content  -->
    		<div id="content_content">
					
					<hr class="sitemap_hr"/>
					
					<div id="sitemap">
					
						<table>
							<tr>
								<td class="sitemap_menutitle">�� ��</td>
								<td class="sitemap_menu">��ȳ�</td>
								<td class="sitemap_menu">���ô� ��</td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
							</tr>
							<tr>
								<td class="sitemap_menutitle">�̿�ȳ�</td>
								<td class="sitemap_menu">�̿�ȳ�</td>
								<td class="sitemap_menu">�̿��Ģ</td>
								<td class="sitemap_menu">���̹� �ȳ�</td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
							</tr>
							<tr>
								<td class="sitemap_menutitle">�峭�� �˻�</td>
								<td class="sitemap_menu">�峭�� �˻�</td>
								<td class="sitemap_menu">NEW �峭�� ���</td>
								<td class="sitemap_menu">BEST �峭�� ���</td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
							</tr>
							<tr>
								<td class="sitemap_menutitle">Ű���ũ</td>
								<td class="sitemap_menu">Ű���ũ��</td>
								<td class="sitemap_menu">�峭�� ����ϱ�</td>
								<td class="sitemap_menu">�峭�� ��ȯ�ϱ�</td>
								<td class="sitemap_menu"></td>
								<td class="sitemap_menu"></td>
							</tr>
							<tr>
								<td class="sitemap_menutitle">Ŀ�´�Ƽ</td>
								<td class="sitemap_menu">��������</td>
								<td class="sitemap_menu">����������</td>
								<td class="sitemap_menu">�����Խ���</td>
								<td class="sitemap_menu">FAQ</td>
								<td class="sitemap_menu">��� �峭�� ��û</td>
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
