<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<%@ page import="com.laptrinhjavaweb.util.SecurityUtils"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
					<h1 class="mt-4">Dashboard</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Dashboard</li>
					</ol>
					<div class="row">
						<div class="col-xl-3 col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div class="card-body">Total orders</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<b>1000</b>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-warning text-white mb-4">
								<div class="card-body">Pending orders</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<b>800</b>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-success text-white mb-4">
								<div class="card-body">Success orders</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<b>780</b>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-danger text-white mb-4">
								<div class="card-body">Cancel orders</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<b>20</b>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area mr-1"></i> Area Chart Example
								</div>
								<div class="card-body">
									<canvas id="myAreaChart" width="100%" height="40"></canvas>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar mr-1"></i> Bar Chart Example
								</div>
								<div class="card-body">
									<canvas id="myBarChart" width="100%" height="40"></canvas>
								</div>
							</div>
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> DataTable Example
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Name</th>
											<th>Description</th>
											<th>Price</th>
											<th>Discount</th>
											<th>Discount Price</th>
											<th>Quantity</th>
											<th>Size 36</th>
											<th>Size 37</th>
											<th>Size 38</th>
											<th>Size 39</th>
											<th>Size 40</th>
											<th>Size 41</th>
											<th>Size 42</th>
											<th>Size 43</th>
											<th>Size 44</th>	
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Name</th>
											<th>Description</th>
											<th>Price</th>
											<th>Discount</th>
											<th>Discount Price</th>
											<th>Quantity</th>
											<th>Size 36</th>
											<th>Size 37</th>
											<th>Size 38</th>
											<th>Size 39</th>
											<th>Size 40</th>
											<th>Size 41</th>
											<th>Size 42</th>
											<th>Size 43</th>
											<th>Size 44</th>
											
										</tr>
									</tfoot>
									<tbody>
										<c:forEach var="item" items="${model.listResult}">
											<tr>
												<td>${item.name}</td>
												<td>${item.description}</td>
												<td>${item.price}</td>
												<td>${item.discount}</td>
												<td>${item.discount_price}</td>
												<td>${item.quantity}</td>
												<td>${item.size36}</td>
												<td>${item.size37}</td>
												<td>${item.size38}</td>
												<td>${item.size39}</td>
												<td>${item.size40}</td>
												<td>${item.size41}</td>
												<td>${item.size42}</td>
												<td>${item.size43}</td>
												<td>${item.size44}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
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