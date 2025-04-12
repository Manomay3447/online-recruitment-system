<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>JobPortal</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="blurBg-false" style="background-color:#ffffff">



<!-- Start Formoid form-->
<link rel="stylesheet" href="mail_files/formoid1/formoid-solid-light-green.css" type="text/css" />
<script type="text/javascript" src="mail_files/formoid1/jquery.min.js"></script>
<form enctype="multipart/form-data" class="formoid-solid-light-green" style="background-color:#1A2223;font-size:17px;font-family:'Palatino Linotype','Book Antiqua',Palatino,serif;color:#34495E;max-width:500px;min-width:150px" action="cdismailres.jsp" method="post"><div class="title"><h2>Mail to</h2></div>
	<div class="element-input"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" name="input" required="required" placeholder="TO"/><span class="icon-place"></span></div></div>
	<div class="element-textarea"><label class="title"></label><div class="item-cont"><textarea class="medium" name="textarea" cols="20" rows="5" placeholder="Text Area"></textarea><span class="icon-place"></span></div></div>
	<div class="element-separator"><hr><h3 class="section-break-title">Upload your Resume</h3></div>
	<div class="element-file"><label class="title"><span class="required">*</span></label><div class="item-cont"><label class="large" ><div class="button">CHOOSE FILE</div><input type="file" class="file_input" name="file" required="required"/><div class="file_text">No file selected</div><span class="icon-place"></span></label></div></div>
<div class="submit"><input type="submit" value="Send"/></div></form><p class="frmd"><a href="http://formoid.com/v29.php">html forms</a> Formoid.com 2.9</p><script type="text/javascript" src="mail_files/formoid1/formoid-solid-light-green.js"></script>
<!-- Stop Formoid form-->



</body>
</html>
