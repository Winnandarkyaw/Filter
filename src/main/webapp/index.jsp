<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter Demo</title>
<style>
body {
	padding: 2rem;
}

.card {
	padding: 1rem;
	font-size: 1.4rem;
	background-color: silver;
	box-shadow: 1px 1px 2px gray;
	border-radius: 0.4rem;
}

.actions {
	padding: 0 0 2rem 0;
}

.demo {
	display: flex;
}

.demo form {
	width: 360px;
	margin-right: 1rem;
}

form div {
	display: flex;
	flex-direction: column;
}

form label {
	margin-bottom: 0.2rem;
}

input .select {
	padding: 1rem;
}

input, select, button {
	padding: 0.4rem;
	border: 1px solid gray;
	border-radius: 0.4rem;
	outline: none;
}

button {
	margin-top: 2rem;
	color: black;
	background-color: transparent;
	color: black;
}

button:hover {
	background-color: red;
	color: white;
}
</style>
</head>
<body>
	<h1>Hello Filter</h1>
	<div class="actions">
		<a href="hello">Hello Servlet</a>
	</div>
	<%
	if (request.getAttribute("message") != null) {
	%>
	<div class="card">
		<%=request.getAttribute("message")%>
	</div>
	<%
	}
	%>
	<h3>Using Filter</h3>
	<div class="demo">
		<%
		String loginUrl = getServletContext().getContextPath().concat("/login");
		%>

		<form method="post" class="card" action=<%=loginUrl%>>
			<h3>Employee Login</h3>
			<input type="hidden" name="home" value="employee" />
			<div>
				<label for="">Name</label> <input type="text" name="name"
					placeholder="Enter Name" />
			</div>
			<div>
				<label for="">Role</label> <select name="role" id="">
					<option value="">Select One</option>
					<option value="Employee">Employee</option>
					<option value="Manager">Manager</option>
				</select>
			</div>
			<div>
				<button type="submit">Login</button>
			</div>
		</form>
		<form method="post" class="card" action=<%=loginUrl%>>
			<h3>Manager Login</h3>
			<input type="hidden" name="home" value="manager" />
			<div>
				<label for="">Name</label> <input type="text" name="name"
					placeholder="Enter Name" />
			</div>
			<div>
				<label for="">Role</label> <select name="role" id="">
					<option value="">Select One</option>
					<option value="Employee">Employee</option>
					<option value="Manager">Manager</option>
				</select>
			</div>
			<div>
				<button type="submit">Login</button>
			</div>
		</form>
	</div>
</body>
</html>