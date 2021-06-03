<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
>
<body>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link"
							href="${pageContext.request.contextPath}/manage/product/listPro">
							<div class="sb-nav-link-icon">
								<i class="fab fa-product-hunt" aria-hidden="true"></i>
							</div> Products
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/manage/company/listCompany">
							<div class="sb-nav-link-icon">
								<i class="fa fa-building" aria-hidden="true"></i>
							</div> Company
						</a><a class="nav-link"
							href="${pageContext.request.contextPath}/manage/category/listCategory">
							<div class="sb-nav-link-icon">
								<i class="fa fa-list-alt" aria-hidden="true"></i>
							</div> Category
						</a><a class="nav-link"
							href="${pageContext.request.contextPath}/manage/customer/listCus">
							<div class="sb-nav-link-icon">
								<i class="fa fa-users" aria-hidden="true"></i>
							</div> Customers
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/manage/employee/listEmp">
							<div class="sb-nav-link-icon">
								<i class="fa fa-users" aria-hidden="true"></i>
							</div> Employee
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/manage/order/listOrder">
							<div class="sb-nav-link-icon">
								<i class="fa fa-shopping-bag" aria-hidden="true"></i>
							</div> Orders
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row mt-3">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-body">
										<div class="card-title">Add Employee</div>
										<hr>
										<form method="post"
											action="${pageContext.request.contextPath}/manage/employee/addEmp"
											commandName="employee">

											<div class="form-group">
												<label for="input-1">Họ tên</label> <input type="text"
													class="form-control" id="input-2" placeholder="Nhập họ tên"
													name="name">
											</div>
											<div class="form-group">
												<label for="input-2">Email</label> <input type="text"
													class="form-control" id="input-3"
													placeholder="Nhập địa chỉ Email" name="email">
											</div>
											<div class="form-group">
												<label for="input-3">Số Điện Thoại</label> <input
													type="text" class="form-control" id="input-4"
													placeholder="Nhập số điện thoại" name="phone">
											</div>
											<div class="form-group">
												<label for="input-3">Addess</label> <input type="text"
													class="form-control" id="input-4"
													placeholder="Nhập địa chỉ" name="address">
											</div>
											<div class="form-group">
												<label for="input-3">Salary</label> <input type="text"
													class="form-control" id="input-4"
													placeholder="Nhập tiền lương" name="salary">
											</div>
											<div class="form-group">
												<label for="input-3">Gender</label>
												<div>
													<select class="form-control valid" id="input-6"
														name="employee-gender" required aria-invalid="false">
														<option value="1">Nam</option>
														<option value="0">Nữ</option>
													</select>
												</div>
												<div class="form-group">
													<label for="input-3">UserName</label> <input type="text"
														class="form-control" id="input-5"
														placeholder="Nhập User Name" name="userName">
												</div>
												<div class="form-group">
													<label for="input-4">Mật khẩu</label> <input
														type="password" class="form-control" id="myinput"
														placeholder="Nhập mật khẩu" name="userPass"> <input
														type="checkbox" onclick="myFunction1()">Hiển thị
													mật khẩu
													<script>
														function myFunction1() {
															var x = document
																	.getElementById("myinput");
															if (x.type === "password") {
																x.type = "text";
															} else {
																x.type = "password";
															}
														}
													</script>
												</div>

												<div class="form-footer">
													<button class="btn btn-danger">
														<i class="fa fa-times"></i><a
															href="${pageContext.request.contextPath}/manage/employee/listEmp">Hủy</a>
													</button>
													<button type="submit" class="btn btn-success">
														<i class="fas fa-check"></i> Thêm
													</button>
												</div>
										</form>
									</div>
								</div>
							</div>
						</div>
			</main>
</body>
</html>