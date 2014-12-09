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

		<form method=post action="Main.do" data-ajax="false">
		<input type="hidden" name="command" value="register_member">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- ID -->
				<label for="id">ID:</label>
				<input type="text" id="id" name="ID" placeholder="ID" size=10 maxlength=20 required="required"/>
				
			    <!-- ��й�ȣ -->
				<label for="pw">��й�ȣ:</label>
				<input type="password" id="pw" name="PW" placeholder="Password" size=10 maxlength=20 required="required"/>
				
				<!-- ���� -->
				<label for="age">����:</label>
				<input type="number" id="age" name="AGE" placeholder="Age" size=10 maxlength=10 required="required"/>
				
                <!-- ���� -->
				<fieldset data-role="controlgroup" data-type="horizontal">
					<legend>����:</legend>
						<label for="male">��</label>
						<input type="radio" name="SEX" id="male" value="male"/>
						<label for="female">��</label>
						<input type="radio" name="SEX" id="female" value="female"/>
				</fieldset>	
			</fieldset>
			
			<p align="center">
			<button type="submit" data-role="button" data-inline="true">���</button>
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