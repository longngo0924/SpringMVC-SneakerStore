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
						</a> <a class="nav-link" href="${pageContext.request.contextPath}/manage/employee/listEmp">
							<div class="sb-nav-link-icon">
								<i class="fa fa-users" aria-hidden="true"></i>
							</div> Employee
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/manage/order/listOrder">
							<div class="sb-nav-link-icon">
								<i class="fa fa-shopping-bag" aria-hidden="true"></i>
							</div> Orders
						</a> <a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fa fa-product-hunt" aria-hidden="true"></i>
							</div> Revenue
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
										<div class="card-title">Edit Employee</div>
										<hr>
										<input name="id" value="${sp.id }" type="hidden"></input>
										<form action="luu-thong-tin" method="POST" >

				
											<div class="form-group">
												<label for="input-1">Employee Name</label> <input type="text"
													class="form-control"  id="input-1"
													placeholder="Tên sản phẩm" name="name" value="${sp.name }"required>
											</div>
											<div class="form-group">
												<label for="input-1">Employee Email</label> <input type="text"
													class="form-control"  id="input-1"
													placeholder="Tên sản phẩm" name="email" value="${sp.email}"required>
											</div>
											<div class="form-group">
												<label for="input-1">Employee Phone</label> <input type="text"
													class="form-control"  id="input-1"
													placeholder="Tên sản phẩm" name="phone" value="${sp.phone }"required>
											</div>
											<div class="form-group">
												<label for="input-1">Employee Address</label> <input type="text"
													class="form-control"  id="input-1"
													placeholder="Tên sản phẩm" name="address" value="${sp.address }"required>
											</div>
										
											<div class="form-footer">
												<button class="btn btn-danger">
													<i class="fa fa-times"></i><a
														href="${pageContext.request.contextPath}/manage/employee/listEmp">Hủy</a>
												</button>
												<button type="submit" class="btn btn-success">
													<i class="fas fa-check"></i> Sửa
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="overlay toggle-menu"></div>
					</div>
				</div>
			</main>
</body>
</html>