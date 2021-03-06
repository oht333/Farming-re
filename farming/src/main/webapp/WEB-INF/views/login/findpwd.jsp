<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<script type="text/javascript">
	$(function(){
		$('#signin').click(function(){
			if($('#pwd').val().length < 1){
				alert('변경할 비밀번호를 입력하세요.');
				$('#pwd').focus();
				event.preventDefault();
			}
		})
	});
</script>
<div style="width: 800px; margin: 0 auto; padding: 20px 0;">
<div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-5"><img class="img-fluid mb-3" src="${pageContext.request.contextPath }/resources/img/farming-favicon.png" alt="..." style="max-width: 4rem;">
              <h2>패스워드 변경</h2>
            </div>
            <form class="form-validate" method="post" action="<c:url value='/member/change'/>" >
              <div class="mb-4">
                <label class="form-label" for="email"> 이메일</label>
                <input class="form-control" name="email" id="email" type="email" value="${param.email }" readonly="readonly">
              </div>
              <div class="mb-4">
                <div class="row">
                  <div class="col">
                    <label class="form-label" for="pwd"> 비밀번호</label>
                  </div>
                </div>
                <input class="form-control" name="pwd" id="pwd" placeholder="Password" type="password">
              </div>
              <!-- Submit-->
              <div class="d-grid">
                <button class="btn btn-lg btn-primary" id="signin">비밀번호변경</button>
              </div>
              <hr class="my-4">
            </form>
            
          </div>
          </div>
<%@ include file="../inc/bottom.jsp" %>