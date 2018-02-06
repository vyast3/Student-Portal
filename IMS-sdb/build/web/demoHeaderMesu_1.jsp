 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Simple CSS Based Pulldowns</title>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
<style type="text/css">
<!--
/* set the menu style */
.menuHead { font-weight: bold; font-size: larger; background-color: #A9A9A9;}
.menuChoices { background-color: #DCDCDC; width: 200px;}
.menu a {color: #000000; text-decoration: none;}
.menu a:hover {text-decoration: underline;}
/* position your menus */
#menu1 {position: absolute; top: 10px; left: 10px; width: 200px;}
#menu2 {position: absolute; top: 10px; left: 210px; width: 200px;}
#menu3 {position: absolute; top: 10px; left: 410px; width: 200px;}
-->
</style>
<script type="text/javascript">
<!--
/* we'll only allow DOM browsers to simplify things*/
(document.getElementById ? DOMCapable = true : DOMCapable = false);
function hide(menuName)
{
if (DOMCapable)
{
var theMenu = document.getElementById(menuName+"choices");
theMenu.style.visibility = 'hidden';
}
}
function show(menuName)
{
if (DOMCapable)
{
var theMenu = document.getElementById(menuName+"choices");
theMenu.style.visibility = 'visible';
}
}
//-->
</script>
</head>
<body>
<div id="menu1" class="menu" onmouseover="show('menu1');"
onmouseout="hide('menu1');">
<div class="menuHead">Search Sites</div>
<div id="menu1choices" class="menuChoices">
<a href="http://www.google.com">Google</a><br />
<a href="http://www.yahoo.com">Yahoo</a><br />
<a href="http://www.teoma.com">Teoma</a><br />
<a href="http://www.msn.com">MSN</a><br />
<a href="http://www.dmoz.org">DMOZ</a><br />
</div>
</div>
<div id="menu2" class="menu" onmouseover="show('menu2');"
onmouseout="hide('menu2');">
<div class="menuHead">E-commerce Sites</div>
<div id="menu2choices" class="menuChoices">
<a href="http://www.google.com">Amazon</a><br />
<a href="http://www.ebay.com">Ebay</a><br />
<a href="http://www.buy.com">Buy.com</a><br />
</div>
</div>
<div id="menu3" class="menu" onmouseover="show('menu3');"
onmouseout="hide('menu3');">
<div class="menuHead">Book Releated Sites</div>
<div id="menu3choices" class="menuChoices">
<a href="http://www.javascript.com">JavaScriptRef</a><br />
<a href="http://www.w3c.org">W3C</a><br />
<a href="http://www.pint.com">PINT</a><br />
</div>
</div>
<script type="text/javascript">
<!--
/* Don't hide menus for JS off and older browsers */
if (DOMCapable)
{
hide("menu1");
hide("menu2");
hide("menu3");
}
//-->
</script>
</body>
</html>