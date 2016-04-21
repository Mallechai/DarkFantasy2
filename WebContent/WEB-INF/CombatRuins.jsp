<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="turnbasedcombat.* "%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/style.css" />" rel="stylesheet"  type="text/css" />
<title>Combat in the Ruins</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="http://code.jquery.com/ui/resources/demos/style.css">
   
  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
</head>
<body>

<menu>
Menu:
<menubutton>Charactersheet</menubutton>
Inventory
Map
</menu>

<txtoutput>
Here goes the flavour text: <%= TempMain.main()%>
</txtoutput>

<section>

<input type = "button" value = "Bloody murder" id="murder_btn">
<p style="display:hidden">Antwoord: <span id="antwoord"></span></p>

</section>



<div id="accordion">
  <h3>Attack</h3>
  <div>
    <p>
    <button>Stab</button>
    <button>Slash</button>
    <a href="/DarkFantasy2/map">Bash</a>
    <ab1>ownage</ab1>
    </p>
  </div>
  <h3>Defend</h3>
  <div>
    <p>
    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
    suscipit faucibus urna.
    </p>
  </div>
  <h3>Magic</h3>
  <div>
    <p>
    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
    </p>
    <ul>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ul>
  </div>
  <h3>Items</h3>
  <div>
    <p>
    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
    mauris vel est.
    </p>
    <p>
    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
    inceptos himenaeos.
    </p>
  </div>
</div>

<script>

var root_url = '<c:url value="/" />';


function BloodyMurder(){
	var url = root_url + "BloodyMurder";
	$.get(url, function(){
	console.log("testline");
	$('antwoord').text("testline2").show();})
}

$(document).ready(function(){
	$('#murder_btn').click(BloodyMurder);
});

</script>

</body>
</html>