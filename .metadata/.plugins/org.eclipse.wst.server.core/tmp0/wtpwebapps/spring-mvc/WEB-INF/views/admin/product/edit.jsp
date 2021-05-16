<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="com.laptrinhjavaweb.util.SecurityUtils"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm sản phẩm mới</title>
</head>
<body>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fa fa-product-hunt" aria-hidden="true"></i>
							</div> Products
						</a> <a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fa fa-users" aria-hidden="true"></i>
							</div> Customers
						</a> <a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fa fa-shopping-bag" aria-hidden="true"></i>
							</div> Orders
						</a> </a> <a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fa fa-usd" aria-hidden="true"></i>
							</div> User
						</a> <a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fa fa-product-hunt" aria-hidden="true"></i>
							</div> Revenue
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as: </div>
					<%=SecurityUtils.getPrincipal().getUsername()%>
				</div>	
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">Sản phẩm</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Thêm sản phẩm mới</li>
					</ol>
					<div class="row"></div>
					<div class="row"></div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> Thông tin sản phẩm
						</div>
						<div style="margin-top: 2em; margin-left: 1em; margin-right: 1em">
							<form action="">
								<div class="form-group row">
									<label for="" class="col-sm-2 col-form-label">Tên sản
										phẩm:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label for="" class="col-sm-2 col-form-label">Giá sản
										phẩm:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label for="" class="col-sm-2 col-form-label">Discount:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label for="" class="col-sm-2 col-form-label">Giá
										discount:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label for="" class="col-sm-2 col-form-label">Mô tả:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label for="" class="col-sm-2 col-form-label">Hình ảnh:</label>
									<div class="col-sm-10">
										<input type="file" class="" id="customFile">
										<label class="" for="customFile"></label>
									</div>	
								</div>

							</form>
						</div>
					</div>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2020</div>
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