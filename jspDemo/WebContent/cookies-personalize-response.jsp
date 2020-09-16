<html>
<head>
<title>Personalize </title>
</head>



<%
 String favLang = request.getParameter("favoriteLanguage");

Cookie theCookie = new Cookie("myApp.favoriteLang", favLang);

theCookie.setMaxAge(60*60*24*365);

response.addCookie(theCookie);
%>
<body>
Thanks we set you favorite language to : ${param.favoriteLanguage }

<br/><br/>

<a href="cookies-home-page.jsp">Return to home page</a> 
</body>
</html>