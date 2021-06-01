<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
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
										<div class="card-title">Detail Product</div>
										<hr>
										<table
											class="table table-hover table-striped table-bordered first">


											<tr>
												<td>Product Id</td>
												<td>${sp.id}</td>
											</tr>
											<tr>
												<td>Product Name</td>
												<td>${sp.name}</td>
											</tr>
											<tr>
												<td>Product Category</td>
												<td>${sp.categoryName }</td>
											</tr>

											<tr>
												<td>Product Company</td>
												<td>${sp.companyName }</td>
											</tr>
											<tr>

												<td>Product Discount</td>
												<td>${sp.discount }</td>
											</tr>
											<tr>
												<td>Product Discount_Price</td>
												<td>${sp.discount_price }</td>
											</tr>
											<tr>
												<td>Product Description</td>
												<td>${sp.description }</td>
											</tr>
											<tr>
												<td>Product Quantity</td>
												<td>${sp.quantity }</td>
											</tr>
											<tr>
												<td>Product Size 36</td>
												<td>${sp.size36 }</td>
											</tr>
											<tr>
												<td>Product Size 37</td>
												<td>${sp.size37 }</td>
											</tr>
											<tr>
												<td>Product Size 38</td>
												<td>${sp.size38 }</td>
											</tr>
											<tr>
												<td>Product Size 39</td>
												<td>${sp.size39 }</td>
											</tr>
											<tr>
												<td>Product Size 40</td>
												<td>${sp.size40 }</td>
											</tr>
											<tr>
												<td>Product Size 41</td>
												<td>${sp.size41 }</td>
											</tr>
											<tr>
												<td>Product Size 42</td>
												<td>${sp.size42 }</td>
											</tr>
											<tr>
												<td>Product Size 43</td>
												<td>${sp.size43 }</td>
											</tr>
											<tr>
												<td>Product Size 44</td>
												<td>${sp.size44 }</td>
											</tr>

											<tr>
												<td>Product Anh</td>
												<td><img
													style="width: 110px; height: 67px; object-fit: cover; border: 1px solid #fff;"
													src="<c:url value='/template/web/assets/images/${sp.anh}' />"
													alt="${sp.name}"></td>
												</td>
											</tr>

											<tr>
												<button class="btn btn-danger">
													<i class="fa fa-times"></i><a
														href="${pageContext.request.contextPath}/manage/product/listPro">Back
														to product list</a>
												</button>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="overlay toggle-menu"></div>
					</div>
				</div>
			</main>
			</main>
</body>
</html>