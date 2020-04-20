<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
	<head>
		<title>Save Customer</title>
		
		<!-- Referenciar la plantilla de estilos -->
		<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css" />
		
		<!-- Referenciar la plantilla de estilos -->
		<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css" />
		
		<!-- Referenciar la plantilla de estilos -->
		<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
		
		<script src="${pageContext.request.contextPath}/resources/js/validation.js"></script>
		
		<script type="text/javascript">
			var urlAsynchronousHTTP='${pageContext.request.contextPath}/src';
		</script>
		
		
	</head>
	
	<body>
		
		<div id="wrapper">
			<div id="header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
		</div>
		
		<div id="container">
			<h3>Save Customer</h3>
			
			<form:form id="saveCustomer" modelAttribute="customer" method="POST">
				<!-- asosiar los datos con el id del cliente -->
				<form:hidden path="id"/>
				
				<table>
					<tbody>
						<tr>
							<td><label>First Name:</label></td>
							<td><form:input path="firstName" id="firstName"/></td>
						</tr>
						
						<tr>
							<td><label>Last Name:</label></td>
							<td><form:input path="lastName" id="lastName"/></td>
						</tr>
						
						<tr>
							<td><label>Email:</label></td>
							<td><form:input path="email" type="email" id="mail"/></td>
						</tr>
						
						<tr>
							<td><label></label></td>
							<td><input type="submit" value="Save" class="save" id="submit" 
							onclick="mostrarMensaje()" ></td>
						</tr>
					</tbody>
				</table>
				
			</form:form>
			
			<div style="clear; both;"></div>
			<p>
				<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
			</p>
			
		</div>
		
	</body>
	
</html>









