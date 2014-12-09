<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
	<title>JSP World</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- jQuery/jQuery Mobile ���̺귯�� ��� -->
	<%@ include file="include/jQueryMobile.inc" %>
</head>
<body>

<!-- ������ ���� ���� -->
<section data-role="page">

	<!-- 1. ��� -->
	<header data-role="header" data-theme="a">
		<%@ include file="include/menu.inc" %>
		<!-- ��� Ÿ��Ʋ -->
		<h1>�ٹ�</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content" data-theme="a"> 

	</section> 

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
	    <%@ include file="include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>