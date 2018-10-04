<%@	page	language="java"	contentType="text/html;	charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD LIST</title>
</head>
<body>
<h1>BOARD LIST</h1>
<%
int currentPage = 1;
if(request.getParameter("currentPage") != null) {
	currentPage = Integer.parseInt(request.getParameter("currentPage"));
}
BoardDao boardDao = new BoardDao();
int totalRowCount = boardDao.selectTotalBoardCount();
int pagePerRow = 10;
int beginRow = (currentPage-1)*pagePerRow;
List<Board> list = boardDao.selectBoardListPerPage(beginRow, pagePerRow);
%>

		<div>전체행의 수 : <%=totalRowCount%>/<%=list.size()%></div>
	<table border="1">
		<thead>
			<tr>
			    <th>no</th>
			    <th>제목</th>
				<th>내용</th>
				<th>날짜</th>
				<th>글쓴이</th>
				<th>조회수</th>
				<th>그림</th>
				<th>이미지파일</th>
				<th>수정일</th>
			</tr>
		</thead>
		<tbody>
<%
			for(Board b : list) {
%>
			<tr>
				<td><%=b.getBoardNo()%></td>			
            	<td><a href="<%=request.getContextPath()%>/board/boardView.jsp?boardNo=<%=b.getBoardNo()%>"><%=b.getBoardSubject()%> </a></td>
                <td><%=b.getBoardContent()%></td>
				<td><%=b.getBoardReg()%></td>
				<td><%=b.getBoardUser()%></td>
				<td><%=b.getBoardHit()%></td>
				<td><%=b.getBoardImgsize()%></td>
				<td><%=b.getBoardfileName()%></td>
				<td><%=b.getBoardmodifDate()%></td>
			</tr>
<%
		}
%>
		</tbody>
	</table>

	<div>
		<a 
	href="<%=request.getContextPath()%>/board/boardAddForm.jsp">게시글 입
력</a>
	</div>
<%
	int lastPage = totalRowCount/pagePerRow;
	if(totalRowCount%pagePerRow != 0) {
		lastPage++;
	}
%>
	<div>
<%
		if(currentPage>1) {
%>
			<a
href="<%=request.getContextPath()%>/board/boardList.jsp?currentPage=<%=currentPage-1%>">이전</a>
<%
		}
		if(currentPage < lastPage) {
%>

			<a
href="<%=request.getContextPath()%>/board/boardList.jsp?currentPage=<%=currentPage+1%>">다음</a>
<%	} %>
	</div>
</body>
</html>
