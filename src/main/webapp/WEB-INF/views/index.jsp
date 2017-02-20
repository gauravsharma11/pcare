<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>

<html>
<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-reboot.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-grid.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/HomePage.css"/>">

	<script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</head>
<body>
	<c:url var="signUpAction" value="/patients"></c:url>
	<form:form action="${signUpAction}" modelAttribute="patient" method="POST">
		<div class="container">
			<form class="form-horizontal" role="form">
				<h2>Registration Form</h2>
				<div class="form-group">
					<label for="firstName" class="col-sm-3 control-label">Full
						Name</label>
					<div class="col-sm-9">
						<input type="text" id="firstName" name="name"
							placeholder="Full Name" class="form-control" autofocus> <span
							class="help-block">Last Name, First Name, eg.: Smith,
							Harry</span>
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">Email</label>
					<div class="col-sm-9">
						<input type="email" id="email" name="emailId" placeholder="Email"
							class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-3 control-label">Password</label>
					<div class="col-sm-9">
						<input type="password" id="password" placeholder="Password"
							class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="birthDate" class="col-sm-3 control-label">Date
						of Birth</label>
					<div class="col-sm-9">
						<input type="date" id="birthDate" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="country" class="col-sm-3 control-label">Country</label>
					<div class="col-sm-9">
						<select id="country" class="form-control">
							<option>Afghanistan</option>
							<option>Bahamas</option>
							<option>Cambodia</option>
							<option>Denmark</option>
							<option>Ecuador</option>
							<option>Fiji</option>
							<option>Gabon</option>
							<option>Haiti</option>
						</select>
					</div>
				</div>
				<!-- /.form-group -->
				<div class="form-group">
					<label class="control-label col-sm-3">Gender</label>
					<div class="col-sm-6">
						<div class="row">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									id="femaleRadio" value="Female">Female
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									id="maleRadio" value="Male">Male
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									id="uncknownRadio" value="Unknown">Unknown
								</label>
							</div>
						</div>
					</div>
				</div>
				<!-- /.form-group -->
				<div class="form-group">
					<label class="control-label col-sm-3">Meal Preference</label>
					<div class="col-sm-9">
						<div class="checkbox">
							<label> <input type="checkbox" id="calorieCheckbox"
								value="Low calorie">Low calorie
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" id="saltCheckbox"
								value="Low salt">Low salt
							</label>
						</div>
					</div>
				</div>
				<!-- /.form-group -->
				<div class="form-group">
					<div class="col-sm-9 col-sm-offset-3">
						<div class="checkbox">
							<label> <input type="checkbox">I accept <a
								href="#">terms</a>
							</label>
						</div>
					</div>
				</div>
				<!-- /.form-group -->
				<div class="form-group">
					<div class="col-sm-9 col-sm-offset-3">
						<input type="submit" class="btn btn-primary btn-block"
							value="Register" />
					</div>
				</div>
			</form>
			<!-- /form -->
		</div>
		<!-- ./container -->
	</form:form>
</body>

</html>
