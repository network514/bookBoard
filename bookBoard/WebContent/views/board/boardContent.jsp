<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>룰루랄라</title>
	<style>
		@import url("<%=request.getContextPath()%>/css/board/boardWrite.css");
		.footstyle{
			border-bottom: 0px;
			border-top: 0px;
		}
	</style>
</head>
<body>

<article id="boardContent">
	
	<jsp:include page="boardMenu.jsp" />

	<section id="rightContent">
		<form action="<%=request.getContextPath()%>/views/board/boardModify.jsp">
			<table>
				<thead>
					<tr>
						<th>게시판</th>
						<th>값</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>제목</td>
						<td><%=request.getAttribute("title") %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><%=request.getAttribute("content") %></td>
					</tr>
					<tr>
						<td>공개유무</td>
						<td><%=request.getAttribute("pValue") %></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center"><input type="submit" name="modify" value="수정" /><input type="button" name="delete" value="삭제" /></td>
					</tr>
				</tbody>
			</table>
		</form>
		<form action="<%=request.getContextPath()%>/board/List.soso">
		<!-- 가...값...어케 보내지... getAttribute한 내용을 어케 담지... -->
		</form>
	</section>

</article>
</body>
</html>