<!DOCTYPE html>
<html>
<head>
	<title>My Orders</title>
</head>
<body background="backg.jpg">
	<%@ page language="java" %>
    <%@ page import="java.sql.*" %>
     <%@ page import="java.util.*" %>
         <%@ page import="java.sql.DriverManager.*" %>

<table width="977" height="102" border="0">
  <tr>
    <td width="251" height="96"><img src="head.png" width="251" height="88" alt="Logo" /></td>
    <td width="726" class="right" align="right">Made With &hearts; in Sharda University | <a href="main.jsp">Home</a> |
      <% if(session.getAttribute("uname")==null) {
			%>
      <a href="login.jsp">Login</a>
      <%} else {
				%>Hi,<%=session.getAttribute("uname")%>&nbsp;
      <a href="logout.jsp">Logout</a>
      <%}%></td>
  </tr>
</table>
<hr />

<%
if(session.getAttribute("uname")==null){%>
	<script type="text/javascript">
function Redirect()
{
    window.location="main.jsp";
}
document.write("INVALID ACCESS!!!You will be redirected to main page in a few sec.");
setTimeout('Redirect()', 5000);
</script>
<%
}else{%>
	<%
	String id=(String)session.getAttribute("id");
	String sql="select * from "+id+" order by o_id desc";
	 PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ashutosh","ashu");
      
         Statement st=conn.createStatement(); 
		 ps = conn.prepareStatement (sql,ResultSet.TYPE_SCROLL_INSENSITIVE,
      ResultSet.CONCUR_UPDATABLE);
	 rs = ps.executeQuery ();
    
	 if(!rs.next()){%>
	 <h3>OOPS!! nothing ordered till now!!!</h3>
	<%}else{%>
		<table border="1" cellspacing="0">
		<tr>
    		<td width="66" align="center"><strong>ORDER ID</strong></td>
    		<td width="400" align="center"><strong>Product Name</strong></td>
    	</tr><%
		rs.previous();

	 while(rs.next())
	 {

	 	%>
	 	<tr>
    		<td height="75" align="center">#ASKRT-2019<%=rs.getString(1)%></td>
    		<td align="center"><%=rs.getString(2)%></td>
    	</tr>
<%


	 }



%>
</table>
<%}}


%>
</body>
</html>