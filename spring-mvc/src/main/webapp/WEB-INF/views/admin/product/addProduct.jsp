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
										<div class="card-title">Add Product</div>
										<hr>
										<form method="post"
											action="${pageContext.request.contextPath}/manage/product/addProduct" >


											<div class="form-group">
												<label for="input-1">Product Name</label> 
												<div>
												<input type="text"
													class="form-control" id="input-1"
													placeholder="Tên sản phẩm" name="name" required>
											</div>
											<div class="form-group row">
												<label 
													cssClass="col-sm-2 col-form-label">Category</label>
												<div class="col-sm-12">
													<select class="form-control"
														id="exampleFormControlSelect1" name="categoryName">
														<c:forEach items="${listCate}" var="danhmuc">
															<option value="${danhmuc.name}">${danhmuc.name}</option>
														</c:forEach>
													</select>
												</div>
											</div>

											<div class="form-group row">
												<label 
													cssClass="col-sm-2 col-form-label">Company</label>
												<div class="col-sm-12">
													<select class="form-control valid"
														id="exampleFormControlSelect1" name="companyName">
														<c:forEach items="${listCom}" var="ncc">
															<option value="${ncc.name}">${ncc.name}</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label for="input-1">Price</label> <input type="text"
													class="form-control" id="input-1" placeholder="Giá"
													name="price" required>
											</div>
											<div class="form-group">
												<label for="input-2">Discount</label>
												<div>
													<select class="form-control valid" id="input-6"
														name="discount" required aria-invalid="false">
														<option value="1">Yes</option>
														<option value="0">No</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label for="input-2">Discount Price</label>
												<div class="input-group">
													<input type="text" class="form-control"
														placeholder="Giảm ... %" name="discount_price" required>
													<div class="input-group-append">
														<button class="btn btn-light" type="button">%</button>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label for="input-2" class="col-form-label">Description</label>
												<div>
													<textarea class="form-control" rows="4" id="input-17"
														name="description" required></textarea>
												</div>
											</div>
											<div class="form-group">
												<label for="input-1" class="col-form-label">Size</label>
												<div>
													<table>
														<tr class="alignCenter">
															<th><label for="input-1">Size 36</label></th>
															<th><label for="input-1">Size 37</label></th>
															<th><label for="input-1">Size 38</label></th>
															<th><label for="input-1">Size 39</label></th>
															<th><label for="input-1">Size 40</label></th>
															<th><label for="input-1">Size 41</label></th>
															<th><label for="input-1">Size 42</label></th>
															<th><label for="input-1">Size 43</label></th>
															<th><label for="input-1">Size 44</label></th>
														</tr>
														<tr>
															<th><input type="text" class="form-control"
																id="input-1" placeholder="Size 36" name="size36" required></th>
															<th><input type="text" class="form-control"
																id="input-1" placeholder="Size 37" name="size37"required></th>
															<th><input type="text" class="form-control"
																id="input-1" placeholder="Size 38" name="size38"required></th>
															<th><input type="text" class="form-control"
																id="input-1" placeholder="Size 39" name="size39"required></th>
															<th><input type="text" class="form-control"
																id="input-1" placeholder="Size 40" name="size40"required></th>
															<th><input type="text" class="form-control"
																id="input-1" placeholder="Size 41" name="size41"required></th>
															<th><input type="text" class="form-control"
																id="input-1" placeholder="Size 42" name="size42"required></th>
															<th><input type="text" class="form-control"
																id="input-1" placeholder="Size 43" name="size43"required></th>
															<th><input type="text" class="form-control"
																id="input-1" placeholder="Size 44" name="size44"required></th>
														</tr>
													</table>
												</div>
											</div>
											<div class="form-group">
												<label for="input-1">Ảnh đại diện</label> <input type="text"
													class="form-control" id="input-1" placeholder="Tên hình"
													name="anh">
											</div>
											<div class="form-footer">
												<button class="btn btn-danger">
													<i class="fa fa-times"></i><a
														href="${pageContext.request.contextPath}/manage/product/listPro">Hủy</a>
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
						<div class="overlay toggle-menu"></div>
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
