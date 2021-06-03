<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Create
										Account</h3>
								</div>
								<div class="card-body">
									<form action="${pageContext.request.contextPath}/dang-ky"
										method="post" commandName="customer">
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="Username">Username</label> <input
														class="form-control py-4" id="Username" type="text"
														name="userName" placeholder="Enter username" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="Password">Password</label> <input
														class="form-control py-4" id="Password" type="password"
														name="userPass" placeholder="Enter password" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputEmailAddress">Email</label>
											<input class="form-control py-4" id="inputEmailAddress"
												type="email" aria-describedby="emailHelp" name="email"
												placeholder="Enter email address" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="fullname">Full name</label> <input
												class="form-control py-4" id="fullname" type="text"
												name="name" placeholder="Enter your name" />
										</div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="gender">Gender</label>
													<div>
														<select style="height: 50px" class="form-control valid"
															id="gender" name="customer-gender" required
															aria-invalid="false">
															<option value="1">Nam</option>
															<option value="0">Nữ</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="phone">Phone number</label>
													<input class="form-control py-4" id="phone" type="text"
														name="phone" placeholder="Enter your phone" />
												</div>
											</div>
										</div>

										<div class="form-group">
											<label class="small mb-1" for="address">Address</label> <input
												class="form-control py-4" id="address" type="text"
												name="address" placeholder="Enter your address" />
										</div>
										<div class="form-group mt-4 mb-0">
											<button class="btn btn-primary btn-block" type="submit">Create
												Account</button>
										</div>

									</form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="<c:url value='/dang-nhap'/>">Have an account? Go
											to login</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2021</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>