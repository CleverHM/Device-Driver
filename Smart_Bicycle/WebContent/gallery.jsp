<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
	<title>JSP World</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- jQuery/jQuery Mobile 라이브러리 사용 -->
	<%@ include file="include/jQueryMobile.inc" %>

	<link href="fotorama/fotorama.css" rel="stylesheet">
    <script src="fotorama/fotorama.js"></script>
    <style>
        .fotorama__caption {
            text-align: center;	
        }
    </style>
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
        <div class="fotorama" data-arrows="true" data-width="100%" data-ratio="965/643" data-allowfullscreen="true" data-nav="thumbs" >
            <a href="gallery/Chrysanthemum.jpg"><img src="gallery/Chrysanthemum.jpg" data-caption="국화"/></a>
            <a href="gallery/Desert.jpg"><img src="gallery/Desert.jpg" data-caption="사막"/></a>
            <a href="gallery/Hydrangeas.jpg"><img src="gallery/Hydrangeas.jpg" data-caption="수국"/></a>
            <a href="gallery/Jellyfish.jpg"><img src="gallery/Jellyfish.jpg" data-caption="해파리"/></a>
            <a href="gallery/Koala.jpg"><img src="gallery/Koala.jpg" data-caption="코알라"/></a>
            <a href="gallery/Lighthouse.jpg"><img src="gallery/Lighthouse.jpg" data-caption="등대"/></a>
            <a href="gallery/Penguins.jpg"><img src="gallery/Penguins.jpg" data-caption="펭귄"/></a>
            <a href="gallery/Tulips.jpg"><img src="gallery/Tulips.jpg" data-caption="튤립"/></a>
        </div>
	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
	    <%@ include file="include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>