<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="include/jQueryMobile.inc" %>

</head>
<body>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="a">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

		<!-- 전역변수 선언 및 입력 매개변수값 추출 -->
		<%
		// 입력정보 한글 처리
		request.setCharacterEncoding("euc-kr");
		// 회원 관련 입력정보 추출
		String id	= request.getParameter("ID");
		String pw	= request.getParameter("PW");
		%>
		
		<!-- 수정 부분: 시작 --> 		
		<%
		// DB 관련 객체
		Connection        conn  = null; 
		PreparedStatement pstmt = null;
		ResultSet         rs    = null;
		String            sql   = "";
		String            rst   = "success";
		String            msg   = "";
		%>

		<%
		try {
		%>
			<%
			// DB Open: MS SQL Server
			String driverName = "org.gjt.mm.mysql.Driver";
			String dbURL = "jdbc:mysql://localhost:3306/smart_bicycle";
			// JDBC Driver 로딩
			Class.forName(driverName);
			// DB Open 
			conn = DriverManager.getConnection(dbURL, "root", "a34x2467"); 
			%>   	
		
			<%
			// 이미 등록된 아이디가 있는지 검사
			sql = "select * " + 
				  " from member " + 
				  "where id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			// 등록된 아이디가 있는 경우          
			if (rs.next()) {
				%>
				<!-- 회원정보 출력 -->
				ID: <%= rs.getString("id") %><br>
				나이: <%= rs.getString("age") %>
				성별: <%= rs.getString("sex") %><br>
				<jsp:forward page="menu.jsp"/>
				<%
				
				
			// 등록된 아이디가 아닌 경우          
			} else {
				rst = "로그인";
				msg = "로그인에 성공했습니다.!";
			} 
            %>
		
		<%
		} catch(SQLException e) {
			rst = "시스템에러";
			msg = e.getMessage();
			out.print("결과: " + rst + "<br>");
			out.print("내용: " + msg + "<br>");
		} finally {
			if(pstmt != null) 
			   pstmt.close();
			if(conn != null) 
				conn.close();
		}
		%>		
		<!-- 수정 부분: 끝 --> 
		
		<%= rst %><br>
		<%= msg %><br>
		
		<p align="center">
		<a href="loginForm.jsp" data-role="button" data-inline="true" data-ajax="false">이전</a>
		</p>

	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>