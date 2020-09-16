<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="theLocale"
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale }"
scope="session" />

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="com.TagDemo.i18N.resources.myLabels" />
<html>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
|
<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
|
<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>
|
<hr>
<br/>

<fmt:message key="label.greeting" /> <br/>

<fmt:message key="label.firstname" /> <i>Lwandile</i><br/>

<fmt:message key="label.lastname" /> <i>Mkwanazi</i><br/>
<br/>
<fmt:message key="label.welcome" /> <br/><br/>

Selected language is : ${theLocale}
</body>
</html>
