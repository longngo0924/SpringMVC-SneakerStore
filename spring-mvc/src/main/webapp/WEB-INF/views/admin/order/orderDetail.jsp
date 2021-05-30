<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Chi tiết đơn hàng</h5>
							<div class="table-responsive">
								<table class="table table-hover table-striped table-bordered first">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">ID Đơn Hàng</th>
											<th scope="col">ID Sản Phẩm</th>
											<th scope="col">Tên Sản Phẩm</th>
											<th scope="col">Size</th>
											<th scope="col">Giá</th>
											<th scope="col">Số lượng</th>
										</tr>
									</thead>
									<tbody>
									<tr>
											<th scope="col"></th>
											<th scope="col">1</th>
											<th scope="col">6</th>
											<th scope="col">Giày</th>
											<th scope="col">38</th>
											<th scope="col">10tr</th>
											<th scope="col">3</th>
										</tr>
										<c:forEach items="${orderedlist}" var="orderedlist">
											<tr>
												<td scope="row">${orderedlist.id}</td>
												<td>${orderedlist.transaction_id}</td>
												<td>${orderedlist.product_id}</td>
												<c:forEach items="${products}" var="products">
													<c:if test="${products.id == orderedlist.product_id}">
														<td>${products.name}</td>
														<td>${products.price}VNĐ</td>
													</c:if>
												</c:forEach>
												<td>${orderedlist.size}</td>
												<td>${orderedlist.qty}</td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
		</main>
</body>
</html>