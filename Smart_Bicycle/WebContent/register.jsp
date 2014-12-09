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

	<!-- 1. ��� -->
	<header data-role="header" data-theme="a">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 

		<!-- �������� ���� �� �Է� �Ű������� ���� -->
		<%
		// �Է����� �ѱ� ó��
		request.setCharacterEncoding("euc-kr");
		// ȸ�� ���� �Է����� ����
		String id	= request.getParameter("ID");
		String pw	= request.getParameter("PW");
		int age		= Integer.parseInt(request.getParameter("AGE"));
		String sex  = request.getParameter("SEX");
		%>
		
		<!-- ���� �κ�: ���� --> 		
		<%
		// DB ���� ��ü
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
			// JDBC Driver �ε�
			Class.forName(driverName);
			// DB Open 
			conn = DriverManager.getConnection(dbURL, "root", "a34x2467"); 
			%>   	
		
			<%
			// �̹� ��ϵ� ���̵� �ִ��� �˻�
			sql = "select * " + 
				  " from member " + 
				  "where id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			// ��ϵ� ���̵� �ִ� ���          
			if (rs.next()) {
			
				rst = "�ߺ����̵�";
				msg = "�̹� ��ϵ� ���̵��Դϴ�!";
				
			// ��ϵ� ���̵� �ƴ� ���          
			} else {
			
				// ȸ������ ��� 
				sql = "insert into member(id, pw, age, sex, register_day) values (?, ?, ?, ?, now())";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				pstmt.setInt(3, age);
				pstmt.setString(4, sex);
				pstmt.executeUpdate();
				%>
				
				<!-- ȸ������ ��� -->
				ID: <%= id %><br>
				��й�ȣ: <%= pw %><br>
				����: <%= age %>
				����: <%= sex %><br>
			<%	
			} 
            %>
		
		<%
		} catch(SQLException e) {
			rst = "�ý��ۿ���";
			msg = e.getMessage();
			out.print("���: " + rst + "<br>");
			out.print("����: " + msg + "<br>");
		} finally {
			if(pstmt != null) 
			   pstmt.close();
			if(conn != null) 
				conn.close();
		}
		%>		
		<!-- ���� �κ�: �� --> 
		
		<%= rst %><br>
		<%= msg %><br>
		
		<p align="center">
		<a href="registerForm.jsp" data-role="button" data-inline="true" data-ajax="false">����</a>
		</p>

	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>