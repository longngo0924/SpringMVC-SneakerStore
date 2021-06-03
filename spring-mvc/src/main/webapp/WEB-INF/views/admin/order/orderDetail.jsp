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
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Chi tiết đơn hàng</h5>
							<h5>Tên Khách Hàng: ${hoaDon.customer.name}</h5>
							<div>
								<h5>Tên Nhân Viên: ${hoaDon.employee.name}</h5>

							</div>
							<div class="row">
								<div class="table-responsive">
									<table
										class="table table-hover table-striped table-bordered first">
										<thead>
											<tr>
												<th scope="col">#</th>

												<th scope="col">ID Sản Phẩm</th>
												<th scope="col">Tên Sản Phẩm</th>
												<th scope="col">Size</th>
												<th scope="col">Giá</th>
												<th scope="col">Số lượng</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${listCT}" var="orderedlist">




												<tr>
													<td scope="row">${orderedlist.id}</td>

													<td>${orderedlist.product.id}</td>
													<td>${orderedlist.product.name}</td>
													<td>${orderedlist.size}</td>
													<td>${orderedlist.price}</td>
													<td>${orderedlist.quantity}</td>


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