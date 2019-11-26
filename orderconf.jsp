<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {	text-align: right;
}
</style>
</head>

<body background="backg.jpg">
<%@ page language="java" %>
    <%@ page import="java.sql.*" %>
     <%@ page import="java.util.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<table width="993" height="102" border="0">
  <tr>
    <td width="251" height="96"><img src="head.png" width="251" height="88" alt="Logo" /></td>
    <td width="726" class="right">Made With &hearts; in Sharda University | <a href="main.jsp">Home</a> |
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
<%!
String pn;
String n1;
%>
<% 
       PreparedStatement ps,ps1;
        Connection conn;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ashutosh","ashu");
      
         Statement st=conn.createStatement();
		 String sql = "SELECT * from mtable where prod_id=?"; 
		 ps = conn.prepareStatement (sql);
		 ps.setString(1,(String)session.getAttribute("product"));
	 rs = ps.executeQuery ();
    

	 while(rs.next())
	 {
    if(session.getAttribute("id")!=null){
    String sql1="insert into "+(String)session.getAttribute("id")+" values(seq_order.nextval,'"+rs.getString(2)+"')";
    ps1 = conn.prepareStatement (sql1,new String[] { "o_id" });
    Long oid1=null;
    if (ps1.executeUpdate() > 0) {
    System.out.println("check1");

// getGeneratedKeys() returns result set of keys that were auto
// generated
// in our case student_id column

    ResultSet generatedKeys = ps1.getGeneratedKeys();
    System.out.println("check2");
// if resultset has data, get the primary key value
// of last inserted record
    if (null != generatedKeys && generatedKeys.next()) {
    System.out.println("check3");
// voila! we got student id which was generated from sequence
      oid1 = generatedKeys.getLong(1);
      System.out.println("check4");
      String orderid=oid1+"";
      session.setAttribute("oid","#ASKRT-2019"+orderid);
      System.out.println("check5");
}

}


  }else{
  System.out.println("check6");
    String orderid=(String)request.getParameter("phone");
    int ii=(int)(Math.random()*((1000-1)+1))+1;
    String foid="#ASKRT-2019"+orderid+"-"+ii;
    session.setAttribute("oid",foid);

}

%>
<p> Order Confirmed: order id= <%=(String)session.getAttribute("oid")%></p>
<table width="992" border="1" cellspacing="0">
  <tr>
    <td width="66" align="center"><strong>Item ID</strong></td>
    <td width="354" align="center"><strong>Product Name &amp; Model</strong></td>
    <td width="153" align="center"><strong>Brand</strong></td>
    <td width="148" align="center"><strong>Shipping Charges</strong></td>
    <td width="237" align="center"><strong>Total Cost</strong></td>
  </tr>
  <tr>
    <td height="75" align="center"><%=rs.getString(1)%></td>
    <td align="center"><%=rs.getString(2)%></td>
    <td align="center"><%=rs.getString(3)%></td>
    <td align="center">Rs. 0</td>
    <td align="center">Rs. <%=rs.getString(4)%></td>
  </tr>
</table>
<%
}

%>
<p> Thanks for shopping with us. Your item will be delivered within 2-3 days.</p>
<p><strong> Happy Shopping! </strong></p>
</body>
</html>