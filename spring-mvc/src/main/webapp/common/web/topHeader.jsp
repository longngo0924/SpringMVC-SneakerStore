<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.laptrinhjavaweb.util.SecurityUtils"%>

<!DOCTYPE html>
<div class="aa-header-top">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-header-top-area">
					<!-- start header top left -->
					<div class="aa-header-top-left">
						<div class="cellphone hidden-xs">
							<p>
								<span class="fas fa-home"></span>Website bán hàng giày dép
							</p>
						</div>
						<!-- start language -->
						<div class="aa-language">
							<div class="dropdown">
								<a class="btn dropdown-toggle" href="#" type="button"
									id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="true"> <img
									src="<c:url value='/template/web/assets/img/flag/vietnam.png'/>"
									alt="english flag">Việt Nam
								</a>

							</div>
						</div>
						<!-- / language -->

						<!-- start cellphone -->
						<!--                <div class="cellphone hidden-xs">
                  <p><span class="fa fa-phone"></span>00-62-658-658</p>
                </div>-->
						<!-- / cellphone -->
					</div>
					<!-- / header top left -->
					<div class="aa-header-top-right">
						<ul class="aa-head-top-nav-right">

							<security:authorize access="isAuthenticated()">
								<li><a><strong>Chào <%=SecurityUtils.getPrincipal().getUsername()%></strong></a></li>
								<li class="hidden-xs"><a href="<c:url value='/dang-xuat'/>">Đăng
										xuất</a></li>
							</security:authorize>

							<security:authorize access="isAnonymous()">
								<li class="hidden-xs"><a href="<c:url value='/dang-ky'/>">Đăng
										ký</a></li>
								<li><a href="<c:url value='/dang-nhap'/>">Đăng nhập</a></li>
							</security:authorize>

							<!--  data-toggle="modal" data-target="#login-modal" -->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>