<html>
<head>
<title>training Course</title>
</head>

<body>
<%
String favLang = "java";

Cookie[] theCookies = request.getCookies();

if(theCookies != null){
	for(Cookie tempCookies : theCookies){
		if("myApp.favoriteLang".equals(tempCookies.getName())){
			favLang = tempCookies.getValue();
			break;
		}
	}
}
%>

<h3>the latest books for <%= favLang %></h3>

<ul>
<li>man in the space</li>
<li> ThinkCode</li>
</ul>

<h3>the latest news for <%= favLang %></h3>

<ul>
<li>the new version will be released soon</li>
<li> <%= favLang %> is now free open source</li>
</ul>
<br/>
<a href="cookies-personalize-form.html">Personalize this page again?</a>
</body>
</html>