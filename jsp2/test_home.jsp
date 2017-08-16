<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

	<title>유치원</title>
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

</body>
</html>