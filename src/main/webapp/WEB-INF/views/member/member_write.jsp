<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ����� ������</title>
<c:set var="path" value="${pageContext.request.contextPath}"/>

</head>
<body>
	<h2>ȸ�������</h2>
	<form name="form1" method="post" action="${path}/member/insert.do">
		<table border="1" width="400px">
		<tr>
			<td>���̵�</td>
			<td><input name="userId"></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="userPw"></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input name="userName"></td>
		</tr>
		<tr>
			<td>�̸����ּ�</td>
			<td><input name="userEmail"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="Ȯ��">
				<input type="reset" value="���">
			</td>
		</tr>
		</table>
	
	</form>
</body>
</html>