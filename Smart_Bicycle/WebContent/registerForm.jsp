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

		<form method=post action="Main.do" data-ajax="false">
		<input type="hidden" name="command" value="register_member">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- ID -->
				<label for="id">ID:</label>
				<input type="text" id="id" name="ID" placeholder="ID" size=10 maxlength=20 required="required"/>
				
			    <!-- 비밀번호 -->
				<label for="pw">비밀번호:</label>
				<input type="password" id="pw" name="PW" placeholder="Password" size=10 maxlength=20 required="required"/>
				
				<!-- 나이 -->
				<label for="age">나이:</label>
				<input type="number" id="age" name="AGE" placeholder="Age" size=10 maxlength=10 required="required"/>
				
                <!-- 성별 -->
				<fieldset data-role="controlgroup" data-type="horizontal">
					<legend>성별:</legend>
						<label for="male">남</label>
						<input type="radio" name="SEX" id="male" value="male"/>
						<label for="female">여</label>
						<input type="radio" name="SEX" id="female" value="female"/>
				</fieldset>	
			</fieldset>
			
			<p align="center">
			<button type="submit" data-role="button" data-inline="true">등록</button>
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