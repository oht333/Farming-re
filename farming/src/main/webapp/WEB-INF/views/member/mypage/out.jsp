<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../inc/top.jsp" %>
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
          <li class="breadcrumb-item"><a href="<c:url value='/member/mypage/main'/>">마이페이지</a></li>
          <li class="breadcrumb-item active">탈퇴</li>
        </ol>
        <h1 class="hero-heading mb-0">탈퇴 확인</h1>
        <p class="text-muted mb-5">Please check if you want to withdraw.</p>
        
        <div class="row">
          <div class="col-lg-7 mb-5 mb-lg-0"> 
            <div class="text-block"> 
            <form name="frmOut" method="post" 
				action="<c:url value='/member/mypage/out'/>" >
				<input type="hidden" name="memberNo" value="${param.memberNo}">
				<fieldset>	<legend>회원 탈퇴</legend>
					<p class="p">회원탈퇴하시겠습니까?</p>
					<div class="mb-4">
		                <label class="form-label" for="pwd"> 비밀번호</label>
		                <input class="form-control" name="pwd" id="pwd" type="password">
		              </div>
					<div class="align_center">
						<!-- <input type="submit" id="submit" value="회원탈퇴"> -->
						<button class="btn btn-outline-success" type="submit">&nbsp;&nbsp;&nbsp;탈퇴&nbsp;&nbsp;&nbsp;</button>
						<a style="float:right;" class="btn btn-outline-success" href="<c:url value='/member/mypage/main'/>">&nbsp;&nbsp;취소&nbsp;&nbsp;</a>
					</div>
				</fieldset>	
			</form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }    
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
      injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 
      
  	});
      
    </script>
    <!-- jQuery-->
    <script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${pageContext.request.contextPath }/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="${pageContext.request.contextPath }/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${pageContext.request.contextPath }/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="${pageContext.request.contextPath }/resources/js/theme.js"></script>
<%@ include file="../../inc/bottom.jsp" %>