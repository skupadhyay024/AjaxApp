<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function displayCities(str) {
		var xmlHttp = null;
		if (window.XMLHttpRequest) {
			xmlHttp = new XMLHttpRequest();

		} else if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("MicroSoft.XMLHTTP");

		}
		var url = "/AjaxApp/MyState?state=" + str;
		xmlHttp.open("GET", url, true);
		xmlHttp.send();

		xmlHttp.onreadystatechange = function() {
			if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
				var res = xmlHttp.responseText;
				
				var data = res.split("-");
				var txt = "";
				for ( var i = 0; i < data.length; ++i) {
					txt += data[i] + "<br/>";
				}
				
				document.getElementById("div1").innerHTML = txt;

			}
		};

	}
</script>
</head>
<body>
	<select id="state" onchange="displayCities(this.value);">
		<option value="UttarPradesh">UttarPradesh</option>
		<option value="Karnataka">Karnataka</option>



	</select>
	<div id="div1"
		style="height: 100px; width: 100px; background-color: #708090"></div>
</body>
</html>