<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${model.name}</title>
</head>
<body>
	<!-- product category -->
	<section id="aa-product-details">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-product-details-area">
						<div class="aa-product-details-content">
							<div class="row">
								<!-- Modal view slider -->

								<div class="col-md-5 col-sm-5 col-xs-12">
									<div class="aa-product-view-slider">
										<div id="demo-1" class="simpleLens-gallery-container">
											<div class="simpleLens-container">
												<div class="simpleLens-big-image-container">
													<a class="simpleLens-lens-image"><img
														src="<c:url value='/template/web/assets/images/${model.anh}' />"
														class="simpleLens-big-image"></a>
												</div>
											</div>

										</div>
									</div>
								</div>
								<!-- Modal view content -->

								<div class="col-md-7 col-sm-7 col-xs-12">
									<div class="aa-product-view-content">
										<h3>${model.name}</h3>
										<span class="aa-product-price"><strong>${model.price} VNĐ</strong></span>
										<p class="aa-product-avilability">
											Tình trạng: <span> <c:choose>
													<c:when test="${model.quantity != 0}">
														<c:out value="Còn hàng" />
													</c:when>
													<c:otherwise>
														<c:out value="Hết hàng" />
													</c:otherwise>
												</c:choose>
											</span>
										</p>

										<div class="aa-price-block">

											<div style="margin-top: 1em" class="block">
												<select style="width: 50%">
													<option>chọn size của bạn</option>
													<option>38</option>
													<option>39</option>
													<option>40</option>
													<option>41</option>
												</select>
											</div>





										</div>
										<p>${detail_product.description}</p>
										<div class="aa-prod-quantity">

											<p class="aa-prod-category">
												<c:forEach items="${name_cate_of_product}" var="name_cate">
													<strong>Danh mục:</strong>
													<a href="product.jsp">${name_cate.name }</a>
												</c:forEach>
											</p>
										</div>
										<div class="aa-prod-view-bottom">
											<a style="background-color: red" class="aa-add-to-cart-btn"
												href="<c:url value='/them-san-pham/${model.id}'/>">Thêm vào
												giỏ hàng</a>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="aa-product-details-bottom">
							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane fade in active" id="description">
									<p>${detail_product.content }</p>
								</div>
								<div class="tab-pane fade " id="review">
									<div class="aa-product-review-area">
										<ul class="aa-review-nav">
											<c:forEach items="${reviewbyid}" var="review">
												<li>
													<div class="media">
														<div class="media-body">
															<h4 class="media-heading">
																<strong>${review.name}</strong> - <span>${review.created}</span>
															</h4>
															<div class="aa-product-rating">
																<span class="fa fa-star"></span> <span
																	class="fa fa-star"></span> <span class="fa fa-star"></span>
																<span class="fa fa-star"></span> <span
																	class="fa fa-star"></span>
															</div>
															<p>${review.content}</p>
														</div>
													</div>
												</li>
											</c:forEach>
										</ul>
										<h4>Thêm đánh giá</h4>

										<!-- review form -->
										<form
											action="${pageContext.request.contextPath}/view/client/review?id=${detail_product.id}"
											method="post" class="aa-review-form">
											<div class="form-group">
												<label for="name">Tên</label> <input type="text"
													class="form-control" id="name" placeholder="Name"
													name="name">
											</div>
											<div class="form-group">
												<label for="email">Email</label> <input type="email"
													class="form-control" id="email"
													placeholder="example@gmail.com" name="email">
											</div>
											<div class="form-group">
												<label for="message">Đánh giá của bạn</label>
												<textarea class="form-control" rows="3" id="content"
													name="content"></textarea>
											</div>

											<button type="submit"
												class="btn btn-default aa-review-submit">Gửi</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- Related product -->
						<div class="aa-product-related-item">
							<h3>SẢN PHẨM LIÊN QUAN</h3>
							<ul class="aa-product-catg aa-related-item-slider">
								<!-- start single product item -->
								<c:forEach items="${productById}" var="product">
									<li>
										<figure>
											<a class="aa-product-img"
												href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
												src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}"
												alt=""></a>
											<a class="aa-add-card-btn"
												href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
												class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
											<figcaption>
												<h4 class="aa-product-title">
													<a
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name}</a>
												</h4>

												<c:choose>
													<c:when test="${product.discount == 0}">
														<span class="aa-product-price">${product.price} <u>VNĐ</u></span>
														<span class="aa-product-price"></span>
													</c:when>
													<c:otherwise>
														<c:forEach items="${productlist1}" var="product1">
															<c:if test="${product1.id == product.id}">
																<span class="aa-product-price">${product1.price}
																	VNĐ</span>
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
															</c:if>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</figcaption>
										</figure> <c:if test="${product.discount != 0}">
											<!-- product badge -->
											<span class="aa-badge aa-sale">- ${product.discount}%</span>
										</c:if>
									</li>
								</c:forEach>
								<!-- start single product item -->
							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>