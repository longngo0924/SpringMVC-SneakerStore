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
	<!-- Cart view section -->
	<section id="cart-view">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="cart-view-area">
						<div class="cart-view-table">
							<form
								action="${pageContext.request.contextPath}/view/client/cart-update"
								method="post">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Xóa</th>
												<th>Sản phẩm</th>
												<th>Tên sản phẩm</th>
												<th>Size</th>
												<th>Giá</th>
												<th>Số lượng</th>
												<th>Update</th>
												<th>Thành Tiền</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${cart}">
												<tr>
													<td><a class="remove"
														href="<c:url value='/xoa-san-pham/${item.value.productDTO.id}'/>"><fa
																class="fa fa-close"></fa></a></td>
													<td><a
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.value.productDTO.id}"><img
															src="<c:url value='/template/web/assets/images/${item.value.productDTO.anh}' />"
															alt="{item.value.productDTO.name }"></a></td>
													<td><a class="aa-cart-title"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.value.productDTO.id}">${item.value.productDTO.name}
													</a></td>
													<td><input class="aa-cart-quantity" type="number"
														name="size" value="38" min=38 max=44></td>
													<td>${item.value.productDTO.price}VNĐ</td>
													<td><input class="aa-cart-quantity" type="number"
														data-id="${item.value.productDTO.id}
														name="${item.value.productDTO.id}" value="" min=1
														max="${item.value.productDTO.quantity}" id="quantity-${item.value.productDTO.id }"></td>
													<td><button data-id="${item.value.productDTO.id}"
															class="edit-quantity" type="button">
															<i class="fa fa-pencil-square-o"></i>
														</button></td>
													<td>${item.value.totalPrice}VNĐ</td>
												</tr>
											</c:forEach>
											<tr>
												<td colspan="7" class=""><strong>TỔNG TIỀN</strong></td>
												<td><strong>${cartTotalPrice} VNĐ</strong></td>
											</tr>
											<tr>
												<td colspan="8" class="aa-cart-view-bottom"><a href=""
													class="aa-cart-view-btn" style="background-color: black">Cập
														nhật giỏ hàng</a></td>
											</tr>

										</tbody>
									</table>
								</div>
							</form>
							<!-- Cart Total view -->
							<div class="cart-view-total">
								<h4>Thông tin giỏ hàng</h4>
								<table class="aa-totals-table">
									<tbody>
										<tr>
											<th>Tạm tính</th>
											<td>${cartTotalPrice}VNĐ</td>
										</tr>
										<tr>
											<th>VAT</th>
											<td>0 VNĐ</td>
										</tr>
										<tr>
											<th>Tổng cộng</th>
											<td><strong>${cartTotalPrice} VNĐ</strong></td>
										</tr>
									</tbody>
								</table>
								<a href="<c:url value='/checkout'/>" class="aa-cart-view-btn"
									style="background-color: red">Thanh toán</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Cart view section -->

	<content tag="Getquantity">
		<script>
			$(".edit-quantity").on("click", function(){
				var id = $(this).data("id");
				var quantity = $("#quantity-"+id).val();
				window.location = "cap-nhat-san-pham/"+id+"/"+quantity;
			});
		</script>
	 </content>

</body>
</html>