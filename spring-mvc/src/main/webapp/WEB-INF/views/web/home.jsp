<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>

</head>

<body>


	<section id="aa-promo">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-promo-area">
						<div class="row">
							<!-- promo left -->
							<div class="col-md-5 no-padding">
								<div class="aa-promo-left">
									<div class="aa-promo-banner">
										<img
											src="<c:url value='/template/web/assets/images/section_tc1.jpg'/>"
											alt="">
										<div class="aa-prom-content">
											<span>Giảm giá 10%</span>
											<h4 style="text-shadow: black 0.1em 0.1em 0.2em">AIR
												JORDAN 1 MID CRIMSON TINT</h4>
										</div>
									</div>
								</div>
							</div>
							<!-- promo right -->
							<div class="col-md-7 no-padding">
								<div class="aa-promo-right">
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img
												src="<c:url value='/template/web/assets/images/section_tc2.jpg'/>"
												alt="">

											<div class="aa-prom-content">
												<span>Giày Nike</span>
												<h4 style="text-shadow: black 0.1em 0.1em 0.2em">Air
													Jordan 1 Mid</h4>
											</div>
										</div>
									</div>
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img
												src="<c:url value='/template/web/assets/images/section_tc3.jpg'/>"
												alt="img">
											<div class="aa-prom-content">
												<span>Giày Nike</span>
												<h4 style="text-shadow: black 0.1em 0.1em 0.2em">Air
													Jordan 1 High</h4>
											</div>
										</div>
									</div>
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img
												src="<c:url value='/template/web/assets/images/section_tc4.jpg'/>"
												alt="img">
											<div class="aa-prom-content">
												<span>Giày Nike</span>
												<h4 style="text-shadow: black 0.1em 0.1em 0.2em">Air
													Jordan 1 Low</h4>
											</div>
										</div>
									</div>
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img
												src="<c:url value='/template/web/assets/images/section_tc5.jpg'/>"
												alt="img">
											<div class="aa-prom-content">
												<span>Giày Adidas</span>
												<h4 style="text-shadow: black 0.1em 0.1em 0.2em">Yeezy
													V2</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Promo section -->
	<!-- Products section -->
	<section id="aa-product">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="aa-product-area">
							<div class="aa-product-inner">
								<!-- start prduct navigation -->
								<ul class="nav nav-tabs aa-products-tab">

									<li class="active"><a href="#newest" data-toggle="tab">Hàng
											mới</a></li>
									<li><a href="#basketball" data-toggle="tab">Basket
											Ball</a></li>
									<li><a href="#running" data-toggle="tab">Running</a></li>

									<li><a href="#khac" data-toggle="tab">Khác</a></li>
								</ul>
								<!-- Tab panes -->
								<div class="tab-content">
									<!-- Start men product category -->

									<div class="tab-pane fade in active" id="newest">
										<ul class="aa-product-catg">
											<!-- start single product item -->
											<c:forEach var="item" items="${model.listResult}" end="3">
												<c:if test="${item.categoryId == 1}">
													<li style="width: 250px">
														<figure>
															<a class="aa-product-img"
																href="<c:url value ='/detail/${item.id}'/>"><img
																src="<c:url value='/template/web/assets/images/${item.anh}' />"
																alt="polo shirt img"></a>
															<a class="aa-add-card-btn"
																href="<c:url value='/them-san-pham/${item.id }'/>"><span
																class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
															<figcaption>
																<h4 class="aa-product-title">
																	<a href="<c:url value ='/detail/${item.id}'/>">${item.name}</a>
																</h4>

																<c:choose>
																	<c:when test="${item.discount == 0}">
																		<span class="aa-product-price">${item.price}
																			VNĐ</span>
																		<span class="aa-product-price"></span>
																	</c:when>

																</c:choose>
															</figcaption>
														</figure> <c:if test="${item.discount != 0}">
															<!-- product badge -->
															<span class="aa-badge aa-sale">- ${item.discount}
																%</span>
														</c:if>
													</li>

												</c:if>


											</c:forEach>
											<!-- start single product item -->

										</ul>

									</div>
									<!-- / men product category -->
									<!-- start women product category -->

									<div class="tab-pane fade" id="basketball">
										<ul class="aa-product-catg">
											<!-- start single product item -->
											<c:forEach var="item" items="${model.listResult}" end="10">
												<c:if test="${item.categoryId == 4}">
													<li style="width: 250px">
														<figure>
															<a class="aa-product-img"
																href="<c:url value ='/detail/${item.id}'/>"><img
																src="<c:url value='/template/web/assets/images/${item.anh}' />"
																alt="polo shirt img"></a>
															<a class="aa-add-card-btn"
																href="<c:url value ='/detail/${item.id}'/>"><span
																class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
															<figcaption>
																<h4 class="aa-product-title">
																	<a href="<c:url value ='/detail/${item.id}'/>">${item.name}</a>
																</h4>

																<c:choose>
																	<c:when test="${item.discount == 0}">
																		<span class="aa-product-price">${item.price}
																			VNĐ</span>
																		<span class="aa-product-price"></span>
																	</c:when>

																</c:choose>
															</figcaption>
														</figure> <c:if test="${item.discount != 0}">
															<!-- product badge -->
															<span class="aa-badge aa-sale">- ${item.discount}
																%</span>
														</c:if>
													</li>

												</c:if>


											</c:forEach>
											<!-- start single product item -->

										</ul>

									</div>
									<!-- / women product category -->
									<!-- start sports product category -->

									<div class="tab-pane fade" id="running">
										<ul class="aa-product-catg">
											<!-- start single product item -->
											<c:forEach items="${model.listResult}" var="item" end="7">
												<c:if test="${item.categoryId == 3}">
													<li style="width: 250px">
														<figure>
															<a class="aa-product-img"
																href="<c:url value ='/detail/${item.id}'/>"><img
																src="<c:url value='/template/web/assets/images/${item.anh}' />"
																alt="polo shirt img"></a>
															<a class="aa-add-card-btn"
																href="<c:url value ='/detail/${item.id}'/>"><span
																class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
															<figcaption>
																<h4 class="aa-product-title">
																	<a href="<c:url value ='/detail/${item.id}'/>">${item.name }</a>
																</h4>
																<c:choose>
																	<c:when test="${item.discount == 0}">
																		<span class="aa-product-price">${product.price}
																			VNĐ</span>
																		<span class="aa-product-price"></span>
																	</c:when>

																</c:choose>
															</figcaption>
														</figure> <c:if test="${item.discount != 0}">
															<!-- product badge -->
															<span class="aa-badge aa-sale">- ${item.discount}
																%</span>
														</c:if>
													</li>

												</c:if>


											</c:forEach>
											<!-- start single product item -->

										</ul>

									</div>
									<!-- / sports product category -->
									<!-- start electronic product category -->
									<div class="tab-pane fade" id="matong">
										<ul class="aa-product-catg">
											<!-- start single product item -->
											<c:forEach items="${product_matong}" var="product" end="7">
												<li>
													<figure>
														<a class="aa-product-img"
															href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
															src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}"
															alt="polo shirt img"></a>
														<a class="aa-add-card-btn"
															href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
															class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
														<figcaption>
															<h4 class="aa-product-title">
																<a
																	href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
															</h4>
															<c:choose>
																<c:when test="${product.discount == 0}">
																	<span class="aa-product-price">${product.price}
																		VNĐ</span>
																	<span class="aa-product-price"></span>
																</c:when>
																<c:otherwise>
																	<c:forEach items="${productlist1}" var="product1">
																		<c:if test="${product1.id == product.id}">
																			<span class="aa-product-price">${product1.price}
																				VNĐ</span>
																			<span class="aa-product-price"><del>${product.price}
																					VNĐ</del></span>
																		</c:if>
																	</c:forEach>
																</c:otherwise>
															</c:choose>
														</figcaption>
													</figure> <c:if test="${product.discount != 0}">
														<!-- product badge -->
														<span class="aa-badge aa-sale">-
															${product.discount}%</span>
													</c:if>
												</li>
											</c:forEach>
											<!-- start single product item -->

										</ul>

									</div>
									<!-- / electronic product category -->
								</div>
								<div class="more-product">
									<a style="color: black" class="aa-browse-btn"
										href="<c:url value='/product' />">Xem Tất Cả Sản Phẩm <span
										class="fa fa-long-arrow-right"></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Products section -->
	<!-- banner section -->
	<section id="aa-banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="aa-banner-area">
							<a href="#"><img
								src="<c:url value='/template/web/assets/images/banner.jpg'/>"
								alt="banner trang chủ"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- popular section -->
	
	<!-- / popular section -->
	<!-- Support section -->
	<section style="margin-top: 2em" id="aa-support">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-support-area">
						<!-- single support -->
						<div class="col-md-4 col-sm-4 col-xs-12">
							<div class="aa-support-single">
								<span class="fa fa-truck"></span>
								<h4>MIỄN PHÍ VẬN CHUYỂN</h4>
								<P>Chúng tôi đã áp dụng gói miễn phí vận chuyển cho đơn hàng
									trên 10.000.000VNĐ.</P>
							</div>
						</div>
						<!-- single support -->
						<div class="col-md-4 col-sm-4 col-xs-12">
							<div class="aa-support-single">
								<span class="fa fa-clock-o"></span>
								<h4>GIAO HÀNG NHANH</h4>
								<P>Chúng tôi đảm bảo hàng đến tay khách hàng nhanh và đảm
									bảo sản phẩm an toàn.</P>
							</div>
						</div>
						<!-- single support -->
						<div class="col-md-4 col-sm-4 col-xs-12">
							<div class="aa-support-single">
								<span class="fa fa-phone"></span>
								<h4>HỖ TRỢ 24/7</h4>
								<P>Hỗ trợ tư vấn và đặt hàng mọi lúc mọi nơi, đảm bảo thời
									gian cho khách hàng.</P>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<content tag="activeDisplay"> <script>
		$(document).ready(function() {
			$(".tab-pane").click(function() {

				$(this).removeClass('in');
				$(this).removeClass('active');
				$(this).removeClass('show');

				$(this).addClass('in');
				$(this).addClass('active');
				$(this).addClass('show');
			});
		});
	</script> </content>

</body>

</html>