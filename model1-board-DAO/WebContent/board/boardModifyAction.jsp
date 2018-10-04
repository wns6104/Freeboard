<%@	page	language="java"	contentType="text/html;	charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=EUC-KR">
<title>BOARD MODIFY ACTION</title>
</head>
<body><%
request.setCharacterEncoding("euc-kr");
if(request.getParameter("boardNo") == null || request.getParameter("boardPw") ==
null) {
	response.sendRedirect(request.getContextPath()+"/board/boardList.jsp");
} else {
	int boardNo = Integer.parseInt(request.getParameter("boardNo"));
	System.out.println("boardModifyAction param boardNo :"+boardNo);
	String boardPw = request.getParameter("boardPw");
	System.out.println("boardModifyAction param boardPw :"+boardPw);
	String boardContent = request.getParameter("boardContent");
	System.out.println("boardModifyAction param boardContent :"+boardContent);
	String boardUser = request.getParameter("boardUser");
	System.out.println("boardModifyAction param boardUser :"+boardUser);
	String boardSubject = request.getParameter("boardSubject");
	System.out.println("boardModifyAction param boardSubject :"+boardSubject);
	String boardReg = request.getParameter("boardReg");
	System.out.println("boardModifyAction param boardReg :"+boardReg);
	int boardImgsize = Integer.parseInt(request.getParameter("boardImgsize"));
	System.out.println("boardModifyAction param boardImgsize :"+boardImgsize);
	String boardfileName = request.getParameter("boardfileName");
	System.out.println("boardModifyAction param boardfileName :"+boardfileName);
	

	Board board = new Board();
	board.setBoardNo(boardNo);
	board.setBoardPw(boardPw);
	board.setBoardContent(boardContent);
	board.setBoardUser(boardUser);
	board.setBoardSubject(boardSubject);
	board.setBoardImg(boardImgsize);
	board.setBoardfileName(boardfileName);

	BoardDao boardDao = new BoardDao();
	boardDao.updateBoard(board);

response.sendRedirect(request.getContextPath()+"/board/boardView.jsp?boardNo="+boardNo);
} %>
</body>
</html>