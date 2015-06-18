<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 왠지 buffer(한글자씩 바꾸는 뭐시기가 있었는데 기억이 안남)를 사용할 것같은데...  
    modify로 값 바로 오게 하지말고 controller 새로 만들어서
	content에서 controller로 보낸 다음 버퍼를 써서 이래저래한뒤 값 불러오게 해야할 것 같다-->
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
	<form action="<%=request.getContextPath() %>/views/board/boardList.jsp">
		<table>
			<thead>
				<tr>
					<th colspan="2" align="left">
						<p><font size="h1">수정하는거 1도 모르겠닿핳핳</font></p>
						게시판&nbsp;&nbsp;<%=request.getAttribute("bSelect") %>&nbsp;&nbsp;&nbsp;&nbsp;
						카테고리 &nbsp;&nbsp;<%=request.getAttribute("category") %>&nbsp;&nbsp;&nbsp;&nbsp;
						작성자&nbsp;&nbsp;<%=request.getAttribute("name") %>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width="10%" align="right" id="title" title="title">제목</td>
					<td><%=request.getAttribute("title") %></td>
				</tr>
				<tr>
					<td width="10%"  align="right">내용</td>
					<td><%=request.getAttribute("content") %></td>
				</tr>
				<tr>
					<td width="10%" >공개유무</td>
					<td><%=request.getAttribute("pValue") %></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center"><input type="submit" name="modify" value="확인" /><input type="reset" name="delete" value="취소" /></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>