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

	<!-- 1. ��� -->
	<header data-role="header" data-position="fixed" data-fullscreen="true" data-theme="a">
		<!-- ��� Ÿ��Ʋ -->
		<h1>login</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 

		<form method=post action=menu.jsp data-ajax="false">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- ID -->
				<label for="id">ID:</label>
				<input type="text" id="id" name="ID" placeholder="ID" size=10 maxlength=20 required="required"/>
				
			    <!-- ��й�ȣ -->
				<label for="pw">��й�ȣ:</label>
				<input type="password" id="pw" name="PW" placeholder="Password" size=10 maxlength=20 required="required"/>
				
			</fieldset>
			
			<p align="center">
				<button type="submit" data-role="button" data-inline="true">�α���</button>
				<a href="registerForm.jsp" data-role="button" data-inline="true">ȸ������</a>
			</p>
		</form>
		
			
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-position="fixed" data-fullscreen="true" data-theme="a">
		<%@ include file="include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>