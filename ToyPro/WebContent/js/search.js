
	var xmlHttp;
	alert("tt");
	
	$(document).ready(function()
	{
		alert('nn');
		/*alert("ready!"); 
		// ��ư�� ������ ���� �̺�Ʈ�� ������� ����
		initEventListener();
		
		// Ajax ������ ���� ȯ�漳�� �� �Ʒ��� ���� �� �ܰ��� ������ ����
		// 1. XMLHttpRequest ��ü ����
		// 2. ��û�� ���� ���� ó�� �̺�Ʈ ������ ���
		initXMLHttpRequest();
		*/
	});

	// �ܺ� �������� ���ϸ��� �˾Ƴ���.
	function initEventListener()
	{
		alert("initEvent");
		// ��ư�� Ŭ�� ���� �� �̺�Ʈ �߻�
		$("#Btn").click(function(e)
		{
			loadPage($(this).attr("data"));
		});
	}
	// XMLHttpRequest�� �̸� ������ �Ӵϴ�.
	function initXMLHttpRequest()
	{
		alert("make");
		// 1. �������� ���� XMLHttpReqeust ����
		xmlHttp = createXMLHTTPObject();
		
		// 2. ��û�� ���� ���� ó�� �̺�Ʈ ������ ���
		xmlHttp.onreadystatechange = on_ReadyStateChange;
	}

	// 1. �������� ���� XMLHttpRequest ����
	function createXMLHTTPObject()
	{
		var xhr = null;
		if(window.XMLHttpRequest)
		{
			// IE7 ���� �̻�, ũ��, ���ĸ�, ���̾�����, ����� �� ���� ��κ���
			// ������������ XMLHttpReqeust ��ü�� �����մϴ�.
			xhr = new XMLHttpRequest();
		}
		else
		{
			// IE5, IE6 ���������� ������ ���� ������� XMLHttpRequest ��ü�� �����մϴ�.
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
		}
		return xhr;
	}

	// �������� �ε��ϴ� �Լ��Դϴ�.
	// �������� �о� ���� �� å���� �ô´�.
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
		// 3. ������ ���� ������ ����
		// 4. GET ������� ������ ������, ������ �񵿱�ȭ Ŭ���̾�Ʈ�� ���� ���� ���� ��û �غ�
		xmlHttp.open("GET", strPage, true);
		//xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		
		/* alert("open ����"); */
		// 5. ���� ������ ����
		xmlHttp.send(null);
		/* alert("loadPage() ��!!"); */
	}

	// 6. ���� ó��
	function on_ReadyStateChange()
	{
		// 4 = ������ ���� �Ϸ� (0 = �ʱ�ȭ ��, 1 = �ε� ��, 2 = �ε� ��, 3 = ��ȭ ����)
		
		if(xmlHttp.readyState == 4)
		{
			// 200�� ���� ���� (404 = �������� �������� ����)
			if(xmlHttp.status == 200)
			{
				showCount(xmlHttp.responseText);
				
				// 7. ������ ó��
			}
			else
			{
				alert("ó�� �� ������ �߻��߽��ϴ�.");			
			}
		}
	}

	// 7. json ������ ������ ó��
	function addPage(strInfo)
	{
		alert("strInfo : "+strInfo);
		alert("addPage() ����?");
		var $newPage = $('strInfo');
		alert("newPage ����");
		var strID = $newPage.attr("id");
		alert("strID ����");
		if($("#"+strID).size() == 0)
		{
			alert("if �� ����");
			$("#page_container").append(strInfo);	
		}
		else
		{
			alert("�̹� "+strID+"�������� �����մϴ�.");
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
