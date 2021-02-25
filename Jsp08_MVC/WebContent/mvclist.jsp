<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.mvc.dto.MVCBoardDto" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<h1>list</h1>


	<table border="1">
		<col width="50">
		<col width="100">
		<col width="500">
		<col width="100">
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		
		<c:choose>
			<c:when test="${empty list }">
				<tr>
					<td colspan="4" align="center">-----------작성된 글이 존재하지않습니다.-----------</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="dto">
					<tr>
						<td>${dto.seq }</td>
						<td>${dto.writer }</td>
						<td><a href="mvc.do?command=selectone&seq=${dto.seq}">${dto.title }</td>
						<td>${dto.regdate }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<tr>
			<td colspan="4" align="right">
				<input type="button" value="글작성" onclick="location.href='mvc.do?command=insertform'">
			</td>
		</tr>
	</table>

</body>
</html>














