<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mainstyle.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/clear.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/formLayout.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mystyle.css'/>" />

<title>노하우 게시판 - 작성</title>
<script type="text/javascript" src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		$('form[name=frmWrite]').submit(function(){
			$('.infobox').each(function(idx, item){
				if($(this).val().length<1){
					alert($(this).prev().html() + "을(를) 입력하세요");
					$(this).focus();
					event.preventDefault();
					return false;  //each 탈출
				}
			});
		});
		
		$('#btList').click(function(){
			location.href="<c:url value='/knowledge/list.do'/>";	
		});
		
	});
</script>

</head>
<body>
<div class="divForm">
<form name="frmWrite" method="post" enctype="multipart/form-data"
	action="<c:url value='/knowledge/write.do'/>" >
 <fieldset>
	<legend>글쓰기</legend>
        <div class="firstDiv">
            <label for="title">제목</label>
            <input type="text" id="title" name="title" class="infobox" />
        </div>
        <div>
            <label for="name">작성자</label>
            <input type="text" id="name" name="name" class="infobox" />
        </div>
        <div>
            <label for="pwd">비밀번호</label>
            <input type="password" id="pwd" name="pwd" class="infobox" />
        </div>
        <div>
            <label for="email">이메일</label>
            <input type="text" id="email" name="email" />
        </div>
        <div>  
        	<label for="content">내용</label>        
 			<textarea id="content" name="content" rows="12" cols="40"></textarea>
        </div>
        <div>
            <label for="upfile">첨부파일</label>            
	        <input type="file" name="upfile" id="upfile">(최대 5M)
        </div>
        <div class="center">
            <input type = "submit" value="등록"/>
            <input type = "Button" id="btList" value="글목록" />         
        </div>
    </fieldset>
</form>
</div>   

              
</body>
</html>