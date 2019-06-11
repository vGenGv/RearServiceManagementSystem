<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ZH-cn">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/open-iconic-bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<title>Hello World</title>
</head>
<body>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal">登录</button>

	<!-- Login modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">

				<!-- Modal header -->
				<div class="modal-header">
					<h3 class="modal-title center-block" id="loginModalTitle">登录</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- Modal header -->

				<!-- Modal body -->
				<div class="modal-body">
					<form class="needs-validation" novalidate>
						<!-- Username -->
						<div class="form-group row justify-content-center">
							<label for="loginInputUsername" class="col-sm-3 col-form-label">用户名</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="loginInputUsername" placeholder="Username" required>
								<div class="invalid-feedback">请输入用户名</div>
							</div>
						</div>

						<!-- Password -->
						<div class="form-group row justify-content-center">
							<label for="loginInputPassword" class="col-sm-3 col-form-label">密码</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="loginInputPassword" placeholder="Password" required>
								<div class="invalid-feedback">请输入密码</div>
							</div>
						</div>

						<!-- Login radio -->
						<div class="form-group row justify-content-center">
							<label class="col-form-label col-sm-3 pt-0">登录方式</label>
							<div class="col-sm-7">
								<div class="custom-control custom-radio">
									<input class="custom-control-input" type="radio" name="loginRadios" id="loginRadio1" value="student_option" required>
									<label class="custom-control-label" for="loginRadio1"> 学生登录 </label>
								</div>
								<div class="custom-control custom-radio">
									<input class="custom-control-input" type="radio" name="loginRadios" id="loginRadio2" value="worker_option" required>
									<label class="custom-control-label" for="loginRadio2"> 工人登录 </label>
								</div>
								<div class="custom-control custom-radio">
									<input class="custom-control-input" type="radio" name="loginRadios" id="loginRadio3" value="admin_option" required>
									<label class="custom-control-label" for="loginRadio3"> 管理登录 </label>
									<div class="invalid-feedback">请选择登录方式</div>
								</div>
							</div>
						</div>

						<!-- Button -->
						<div class="form-group row justify-content-center">
							<div class="col-auto">
								<button type="submit" class="btn btn-success">登录</button>
							</div>
						</div>
					</form>
				</div>
				<!-- Modal body -->

			</div>
		</div>
	</div>

	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/tooltip.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>
</body>
</html>