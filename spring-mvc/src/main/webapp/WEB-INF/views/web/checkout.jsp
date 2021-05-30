<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="com.laptrinhjavaweb.util.SecurityUtils"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id="checkout">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="checkout-area">
						<form action="<c:url value = '/sendmail'/>" method="post">
							<div class="row">
								<div class="col-md-8">
									<div class="checkout-left">
										<div class="panel-group">
											<security:authorize access="isAnonymous()">

												<p>
													Bạn cần đăng nhập để thanh toán! Đăng nhập <a
														href="<c:url value='/dang-nhap'/>" style="color: #754110">tại
														đây!</a>
												</p>
											</security:authorize>
											<security:authorize access="isAuthenticated()">

												<!-- Shipping Address -->
												<div class="panel panel-default aa-checkout-billaddress">
													<div class="panel-heading">
														<h4 class="panel-title" style="color: #754110">Thông
															tin giao hàng</h4>
													</div>
													<div id="collapseFour">
														<div class="panel-body">
															<div class="row">
																<div class="col-md-12">
																	<div class="aa-checkout-single-bill">
																		<input type="text" placeholder="Họ Tên*"
																			required="required" name="name">
																	</div>
																</div>

															</div>

															<div class="row">
																<div class="col-md-6">
																	<div class="aa-checkout-single-bill">
																		<input type="email" placeholder="Email*"
																			required="required" name="recipient">
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="aa-checkout-single-bill">
																		<input type="tel" placeholder="Số điện thoại*"
																			required="required" name="phone">
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="aa-checkout-single-bill">
																		<textarea cols="8" rows="3" required="required"
																			placeholder="Địa chỉ*" name="address"></textarea>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="aa-checkout-single-bill">
																		<textarea cols="8" rows="3" placeholder="Ghi chú"
																			name="mess"></textarea>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</security:authorize>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="checkout-right">
										<h4>Thông tin đơn hàng</h4>
										<div class="aa-order-summary-area">
											<table class="table table-responsive">
												<thead>
													<tr>
														<th>Sản phẩm</th>
														<th>Số tiền</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${cart}" var="item">
														<tr>
															<td>${item.value.productDTO.name}</td>
															<td>${item.value.productDTO.price}VNĐ</td>
														</tr>
													</c:forEach>
												</tbody>
												<tfoot>
													<tr>
														<th>Tạm tính</th>
														<td>${cartTotalPrice}VNĐ</td>
													</tr>
													<tr>
														<th>Thuế</th>
														<td>0 VNĐ</td>
													</tr>
													<tr>
														<th>Tổng cộng</th>
														<td><strong>${cartTotalPrice} VNĐ</strong></td>
													</tr>
												</tfoot>
											</table>
										</div>
										<h4>Hình thức thanh toán</h4>
										<div class="aa-payment-method">
											<label for="cashdelivery"><input type="radio"
												id="cashdelivery" name="transaction_payment" checked
												value="0"> Thanh toán khi nhận hàng (COD) </label> <label
												for="paypal"><input type="radio" id="paypal"
												name="transaction_payment" value="1"> Thanh toán
												bằng thể ngân hàng (ATM) </label> <img
												src="${pageContext.request.contextPath}/template/web/assets/img/paypal.jpg"
												border="0" alt="PayPal Acceptance Mark"> <input
												style="background-color: red" type="submit"
												value="Thanh Toán" class="aa-browse-btn">
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>