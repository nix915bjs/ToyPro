
	var xmlHttp;
	alert("tt");
	
	$(document).ready(function()
	{
		alert('nn');
		/*alert("ready!"); 
		// 버튼이 눌렸을 때의 이벤트를 펑션으로 구현
		initEventListener();
		
		// Ajax 구현을 위한 환경설정 중 아래와 같이 두 단계의 내용을 실행
		// 1. XMLHttpRequest 객체 생성
		// 2. 요청에 대한 응답 처리 이벤트 리스너 등록
		initXMLHttpRequest();
		*/
	});

	// 외부 페이지의 파일명을 알아낸다.
	function initEventListener()
	{
		alert("initEvent");
		// 버튼을 클릭 했을 때 이벤트 발생
		$("#Btn").click(function(e)
		{
			loadPage($(this).attr("data"));
		});
	}
	// XMLHttpRequest를 미리 생성해 둡니다.
	function initXMLHttpRequest()
	{
		alert("make");
		// 1. 브라우저에 따른 XMLHttpReqeust 생성
		xmlHttp = createXMLHTTPObject();
		
		// 2. 요청에 대한 응답 처리 이벤트 리스너 등록
		xmlHttp.onreadystatechange = on_ReadyStateChange;
	}

	// 1. 브라우저에 따른 XMLHttpRequest 생성
	function createXMLHTTPObject()
	{
		var xhr = null;
		if(window.XMLHttpRequest)
		{
			// IE7 버전 이상, 크롬, 사파리, 파이어폭스, 오페라 등 거의 대부분의
			// 브라우저에서는 XMLHttpReqeust 객체를 제공합니다.
			xhr = new XMLHttpRequest();
		}
		else
		{
			// IE5, IE6 버전에서는 다음과 같은 방법으로 XMLHttpRequest 객체를 생성합니다.
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
		}
		return xhr;
	}

	// 페이지를 로딩하는 함수입니다.
	// 페이지를 읽어 들일 때 책임을 맡는다.
	function loadPage(strPage)
	{
		var age=document.getElementById("age").value;
		var subject=document.getElementById("subject").value;
		var keyword=document.getElementById("keyword").value;	
		if(age!=''){
			strPage+="/"+age;
		}else{
			strPage+="/"+"null";
		}
		if(subject!=''){
			strPage+="/"+subject;
		}else{
			strPage+="/"+"null";
		}
		if(keyword!=''){
			strPage+="/"+keyword;
		}else{
			strPage+="/"+"null";
		}
		// 3. 서버로 보낼 데이터 생성
		// 4. GET 방식으로 데이터 보내기, 응답은 비동기화 클라이언트와 서버 간의 연결 요청 준비
		xmlHttp.open("GET", strPage, true);
		//xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		
		/* alert("open 다음"); */
		// 5. 실제 데이터 전송
		xmlHttp.send(null);
		/* alert("loadPage() 끝!!"); */
	}

	// 6. 응답 처리
	function on_ReadyStateChange()
	{
		// 4 = 데이터 전송 완료 (0 = 초기화 전, 1 = 로딩 중, 2 = 로딩 됨, 3 = 대화 상태)
		
		if(xmlHttp.readyState == 4)
		{
			// 200은 에러 없음 (404 = 페이지가 존재하지 않음)
			if(xmlHttp.status == 200)
			{
				showCount(xmlHttp.responseText);
				
				// 7. 데이터 처리
			}
			else
			{
				alert("처리 중 에러가 발생했습니다.");			
			}
		}
	}

	// 7. json 형식의 데이터 처리
	function addPage(strInfo)
	{
		alert("strInfo : "+strInfo);
		alert("addPage() 탔나?");
		var $newPage = $('strInfo');
		alert("newPage 다음");
		var strID = $newPage.attr("id");
		alert("strID 다음");
		if($("#"+strID).size() == 0)
		{
			alert("if 문 탔다");
			$("#page_container").append(strInfo);	
		}
		else
		{
			alert("이미 "+strID+"페이지가 존재합니다.");
		}
	}
	
	function display()
	{
		var a = document.getElementById("countId");
		a.style.display = "block";
	}
	
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
	
	function showCount(countArr){
		var arr=[];
		var k=0;
		var c=1;
		arr[0]='';
		while(true){
			
			if(countArr[c] == "]"){
				break;
			}
			if(countArr[c] == ","){
				k++;
				arr[k]='';
				c++;
				continue;
			}
			arr[k]+=countArr[c];
			c++;
		}
		for(var i=1;i<=30;i++){
			$("#b"+i).text(arr[i-1]);
			if(arr[i-1]==0){
				$("#b"+i).css("color","brown");
			}else if(arr[i-1]<10){
				$("#b"+i).css("color","blue");
			}else if(arr[i-1]<100){
				$("#b"+i).css("color","green");
			}else{
				$("#b"+i).css("color","red");
			}
			$("#b"+i).css("display","inline");
		}
	}
