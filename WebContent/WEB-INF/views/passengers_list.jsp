
<%@ page import="java.util.*, com.airline.models.*" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/jpaStyles.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Passengers List</title>
</head>
<body>
		<h1>List of Passengers</h1>
		
		<table>
		<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Date of Birth</th>
		<th>Gender</th>
		
		
		
		</tr>
		<%
		List<Passenger> pList = (List<Passenger>) request.getAttribute("passengers_list");
		
		for(Integer i=0; i < pList.size(); i++) {
			
		
			
		
		 %>
		 <tr>
		 <td><%= pList.get(i).getFirstName() %></td>
		 <td> <%= pList.get(i).getLastName() %></td>
		 <td> <%= pList.get(i).getDob() %></td>
		 <td> <%= pList.get(i).getGender() %></td>
		 
		 
		 </tr>
		 
		 <tr>
		 
		 <td colspan="4">No Flight Tickets Yet.</td>
		 </tr>
		 
		<%
			}
		 %>
		
		
		</table>


</body>
</html>