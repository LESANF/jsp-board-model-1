<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>


<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>

<body>
	<form action="insert.jsp" id="firstform" method="post" onsubmit="return formCheck();">
		���� : <input type="text" name="title"><br /> �ۼ��� : <input type="text" name="writer"><br /> ��¥ : <input type="text" name="regdate"><br /> ���� :
		<textarea rows="10" cols="20" name="content"></textarea>
		<br /> <input type="submit">
	</form>

	<script>
		var mainForm = document.getElementById("firstform");

		function formCheck() {

			var writer = mainForm.writer.value;
			var content = mainForm.content.value;
			var title = mainForm.title.value;
			var regdate = mainForm.regdate.value;

			if (title == null || title == "") {
				alert("������ �Է��ϼ���");
				mainForm.title.focus();
				return false;
			}
			if (writer == null || writer == "") {
				alert("�ۼ��ڸ� �Է��ϼ���");
				mainForm.writer.focus();
				return false;
			} else if (writer.match(/^(\w+)@(\w+)[.](\w+)$/ig) == null) {
				alert('�̸��� �������� �Է��ϼ���');
				mainForm.writer.focus();
				return false;
			}

			if (regdate == null || regdate == "") {
				alert("��¥�� �Է��ϼ���");
				mainForm.regdate.focus();
				return false;
			} 
		/* 	else if (regdate.match(/^\d\d\d\d\d\d+$/ig) == null) {
				alert('���� ����(6�ڸ�)���� �Է��ϼ���');
				mainForm.regdate.focus();
				return false;
			} */
			
			if (content == null || content == "") {
				alert("������ �Է��ϼ���");
				mainForm.content.focus();
				return false;
			}


			/* 			var length = mainForm.length - 1;

			 for (var i = 0; i < length; i++) {
			 if (mainForm[i].value == null || mainForm[i].value == "") {
			 alert(mainForm[i].name + "��/�� �Է��ϼ���");
			 mainForm[i].focus();
			 return false;
			 }
			 } */
		}
	</script>

</body>
</html>