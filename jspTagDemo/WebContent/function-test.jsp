<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<body>
<c:set var="data" value="luv2code"/>

Length of the string of <b>${data}</b>: ${fn:length(data)}

<br>

the upper case of <b>${data}</b>: ${fn:toUpperCase(data)}

<br>

<h3>Join-split demo</h3>

<c:set var="func" value="JHB,Cape Town, North West, Easten Cape" />

<c:set var="cities" value="${fn:split(func, ',') }" />

<c:forEach var="theCities" items="${cities}">

${theCities }<br>

</c:forEach>

</body>
</html>