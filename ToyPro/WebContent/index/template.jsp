<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>����Ư���� ���� �峭�� ������</title>
<link href="css/template.css" rel="stylesheet" type="text/css" />
<link href="css/header.css" rel="stylesheet" type="text/css" />
<link href="css/footer.css" rel="stylesheet" type="text/css" />
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
    		<div id="content_content">
    			content_conten
    		</div>
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
