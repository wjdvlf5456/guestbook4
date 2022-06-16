<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<form action="./add" method = "post">
			<table border="1" width="500">
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
				<td>비밀번호</td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><button type="submit">등록</button></td>
			</tr>
		</table>
		
		</form>
		<table border = "1" width = "500">
		<c:forEach items ="${guestList }" var = "guestVo" varStatus="status">
			<tr>
				<td>${guestVo.no}</td>
				<td>${guestVo.name}</td>
				<td>${guestVo.regDate}</td>
				<td><a href = "/guestbook4/deleteForm/${guestVo.no }">삭제</a></td>
			</tr>
			<tr>
				<td colspan =4>"${guestVo.content}"</td>
			</tr>
		</c:forEach>
		</table>
	</body>
</html>