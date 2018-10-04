<%@	page	language="java"	contentType="text/html;	charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 글쓰기</title>
<!--   // jQuery UI CSS파일-->  
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!-- // jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript">
$(function(){
  $("#boardreg").datepicker({
    dateFormat:"yy-mm--dd",
    monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    dayNamesMin:['일','월','화','수','목','금','토'],
    changeMonth:true,
    changeYear:true,
    yearRange:"c-70:c+70",
    showMonthAfterYear:true
   });
});
</script>

</head>
<body>
<h1>게시판 글쓰기</h1>
<form		action="<%=request.getContextPath()%>/board/boardAddAction.jsp"method="post">
	<div>비밀번호 : </div>
	<div><input name="boardPw" id="boardPw" type="password"/></div>
	<div>내용 : </div>
	<div><textarea	name="boardContent"	id="boardContent"	rows="5"cols="50"></textarea></div>
	<div>글쓴이: </div>
	<div><input name="boardUser" id="boardUser" type="text"/></div>
	<div>글제목 : </div>
	<div><input name="boardSubject" id="boardSubject" type="text"/></div>
	<div>일자 : </div>
	<div><input name="boardReg" id="boardreg" type="text"/></div>
	<div>그림 : </div>
	<div><input name="boardImgsize" id="boardImgsize" type="text"/></div>
	<div>이미지파일 : </div>
	<div><input name="boardfileName" id="boardfileName" type="text"/></div>
	<div>
		<input type="submit" value="글입력"/>
		<input type="reset" value="초기화"/>
	</div>
</form>
</body>
</html>