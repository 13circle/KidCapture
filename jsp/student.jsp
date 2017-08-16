<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="CSS/home_style.css">
<title>student</title>
<style>

table {
	margin : auto;
	width: 100%;
}

table tr td{
	border: 1px solid #ff656c;
}

table tr th{
	border: 1px solid #ff656c;
	background: #ff656c;
	color : white;
    text-align: left;
}

h1 {
      	font-size: 20px;
      	margin-left: 10px;
      	margin-top: 40px;
      	border-bottom: 1px solid #ff656c;
}

</style>
</head>
<body>
<nav class="navbar-navbar-inverse">
  <div class="container-fluid">
 	<ul class="nav-navbar-nav">  
      <li class="active"><a href="home.jsp">Home</a></li>
      <li class="active"><a href="student.jsp">학생목록</a></li>
      <li class="active"><a href="teacher.jsp">선생 목록</a></li>
 	  <li class="active"><a href="picture.jsp">사진 관리</a></li>
    </ul>
  </div>
  
<div class="nav-button">
	<div class="formclass">
		<form action="LOGOUT.jsp" method="post">
		<button> 로그아웃 </button></form>
	</div>
	<div class="button2">
		<button onClick="location.href='CHANGEPROFILE.jsp'"> 개인정보 변경</button>
	</div>
</div>
</nav>

<h1>학생목록</h1>

<form>
	<table width="500" border="0" style="table-layout: fixed">
		<tr>
			<td width="100">학생 이름</td>
			<td width="100">학생 번호</td>
			<td width="120">학생 폰번호</td>
			<td width="120">부모님 폰번호</td>
			<td width="100">성별</td>
			<td width="100">나이</td>
			<td width="100">담당 선생님</td>
			<td width="100">반</td>
		</tr>
		<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	}catch(ClassNotFoundException cnfe){
		cnfe.printStackTrace();
		System.out.println("드라이버 로딩 실패");
	}
	try{
		String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
		String userId = "system";
		String userPass = "system";

		conn = DriverManager.getConnection(jdbcUrl, userId, userPass);
		
		String sql = "SELECT * FROM STUDENT";

		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();
		while( rs.next() ) {
			String student_name = rs.getString("STUDENT_NAME");
			int student_number = rs.getInt("STUDENT_NUMBER");
			int student_ph = rs.getInt("STUDENT_PH");
			int student_parent_ph = rs.getInt("STUDENT_PARENT_PH");
			String student_gender = rs.getString("STUDENT_GENDER");
			int student_age = rs.getInt("STUDENT_AGE");
			String student_teacher = rs.getString("STUDENT_TEACHER");
			String student_class = rs.getString("STUDENT_CLASS");
%>
		<tr>
			<td width="100"><%= student_name %></td>
			<td width="100"><%= student_number %></td>
			<td width="120"><%= student_ph %></td>
			<td width="120"><%= student_parent_ph %></td>
			<td width="100"><%= student_gender %></td>
			<td width="100"><%= student_age %></td>
			<td width="100"><%= student_teacher %></td>
			<td width="100"><%= student_class %></td>
		</tr>
		<%
		}
	}catch(SQLException e){
		e.printStackTrace();

		if(rs != null) {
			try {
				rs.close();
			}catch(SQLException sqle) {} 
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			}catch(SQLException sqle) {}
		}
		if(conn != null) {
			try {
				conn.close();
			}catch(SQLException sqle) {}
		}
	}
%>
	</table>
	</form>
</body>
</html>