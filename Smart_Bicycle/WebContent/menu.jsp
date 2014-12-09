<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
	<title>JSP World</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- jQuery/jQuery Mobile 라이브러리 사용 -->
	<%@ include file="include/jQueryMobile.inc" %>
</head>
<body>

<!-- 페이지 영역 지정 -->
<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="a">
		<%@ include file="include/menu.inc" %>
		<!-- 헤더 타이틀 -->
		<h1>앨범</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content" data-theme="a"> 

	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
	    <%@ include file="include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>