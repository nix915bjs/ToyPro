var changeContent =  function(url) {

    var postString = "";
    $.ajax({
 
        type: "POST",
        url: url,
        data: postString,   //post ���� �������� data: {���ڸ� : ������, num:num},
        success: function(msg) {
            //body �±� �ȿ��� div�� innerHTML�� ������ ������ �����ϰ� 
            //��ư Ŭ���� ������ ������ HTML�� �����Ѵ�.

            document.getElementById("includeContent").innerHTML = msg;
        }
    });
 };