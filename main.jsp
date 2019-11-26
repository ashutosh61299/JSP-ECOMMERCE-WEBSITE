<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {
	text-align: right;
}
#form1 {
	text-align: center;
}
.normal {
	text-align: left;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.unormal {
	font-family: Arial, Helvetica, sans-serif;
}
.center1 {	text-align: center;
}
</style>
</head>
<body background="backg.jpg">
<%@ page language="java" %>
<table width="993" height="330" border="0">
  <tr>
    <td width="205" height="89"><a href="main.jsp"><img src="head.png" width="251" height="88" alt="Logo" /></a>
    <hr /></td>
    <td width="772"><table width="723" height="88" border="0">
      <tr>
        <td width="713" class="right">Made With &hearts; in Sharda University  |<a href="main.jsp"> Home |</a> 
        <% if(session.getAttribute("uname")==null) {
			%>
            <a href="login.jsp">Login</a> | <a href="register.jsp">Signup</a>
            <%} else {
				%>Hi,<%=session.getAttribute("uname")%>&nbsp;
                <a href="logout.jsp">Logout</a> | <a href="myorders.jsp">My Orders</a>
                <%}%>
                </td>
      </tr>
      <tr>
        <td><form id="form1" name="form1" method="post" action="search.jsp">
          <input name="search" type="text" id="search" size="60" />
          <label>
            <input type="submit" name="submit" id="button" value="Search" />
          </label>
        </form></td>
      </tr>
    </table>
    <hr /></td>
  </tr>
  <tr>
    <td><table width="251" height="171" border="0">
      <tr>
        <td height="184"><table width="242" height="171" border="0">
          <tr>
            <td class="normal">MOBILE BRANDS</td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Samsung" /><input type="image" src="images/sam.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Nokia" /><input type="image" src="images/nok.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Sony" /><input type="image" src="images/son.png" /></form></td>
          </tr>
          <tr>
            <td height="22"><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Htc" /><input type="image" src="images/htc.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="LG" /><input type="image" src="images/lg.png" /></form></td>
          </tr>
        </table></td>
      </tr>
     <!--<tr>
        <td height="201"><table width="243" height="180" border="0">
          <tr>
            <td width="233" class="normal">MOBILE TYPES</td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="and" /><input type="image" src="images/and.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="sma" /><input type="image" src="images/sma.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="dua" /><input type="image" src="images/dua.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="val" /><input type="image" src="images/val.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="win" /><input type="image" src="images/win.png" /></form></td>
          </tr>
        </table></td>
      </tr>-->
    </table></td>
    <td><table width="725" height="684" border="0">
      <tr class="normal">
        <td height="30">NEW ARRIVALS</td>
      </tr>
      <tr>
        <td height="261"><table width="714" height="258" border="0">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
                <input type="hidden" name="product" value="h1"> 
                <input name="buy" type="image" value="grand" src="images/htc1.jpeg" width="114" height="165"> 
                </form></td>
              </tr>
            </table>
              <p class="center1">HTC One M9+</p>
              <p class="center1">Rs. 15,999</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="product.jsp"> 
                <input type="hidden" name="product" value="lg1">
                <input name="buy" type="image" value="s4" src="images/lg1.jpg" width="100" height="165"> 
                </form></td>
              </tr>
            </table></p>
              <p>LG V40 ThinQ</p>
              <p>Rs. 29,990</p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
                <input type="hidden" name="product" value="s1"> 
                <input name="buy" type="image" value="g pro" src="images/sam1.jpg" width="104" height="165"> 
                </form></td>
              </tr>
                </table>
                  <p class="center1">Samsung Galaxy M30</p>
                  <p class="center1">Rs. 12,999</p>
                </td>
              </tr>
            </table>
          </td>
          </tr>
      <tr class="normal">
        <td height="31">FEATURED MOBILES</td>
      </tr>
      <tr><!--from here-->
        <td height="261"><table width="714" height="258" border="0">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
                <input type="hidden" name="product" value="n1"> 
                <input name="buy" type="image" value="grand" src="images/nokia1.jpg" width="114" height="165"> 
                </form></td>
              </tr>
            </table>
              <p class="center1">Nokia 3310</p>
              <p class="center1">Rs. 3,249</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="product.jsp"> 
                <input type="hidden" name="product" value="h2">
                <input name="buy" type="image" value="s4" src="images/htc2.jpg" width="100" height="165"> 
                </form></td>
              </tr>
            </table></p>
              <p>HTC Desire 12+</p>
              <p>Rs. 19,900</p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
                <input type="hidden" name="product" value="s3"> 
                <input name="buy" type="image" value="g pro" src="images/sam3.jpg" width="104" height="165"> 
                </form></td>
              </tr>
                </table>
                  <p class="center1">Samsung Galaxy A70</p>
                  <p class="center1">Rs. 30,999</p>
                </td>
              </tr>
            </table>
          </td>
      <!--till here-->
      </tr>
      <tr class="normal">
        <td height="27">BESTSELLING MOBILES</td>
      </tr>
      <tr>
<td height="261"><table width="714" height="258" border="0">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
                <input type="hidden" name="product" value="n2"> 
                <input name="buy" type="image" value="grand" src="images/nokia2.jpg" width="114" height="165"> 
                </form></td>
              </tr>
            </table>
              <p class="center1">Nokia 6.1 Plus</p>
              <p class="center1">Rs. 9,999</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="product.jsp"> 
                <input type="hidden" name="product" value="s2">
                <input name="buy" type="image" value="s4" src="images/sam2.jpg" width="100" height="165"> 
                </form></td>
              </tr>
            </table></p>
              <p>Samsung Galaxy Note 10</p>
              <p>Rs. 69,999</p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
                <input type="hidden" name="product" value="so1"> 
                <input name="buy" type="image" value="g pro" src="images/sony1.jpg" width="104" height="165"> 
                </form></td>
              </tr>
                </table>
                  <p class="center1">Sony Xperia XA dual</p>
                  <p class="center1">Rs. 15,999</p>
                </td>
              </tr>
            </table>      </tr>
      <!--<tr class="normal">
        <td height="27">BUDGET MOBILES</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>-->
    </table></td>
  </tr>
</table>

</body>
</html>
