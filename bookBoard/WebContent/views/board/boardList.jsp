<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.*,java.text.*" %>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>룰루랄라</title>
	<style>
		@import url("<%=request.getContextPath()%>/css/board/boardList.css");
		
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
	<%
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String strdate = dateFormat.format(date);
	%>
		
			<table>
			<thead>
				<tr>
					<th>글 번호</th>
					<th>제목</th>
					<th>등록일</th>
					<th>작성자</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>4</td>
					<td class="clickable">살어리 살어리랏다 청산(靑山)에 살어리랏다.</td>
					<td><%= strdate %></td><!-- 날짜 -->
					<td>청산별곡</td>
					<td>20</td>
				</tr>
				<tr>
					<td>3</td>
					<td class="clickable">얄리얄리 얄랑셩 얄라리 얄라</td>
					<td><%= strdate %></td>
					<td>청산별곡</td>
					<td>15</td>
				</tr>
				<tr>
					<td>2</td>
					<td class="clickable">강호(江湖)애 병이 깁퍼 듁님(竹林)의 누엇더니</td>
					<td><%= strdate %></td>
					<td>관동별곡</td>
					<td>6</td>
				</tr>
				<tr>
					<td>1</td>
					<td class="clickable">나랏말싸미 듕귁에 달아</td>
					<td><%= strdate %></td>
					<td>훈민정음해례본</td>
					<td>14</td>
				</tr>
			</tbody>
			</table>
			<table style="border: 0px;">
			<!-- 페이징 / 어차피 지워야 됨. style 신경쓰지 않아도 됨. -->
				<tr class="footstyle">
					<td class="footstyle"></td>
					<td class="footstyle"  align="center">◀ 1 &#183; 2 &#183; 3 &#183; 4 &#183; 5 &#183; 6 &#183; 7 &#183; 8 &#183; 9 &#183; 10 ▶ ▶▶ </td><!-- 페이징 -->
					<td class="footstyle" width="10%" rowspan="2" align="right">
						<%-- <a href="<%=request.getContextPath()%>/">글쓰기</a> --%>
						<input type="button" value="글쓰기" onclick="javascript:location.href='<%=request.getContextPath()%>/board/writeForm.soso'"/>
					</td>
				</tr>
				<tr  class="footstyle">
					<td class="footstyle"></td>
					<td class="footstyle"><input type="search" />&nbsp;<input type="button" value="검 색" /></td>
				</tr>
			</table>
	</section>
</article>

</body>
</html>