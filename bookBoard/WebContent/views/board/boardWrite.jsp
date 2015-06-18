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

		<form action="<%=request.getContextPath()%>/board/write.soso">
			<table>
				<colgroup>
					<col width="150px" />
					<col width="700px" />
				</colgroup>
			
				<thead>
					<tr>
						<th colspan="2" align="left">게시판 선택&nbsp;&nbsp;
							<select name="bSelect" id="bSelect"><!-- 게시판을 선택한다. -->
								<option value="hiphop">Hip-Hop</option>
								<option value="rnb">R&B</option>
								<option value="elec">Electronica</option>
							</select>&nbsp;&nbsp;&nbsp;&nbsp;
							카테고리 선택&nbsp;&nbsp;
							<select name="category" id="category"><!-- 카테고리를을 선택한다. -->
								<option value="drake">drake</option>
								<option value="weekend">theWeekend</option>
								<option value="daft">daftPunk</option>
							</select>&nbsp;&nbsp;&nbsp;&nbsp;
							작성자&nbsp;&nbsp;<input type="text" name="name" id="name" />
						</th>
					</tr>
				</thead>
					<tbody>
						<tr>
							<td class="column">제목</td>
							<td class="valueField"><input type="text" id="name" name="title" style="width:75%;"/></td>
						</tr>
						<tr>
							<td class="column">내용</td>
							<td class="valueField"><textarea name="content" id="" cols="100" rows="30" maxlength="100"   id="content" name="content" style="resize:none;"></textarea></td>
						</tr>
						<tr>
							<td class="column">공개유무</td>
							<td class="valueField">공 개 <input type="radio" id="public" name="public" value="yes" checked="checked"/>&nbsp;&nbsp;&nbsp;비공개 <input type="radio" id="public" name="public" value="no"/></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center"><input type="submit" value="확인" /><input type="reset" value="취소" onclick="javascript:history.back();"/></td>
						</tr>
					</tbody>
			</table>
		</form>
	</section>
	
</article>
	
</body>
</html>