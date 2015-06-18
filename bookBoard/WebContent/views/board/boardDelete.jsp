<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>룰루랄라</title>
	<style type="text/css">@import url("<%=request.getContextPath()%>/css/board/boardDelete.css");</style>
</head>
<body>
	<form action="request.getContextPath() %>/views/board/boardList.jsp">
		<table>
			<tr>
				<td>삭제 하시겠습니까? </td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="확인" /> <input type="reset" name="reset" value="취소" /></td>
			</tr>
		</table>
	</form>
</body>
</html>