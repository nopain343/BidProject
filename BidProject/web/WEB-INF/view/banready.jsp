<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>


function bango(){	
	window.opener.name = "parent";
	document.banreason.target = opener.name;
	document.banreason.submit();
	
	this.close();
	}
</script>
</head>
<body>

<h2>�Ű��ϱ�</h2>
<br>
�Ǹ��� : ${ban.seller_id} <br>
���� : ${ban.prodname}
<br><hr><br>

<form action="banyou.go" name="banreason" method="post">
	<input type="hidden" value="${ban.code}" name="code"/>
	<input type="hidden" value="${ban.seller_id}" name="seller_id"/>
	<input type="hidden" value="${ban.prodname}" name="prodname"/>

���� ���� : 
	<input type="checkbox" name="reason" value="1"> ���� ����
	<input type="checkbox" name="reason" value="2"> �߰� ���� �λ� �䱸
	<input type="checkbox" name="reason" value="3"> ��ǰ �ҷ� �� �̹��
	
	<input type="button" value="�Ű��ϱ�" onclick="bango();">
	<input type="button" value="����ϱ�" onclick="javascript:window.close()">
</form>

</body>
</html>