<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>P-Care|Doctor Registration</title>
</head>
<body>


				<c:url var="addAction" value="/authenticateUser" ></c:url>
					<form:form action="${addAction}" commandName = "login" method="POST" name="Login_Form" class="form-signinLI">
					  
					  	<input type="text" class="form-control customFont" style="margin-bottom: 10px;" name="emailId" placeholder="Username" required="" autofocus="" />
					  	<input type="text" class="form-control customFont" name="password" placeholder="Password" required=""/>     		  
					  	<input type="submit" class="btn btn-lg btn-primary btn-block customFont" style="margin-bottom: 20px;"  name="submit" value="Login"/> 
					  
			   		</form:form>		


</body>
</html>