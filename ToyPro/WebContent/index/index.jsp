<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>����Ư���� ���� �峭�� ������</title>
<link href="../css/main.css" rel="stylesheet" type="text/css" />
<link href="../css/header.css" rel="stylesheet" type="text/css" />
<link href="../css/footer.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- begin #container -->
<div id="container">
	
	<!-- header -->
	<jsp:include page="../layout/header.jsp" />
    
    <div class="image_slide">
		<jsp:include page="../layout/slide.jsp" />
    </div>
        
    <div id="main_content">
    	<div class="main_content">
        	��� �ȳ� �޷�
        </div>
        <div class="main_content">
        	��������
        </div>
        <div class="main_content">
        	����Ʈ �峭�� ���
        </div>
    </div>

    <br class="clearfloat" />
    <br>
    
    <!-- footer -->
	<jsp:include page="../layout/footer.jsp" />
	
</div>
<!-- end #container -->
</body>
</html>
