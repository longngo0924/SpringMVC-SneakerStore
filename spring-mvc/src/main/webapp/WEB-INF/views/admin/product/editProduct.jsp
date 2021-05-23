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
							href="${pageContext.request.contextPath}/manage/product/edit">
							<div class="sb-nav-link-icon">
								<i class="fa fa-product-hunt" aria-hidden="true"></i>
							</div> Products
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/manage/customer/editCus">
							<div class="sb-nav-link-icon">
								<i class="fa fa-users" aria-hidden="true"></i>
							</div> Customers
						</a> <a class="nav-link" href="${pageContext.request.contextPath}/manage/employee/editEmp">
							<div class="sb-nav-link-icon">
								<i class="fa fa-shopping-bag" aria-hidden="true"></i>
							</div> Employee
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/manage/order/editOrder">
							<div class="sb-nav-link-icon">
								<i class="fa fa-usd" aria-hidden="true"></i>
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
				<div class="container-fluid">
					<h1 class="mt-4">Product</h1>
					<ol class="breadcrumb mb-4">
						<a class="breadcrumb-item active"
							href="${pageContext.request.contextPath}/manage/product/addProduct">Add
							New Product</a>
					</ol>
					<div class="row"></div>
					<div class="row"></div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> Danh sách sản phẩm
						</div>
						 <div class="card">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Hình ảnh</th>
                        <th scope="col">Category</th>
                        <th scope="col">Company</th>
                        <th scope="col">Price</th>
                        <th scope="col">Dicount</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Description</th>
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${productlist}" var="product">
                      <tr>
                        <th scope="row">${product.id }</th>
                        <td>${product.name }</td>
                        <td><img style="    width: 110px;height: 67px; object-fit: cover;border: 1px solid #fff;" src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="${product.name}"></td>
                        <td>${product.category_name }</td>
                        <td>${product.company_name }</td>
                        <td>${product.price }</td>
                        <td>${product.discount }%</td>
                        <td>${product.size32}</td> <!-- chỗ này tổng các size -->
                        <td>${product.description }</td>
                        <td>
                            <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/product/delete?id=${product.id}">Xóa</a></button>
                         
                          <button class="btn btn-success"><a href="${pageContext.request.contextPath}/admin/product/edit?id=${product.id}">Sửa</a></button>
                        </td>
                      </tr>
                      </c:forEach>
                     
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
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