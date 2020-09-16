<%@page import="java.util.*" %>

<html>
<body>

<form action="toDoList.jsp">
Add new items: <input type="text" name="theItem">

<input type="submit" value="submit">
</form>
<br/>

The items entered : <%= request.getParameter("theItem") %>

<%

List<String> items = (List<String>) session.getAttribute("myToDoList");

	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList" ,items);
	}
	
	String theItem = request.getParameter("theItem");
	
	 boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
	boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
	
	if (isItemNotEmpty && isItemNotDuplicate) {
		
		items.add(theItem.trim());
		
		response.sendRedirect("toDoList.jsp");
	}// UPDATE: NEW CODE 
	
	
	
	 /* if((theItem != null) && (!theItem.trim().equals(""))){
		items.add(theItem);
		
	}  */
%>
<hr>

<b>To List items:</b><br/>

<ol>
<%
for(String temp : items){
	out.println("<li>"+temp+"</li>");
}
%>
</ol>

</body>
</html>