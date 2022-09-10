<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Home</title>
<style>
body {
	min-height: 100vh;
	display: flex;
	flex-direction: column;
	align-context: center;
	align-items: center;
}

p {
	height: 100px;
}
</style>
</head>
<body>
	<h1>Employee Home</h1>
	<p><%=session.getAttribute("user")%>:<%=session.getAttribute("role")%></p>
	<div>
		<%
		String home = getServletContext().getContextPath().concat("/logout");
		%>
		<a href="<%=home%>">Back</a>
	</div>
</body>
</html>