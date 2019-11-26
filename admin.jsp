<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body background="backg.jpg">
<%
if(session.getAttribute("adminname")!=null){


%>
<center><h1>PRODUCT ENTRY</h1></center>>
<form method="POST" action="adminok.jsp" enctype="multipart/form-data">
	<h3>Brand Information</h3><br>
	Product id:
	<input type="text" name="prod_id"><br />
	Model_name:
	<input type="text" name="model_name"><br />
	Brand:
	<select size="1" name="brand">
		<option value="Samsung">Samsung</option>
		<option value="Nokia">Nokia</option>
		<option value="Sony">Sony</option>
		<option value="Htc">Htc</option>
		<option value="LG">LG</option>
	</select><br>
	Price:
	<input type="text" name="price1"><br>
	<hr>
	<h3>GENERAL SPECIFICATIONS</h3><br>
	Form/Type:
	<input type="text" name="form"><br />
	Sim Type:
	<select size="1" name="sim_type">
		<option value="single sim">single sim/hybrid sim</option>
		<option value="dual sim">dual</option>
	</select><br />
	TouchScreen:
	<select size="1" name="touchscreen">
		<option value="yes">YES</option>
		<option value="No">No</option>
	</select><br />
	Keypad:
	<select size="1" name="keypad">
		<option value="yes">YES</option>
		<option value="no">NO</option>
	</select><br />
	Sales Package:
	<input type="text" name="sales_package"><br />
	<hr>
	<h3>PLATFORM</h3><br>
	Os:
	<input type="text" name="os"><br />
	Java:
	<input type="text" name="java"><br />
	Processor:
	<input type="text" name="processor"><br />
	<hr>
	<h3>DISPLAY</h3><br>
	Display type:
	<input type="text" name="display_type"><br />
	Display Size:
	<input type="text" name="display_size"><br />
	Resolution:
	<input type="text" name="resolution"><br />
	Colors:
	<input type="text" name="colors"><br />
	<hr>
	<h3>CAMERA</h3>
	<br>
	Camera-primary:
	<input type="text" name="primary_cam"><br />
	Camera-Secondary:
	<input type="text" name="secondary_cam"><br />
	flash:
	<input type="text" name="flash"><br />
	Video Recording:
	<input type="text" name="video"><br />
	Other Camera features:
	<input type="text" name="other_cam"><br />
	<hr>
	<h3>DIMENSIONS</h3><br>
	Dimension size:
	<input type="text" name="dimension_size"><br />
	Weight:
	<input type="text" name="weight"><br />
	<hr>
	<h3>BATTERY</h3>
	<br>
	Type:
	<input type="text" name="battery_type"><br />
	Capacity:
	<input type="text" name="battery_capacity"><br />
	<hr>
	<h3>MEMORY</h3><br>
	Internal:
	<input type="text" name="internal"><br />
	RAM:
	<input type="text" name="Ram"><br />
	Expandable:
	<input type="text" name="expandable"><br />
	<hr>
	<h3>NET CONNECTIVITY</h3>
	<br>
	GPRS:
	<input type="text" name="gprs"><br />
	3G:
	<input type="text" name="g3"><br />
	4G:
	<input type="text" name="g4"><br />
	WiFi:
	<input type="text" name="wifi"><br />
	Usb:
	<input type="text" name="usb"><br />
	Tethering:
	<input type="text" name="tethering"><br />
	Navigation:
	<input type="text" name="navigation"><br />
	Bluetooth:
	<input type="text" name="bluetooth"><br />
	AudioJack:
	<input type="text" name="audiojack"><br />
	DLNA:
	<input type="text" name="dlna"><br />
	<hr>
	<h3>MULTIMEDIA</h3>
	<br>
	Music palyer:
	<input type="text" name="music_player"><br />
	Video Player:
	<input type="text" name="video_player"><br />
	FM:
	<input type="text" name="fm"><br />
	<hr>
	<h3>OTHERS</h3>
	<br>
	SAR Value:
	<input type="text" name="sar"><br />
	Sensors:
	<input type="text" name="sensors"><br />
	Additional Features:
	<input type="text" name="add_f"><br />
	pic:
	<input type="file" name="image">
	<br>
	<br>
	<input type="submit" name="SUBMIT">&nbsp;&nbsp;<input type="reset" name="RESET">


</form>
<%
}else{

%>
<%="INVALID AUTHENTICATION!!! go to login page"%>
<a href="./adminlogin.jsp">here</a>>
<%}%>
</body>
</html>