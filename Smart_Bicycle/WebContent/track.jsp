<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
	<title>JSP World</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- jQuery/jQuery Mobile 라이브러리 사용 -->
	<%@ include file="include/jQueryMobile.inc" %>
	
	<!-- JQuery-UI-Map을 사용하기 위해 반드시 필요한 태그-->
	<script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script>
    <script src="web/jquery.fn.gmap.js" type="text/javascript"></script>
    <script src="ui/jquery.ui.map.extensions.js" type="text/javascript"></script>  
	
	<script type="text/javascript">
		 $(document).ready(function() {
			 //초기 위치를 강남비트로 설정
			var StartLatLng = new google.maps.LatLng(37.494582, 127.027582);
			var markerBlue = "http://www.google.com/intl/en_us/mapfiles/ms/icons/blue-dot.png";			
			$('#map_canvas').gmap({"center" : StartLatLng , "zoom" : 16});
			$('#map_canvas').gmap("addMarker", {"position": StartLatLng, "icon": markerBlue});
		 });
	</script>    
	<style type="text/css">
	.map_style {
		padding: 0px;
		height: 100%;
		width: 100%;
	}
	</style>
</head>
<body>

<!-- 페이지 영역 지정 -->
<section data-role="page" id="page" class="map_style" data-theme="a">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="a">
		<%@ include file="include/menu.inc" %>
		<!-- 헤더 타이틀 -->
		<h1>경로</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content" class="map_style" data-theme="a"> 
		<div id="map_canvas" class="map_style"></div>
	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
	    <%@ include file="include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>