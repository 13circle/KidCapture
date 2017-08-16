<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="CSS/home_style.css">
<title>teacher</title>
<style type ="text/css">

* {
	margin: 0;
	padding: 0;
	font-family: '맑은 고딕', 'Malgun Gothic', Gothic, sans-serif;
}

a {
	text-decoration: none;
}

li {
	list-style: none;
}

.pull-left {
	float: left;
}

.pull-right {
	float: right;
}

body {
	width: 960px;
	margin: 0 auto;
	background: #E6E6E6;
}

#page-wrapper {
	background: white;
	margin: 40px 0;
	padding: 10px 20px;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
}

#main-header {
	padding: 40px 50px;
}

.master-title {
	font-size: 30px;
	color: #181818;
}

.master-description {
	font-size: 15px;
	font-weight: 500;
	color: #383838;
}

#main-navigation {
	border-top: 1px solid #C8C8C8;
	border-bottom: 1px solid #C8C8C8;
	margin-bottom: 20px;
	height: 40px;
}

.outer-menu-item {
	float: left;
	position: relative;
}

.outer-menu-item:hover {
	background: black;
	color: white
}

.menu-title {
	display: block;
	height: 30px;
	line-height: 30px;
	text-align: center;
	padding: 5px 20px;
	color: black;
}

.menu-title:hover {
	background: black;
	color: white
}

.search-bar {
	height: 26px;
	padding: 7px;
}

.input-search {
	display: block;
	float: left;
	background-color: #FFFFFF;
	border: 1px solid #CCCCCC;
	border-radius: 15px 0 0 15px;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
	width: 120px;
	height: 24px;
	padding: 0 0 0 10px;
	font-size: 12px;
	color: #555555;
}

.input-search:focus {
	border-color: rgba(82, 168, 236, 0.8);
	outline: 0;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}

.input-search-submit {
	display: block;
	float: left;
	width: 50px;
	height: 26px;
	border-radius: 0 15px 15px 0;
	border: 1px solid #CCCCCC;
	margin-left: -1px;
	vertical-align: top;
	display: inline-block;
}

/* body 태그의 너비: 960px */
/* #page-wrapper 태그의 padding 속성으로 내용물 너비는 920px */
#content {
	overflow: hidden;
}

#main-section {
	float: left;
	width: 710px;
}

#main-aside {
	float: right;
	width: 200px;
}

article {
	padding: 0 10px 20px 10px;
	border-bottom: 1px solid #C8C8C8;
}

.article-header {
	padding: 20px 0;
}

.article-title {
	font-size: 25px;
	font-weight: 500;
	padding-bottom: 10px;
}

.article-date {
	font-size: 13px;
}

.article-body {
	font-size: 14px;
}

.aside-list {
	padding: 10px 0 30px 0;
}

.aside-list>h3 {
	font-size: 15px;
	font-weight: 600;
}

.search-bar {
	height: 26px;
	padding: 7px;
}

.input-search {
	display: block;
	float: left;
	background-color: #FFFFFF;
	border: 1px solid #CCCCCC;
	border-radius: 15px 0 0 15px;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
	width: 120px;
	height: 24px;
	padding: 0 0 0 10px;
	font-size: 12px;
	color: #555555;
}

.input-search:focus {
	border-color: rgba(82, 168, 236, 0.8);
	outline: 0;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}

.input-search-submit {
	display: block;
	float: left;
	width: 50px;
	height: 26px;
	border-radius: 0 15px 15px 0;
	border: 1px solid #CCCCCC;
	margin-left: -1px;
	vertical-align: top;
	display: inline-block;
}

#content {
	overflow: hidden;
}

#main-section {
	float: left;
	width: 710px;
}

#main-aside {
	float: right;
	width: 200px;
}


</style>
</head>
<body>
	<div id="page-wrapper">
		<header id="main-header">
			<hgroup>
				<h1 class="master-title"><a class="master-title" href="test_home.html">한빛유치원</a></h1>
				<h2 class="master-description">Hanbit</h2>
			</hgroup>
		</header>
		<nav id="main-navigation">
			<div class="pull-left">
				<ul class="outer-menu">
					<li class="outer-menu-item"><span><a class="menu-title"
							href="test_student.jsp">학생목록</a></span></li>
					<li class="outer-menu-item"><span><a class="menu-title"
							href="test_teacher.jsp">선생목록</a></span></li>
					<li class="outer-menu-item"><span><a class="menu-title"
							href="test_picture.jsp">사진목록</a></span></li>
				</ul>
			</div>
			<div class="pull-right">
				<div class="search-bar">
					<form>
						<input type="text" class="input-search"/ > <input
							type="submit" class="input-search-submit" value="검색"/ >
					</form>
				</div>
			</div>
		</nav>
		<div id="content">
			<section id="main-section">
				<article>
					<div class="article-header">
						<h1 class="article-title">선생목록</h1>
						<br>
					</div>
					<div class="article-body">
						 <br>

<form>
	<table width="500" border="0" style="table-layout: fixed">
		<tr>
			<td width="100">선생님 이름</td>
			<td width="100">선생님 번호</td>
			<td width="120">선생님 폰번호</td>
			<td width="100">성별</td>
			<td width="100">나이</td>
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
		
		String sql = "SELECT * FROM TEACHER";

		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();
		while( rs.next() ) {
			String teacher_name = rs.getString("TEACHER_NAME");
			int teacher_number = rs.getInt("TEACHER_NUMBER");
			int teacher_ph = rs.getInt("TEACHER_PH");
			String teacher_gender = rs.getString("TEACHER_GENDER");
			int teacher_age = rs.getInt("TEACHER_AGE");
%>
		<tr>
			<td width="100"><%= teacher_name %></td>
			<td width="100"><%= teacher_number %></td>
			<td width="120"><%= teacher_ph %></td>
			<td width="100"><%= teacher_gender %></td>
			<td width="100"><%= teacher_age %></td>
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
	</div>
				</article>
			</section>
			
		</div>
		<footer id="main-footer">
			<br>
			<p>한빛유치원</p>
			<a href="#">031-0000-0000</a> <br>
		</footer>
	</div>
</body>
</html>