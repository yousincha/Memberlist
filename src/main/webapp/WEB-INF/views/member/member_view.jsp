<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<c:set var="path" value="${pageContext.request.contextPath}"/>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>ȸ������ �� ������</title>

<script>
	$(document).ready(function(){
		$("#btnUpdate").click(function(){
			if(confirm("�����Ͻðڽ��ϱ�?")){
				document.form1.action="${path}/member/update.do";
				document.form1.submit();
			}
		});
	});
</script>
</head>
<body>
<h2>ȸ������ ��</h2>
<form name="form1" method="post">
	<table border="1" width="400px">
		<tr>
			<td>���̵�</td>
			<td><input name="userId" value="${dto.userId}"
			readonly="readonly"></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="userPw"></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input name="userName" value="${dto.userName}"></td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td><input name="userEmail" value="${dto.userEmail}"></td>
		</tr>
		<tr>
			<td>ȸ����������</td>
			<td>
				<fmt:formatDate value="${dto.userRegdate}"
				pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
		</tr>
		<tr>
			<td>ȸ������ ��������</td>
			<td>
				<fmt:formatDate value="${dto.userUpdatedate}"
				pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="����" id="btnUpdate">
				<input type="button" value="����" id="btnDelete">
				<div style="color:red;"> ${message}</div>
			
			</td>
		</tr>
	</table>
</form>
</body>
</html>