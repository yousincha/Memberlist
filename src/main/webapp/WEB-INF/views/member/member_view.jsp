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
<title>회원정보 상세 페이지</title>

<script>
	$(document).ready(function(){
		$("#btnUpdate").click(function(){
			if(confirm("수정하시겠습니까?")){
				document.form1.action="${path}/member/update.do";
				document.form1.submit();
			}
		});
	});
</script>
</head>
<body>
<h2>회원정보 상세</h2>
<form name="form1" method="post">
	<table border="1" width="400px">
		<tr>
			<td>아이디</td>
			<td><input name="userId" value="${dto.userId}"
			readonly="readonly"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="userPw"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="userName" value="${dto.userName}"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input name="userEmail" value="${dto.userEmail}"></td>
		</tr>
		<tr>
			<td>회원가입일자</td>
			<td>
				<fmt:formatDate value="${dto.userRegdate}"
				pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
		</tr>
		<tr>
			<td>회원정보 수정일자</td>
			<td>
				<fmt:formatDate value="${dto.userUpdatedate}"
				pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="수정" id="btnUpdate">
				<input type="button" value="삭제" id="btnDelete">
				<div style="color:red;"> ${message}</div>
			
			</td>
		</tr>
	</table>
</form>
</body>
</html>