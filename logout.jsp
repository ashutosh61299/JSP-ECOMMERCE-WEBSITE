<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body background="backg.jpg">
<%@ page language="java" %>
<table width="993" height="102" border="0">
  <tr>
    <td width="251" height="96"><img src="head.png" width="251" height="88" alt="Logo" /></td>
    <td width="726" class="right">Made With &hearts; in Sharda University | <a href="main.jsp">Home</a> |
      <% if(session.getAttribute("uname")==null) {
			%>
      <a href="login.jsp">Login</a>
      <%} else {
				%>
      <a href="logout.jsp">Logout</a>
      <%}%></td>
  </tr>
</table>
<hr />
<% if(session.getAttribute("uname")!=null) {
	session.invalidate();
	out.println("Successfully Logged out.");
	%>
    <script type="text/javascript">
function Redirect()
{
    window.location="main.jsp";
}
document.write("You will be redirected to main page in a few sec.");
setTimeout('Redirect()', 5000);
</script>
<%
}
else
{%>
You're already Logged out. 
Click <a href="main.jsp">here</a> to go to the home page.
<%}%>
</body>
</html>