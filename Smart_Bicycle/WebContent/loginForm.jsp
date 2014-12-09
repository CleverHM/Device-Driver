<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="include/jQueryMobile.inc" %>

</head>
<body>

<section data-role="page" id="page1">

	<!-- 1. 헤더 -->
	<header data-role="header" data-position="fixed" data-fullscreen="true" data-theme="a">
		<!-- 헤더 타이틀 -->
		<h1>login</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

		<form method=post action=menu.jsp data-ajax="false">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- ID -->
				<label for="id">ID:</label>
				<input type="text" id="id" name="ID" placeholder="ID" size=10 maxlength=20 required="required"/>
				
			    <!-- 비밀번호 -->
				<label for="pw">비밀번호:</label>
				<input type="password" id="pw" name="PW" placeholder="Password" size=10 maxlength=20 required="required"/>
				
			</fieldset>
			
			<p align="center">
				<button type="submit" data-role="button" data-inline="true">로그인</button>
				<a href="registerForm.jsp" data-role="button" data-inline="true">회원가입</a>
			</p>
		</form>
		
			
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-position="fixed" data-fullscreen="true" data-theme="a">
		<%@ include file="include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>