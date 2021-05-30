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
                <h5 class="card-title">Danh sách đơn hàng</h5>
                <div class="table-responsive">
                  <table class="table table-hover table-striped table-bordered first">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                       <th scope="col">STT</th>
                        <th scope="col">Họ Tên Khách </th>
                        <th scope="col">Họ Tên Nhân Viên </th>
                        <th scope="col">Email</th>
                        <th scope="col">SĐT</th>
                         <th scope="col">Địa chỉ</th>
                         <th scope="col">Tổng tiền</th>
                         <th scope="col">Trạng thái</th>
                          <th scope="col">Ngày tạo</th>
                          <th scope="col">Hành động</th>
                      </tr>
                    </thead>
                    <tbody>
                     <tr>
                        <td scope="row">${order.id}</td>
                         <td>1</td>
                        <td>cus1</td>
                        <td>epm1</td>
                        <td>cus1@gmail.com</td>
                        <td>0123456</td>
                        <td>12NVB</td>
                        <td>1tr</td>
                          <td>
                          	  đã thanh toán
                          </td>
                           <td>2/2/2</td>
        				 <td>
                         <button class="btn btn-outline-secondary"><a href="${pageContext.request.contextPath}/manage/order/orderDetail"><i class="fa fa-search"></i></a></button>
                         
                          <button class="btn btn-outline-success"><a href="${pageContext.request.contextPath}/manager/order/edit?id=${order.id}"><i class="fa fa-edit"></i></a></button>
                        </td>
                     </tr>
                  <c:forEach items="${order}" var="order">
                  
                      <tr>
                        <td scope="row">${order.id}</td>
                         <td>${order.id}</td>
                        <td>${order.customer_name}</td>
                        <td>${order.employee_name}</td>
                        <td>${order.customer_mail}</td>
                        <td>${order.customerr_phone}</td>
                        <td>${order.customer_address}</td>
                        <td>${order.total}</td>
                          <td>
                          	  <c:choose>
	                        <c:when test="${order.status == 0}"> 
	                        	<c:out value="Chưa thanh toán"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Đã thanh toán ==1"/>
						    </c:otherwise>
                       	</c:choose>
                          </td>
                           <td>${order.date}</td>
        				 <td>
                         <button class="btn btn-outline-secondary"><a href="${pageContext.request.contextPath}/admin/order/delete?id=${order.id}"><i class="fa fa-search"></a></button>
                         
                          <button class="btn btn-outline-success"><a href="${pageContext.request.contextPath}/admin/order/edit?id=${order.id}"><i class="fa fa-edit"></a></button>
                        </td>
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