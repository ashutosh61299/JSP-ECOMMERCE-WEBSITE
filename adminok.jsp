<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body background="backg.jpg">

<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager.*" %>



<% String path=application.getRealPath("images");
MultipartRequest mpr=new MultipartRequest(request,path,500*1024*1024);
%>
<% String img=mpr.getFilesystemName("image");%><!--sahi h-->
<br>
<br>
<% String imgsrc="images/"+img;
	String id=mpr.getParameter("prod_id");
	String mname=mpr.getParameter("model_name");
	String brand=mpr.getParameter("brand");
	String price=mpr.getParameter("price1");
	String form=mpr.getParameter("form");
	String sim=mpr.getParameter("sim_type");
	String touch=mpr.getParameter("touchscreen");
	String keypad=mpr.getParameter("keypad");
	String pack=mpr.getParameter("sales_package");
	String os=mpr.getParameter("os");
	String java=mpr.getParameter("java");
	String processor=mpr.getParameter("processor");
	String dtype=mpr.getParameter("display_type");
	String dsize=mpr.getParameter("display_size");
	String resolution=mpr.getParameter("resolution");
	String color=mpr.getParameter("colors");
	String pcam=mpr.getParameter("primary_cam");
	String scam=mpr.getParameter("secondary_cam");
	String flash=mpr.getParameter("flash");
	String video=mpr.getParameter("video");
	String ocam=mpr.getParameter("other_cam");
	String dimsize=mpr.getParameter("dimension_size");
	String weight=mpr.getParameter("weight");
	String battype=mpr.getParameter("battery_type");
	String batcap=mpr.getParameter("battery_capacity");
	String internal=mpr.getParameter("internal");
	String ram=mpr.getParameter("ram");
	String expandable=mpr.getParameter("expandable");
	String gprs=mpr.getParameter("gprs");
	String g3=mpr.getParameter("g3");
	String g4=mpr.getParameter("g4");
	String wifi=mpr.getParameter("wifi");
	String usb=mpr.getParameter("usb");
	String tether=mpr.getParameter("tethering");
	String nav=mpr.getParameter("navigation");
	String blue=mpr.getParameter("bluetooth");
	String audio=mpr.getParameter("audiojack");
	String dlna=mpr.getParameter("dlna");
	String mplayer=mpr.getParameter("music_player");
	String vplayer=mpr.getParameter("video_player");
	String fm=mpr.getParameter("fm");
	String sar=mpr.getParameter("sar");
	String sens=mpr.getParameter("sensors");
	String add=mpr.getParameter("add_f");
PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
        String sql;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ashutosh","ashu");
      
         Statement st=conn.createStatement();
         //st.executeUpdate("insert into mtable values('"+id+"','"+mname+"','"+brand+"')");
         //st.executeUpdate("insert into pics values('"+id+"','"+imgsrc+"')");
         sql="insert into mtable values(?,?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,mname);
         ps.setString(3,brand);
         ps.setString(4,price);
         ps.executeUpdate();
         //
         sql="insert into pics values(?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,imgsrc);
         ps.executeUpdate();
         //
         sql="insert into gnrl_specs values(?,?,?,?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,form);
         ps.setString(3,sim);
         ps.setString(4,touch);
         ps.setString(5,keypad);
         ps.setString(6,pack);
         ps.executeUpdate();
         //
         sql="insert into platform values(?,?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,os);
         ps.setString(3,java);
         ps.setString(4,processor);
         ps.executeUpdate();
         //
         sql="insert into display values(?,?,?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,dtype);
         ps.setString(3,dsize);
         ps.setString(4,resolution);
         ps.setString(5,color);
         ps.executeUpdate();
         //
         sql="insert into camera values(?,?,?,?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,pcam);
         ps.setString(3,scam);
         ps.setString(4,flash);
         ps.setString(5,video);
         ps.setString(6,ocam);
         ps.executeUpdate();
         //
         sql="insert into dimension values(?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,dimsize);
         ps.setString(3,weight);
         ps.executeUpdate();
         //
         sql="insert into battery values(?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,battype);
         ps.setString(3,batcap);
         ps.executeUpdate();

         //
         sql="insert into memory values(?,?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,internal);
         ps.setString(3,ram);
         ps.setString(4,expandable);
         ps.executeUpdate();
         //
         sql="insert into netnconn values(?,?,?,?,?,?,?,?,?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,gprs);
         ps.setString(3,g3);
         ps.setString(4,g4);
         ps.setString(5,wifi);
         ps.setString(6,usb);
         ps.setString(7,tether);
         ps.setString(8,nav);
         ps.setString(9,blue);
         ps.setString(10,audio);
         ps.setString(11,dlna);
         ps.executeUpdate();
         //
         sql="insert into multimedia values(?,?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,mplayer);
         ps.setString(3,vplayer);
         ps.setString(4,fm);
         ps.executeUpdate();
         //
         sql="insert into others values(?,?,?,?)";
         ps = conn.prepareStatement (sql);
         ps.setString(1,id);
         ps.setString(2,sar);
         ps.setString(3,sens);
         ps.setString(4,add);
         ps.executeUpdate();



%>
 <script type="text/javascript">
function Redirect()
{
    window.location="admin.jsp";
}
document.write("SUCESSFULLY INSERTED!!You will be redirected to admin page in a few sec.");
setTimeout('Redirect()', 5000);
</script>


</body>
</html>