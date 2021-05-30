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
		 <div class="container-fluid">
					<h1 class="mt-4">Employee</h1>
					<ol class="breadcrumb mb-4">
						<a class="breadcrumb-item active"
							href="${pageContext.request.contextPath}/manage/employee/addEmp">Add
							New Employee</a></ol>
        
          <div class="row"></div>
					<div class="row"></div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> Danh sách sản phẩm
						</div>
            <div class="card"> 
              <div class="card-body"> 

                <div class="table-responsive">              
                  <table class="table table-hover table-striped table-bordered first"> 
                    <thead> 
                      <tr> 
                        <th scope="col">#</th>
                        <th scope="col">Tên</th>
                        <th scope="col">Email</th>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col">Username</th>
                        <th scope="col">Address</th>
                         <th scope="col">Gender</th>   
                         <th scope="col">Hành động</th>                  
                     </tr> 
                    </thead> 
                    <tbody> 
                  <c:forEach items="${emplist.listResult}" var="employee"> 
                      <tr> 
                        <td scope="row">${employee.id}</td>
                        <td>${employee.name }</td>
        				<td>${employee.email }</td>
        				<td>${employee.phone }</td>
        				<td>${employee.userName }</td><!-- từ uesr_id lấy userName -->
        				<td>${employee.address }</td>
        				<c:choose>
														<c:when test="${employee.gender=='1'}">
															<td>Nam</td>>
    													</c:when>
														<c:otherwise>
															<td>Nữ</td>>
   														</c:otherwise>
													</c:choose>
        				 <td>
                           <button class="btn btn-outline-danger"><a href="${pageContext.request.contextPath}/manage/employee/delete?employee-id=${employee.id}"><i class="fa fa-trash"></i></a></button>
              
                          <button class="btn btn-outline-success"><a href="${pageContext.request.contextPath}/manage/employee/edit?id=${employee.id}"><i class="fa fa-trash"></i></a></button>
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
</body>
</html>