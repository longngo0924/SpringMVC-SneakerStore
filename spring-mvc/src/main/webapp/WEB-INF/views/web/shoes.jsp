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
	<section id="aa-product-category">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
					<div class="aa-product-catg-content">

						<div class="aa-product-catg-body">
							<ul class="aa-product-catg">
								<!-- start single product item -->
								<c:forEach var="item" items="${model.listResult}">
							
									<div class="col-lg-4 col-md-6" >
										<figure>
											<a  class="aa-product-img" href="${pageContext.request.contextPath}/shoes-detail?id=${item.id}"><img 
												src="<c:url value='/template/web/assets/images/${item.anh}' />"
												alt="${item.name}"></a>
											<a class="aa-add-card-btn" href="${item.id}"><span
												class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
											<figcaption>
												<h4 class="aa-product-title">
													<a href="">${item.name}</a>
												</h4>

												<c:choose>
													<c:when test="${item.discount == 0}">
														<span class="aa-product-price">${item.price} VNĐ</span>
														<span class="aa-product-price"></span>
													</c:when>
													<c:otherwise>
														<c:forEach items="${model.listResult}" var="product1">
															<c:if test="${item.id == item.id}">
																<span class="aa-product-price">${item.price} VNĐ</span>
																<span class="aa-product-price"><del>${item.price}
																		VNĐ</del></span>
															</c:if>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</figcaption>
										</figure> <c:if test="${item.discount != 0}">
											<!-- product badge -->
											<span class="aa-badge aa-sale">- ${item.discount}%</span>
										</c:if>

									</div>
								</c:forEach>
							</ul>

							<!-- / quick view modal -->
						</div>

					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
					<aside class="aa-sidebar">
						<!-- single sidebar -->
						<div class="aa-sidebar-widget">
							<h3>Danh mục</h3>
							<ul class="aa-catg-nav">
								<c:forEach items="${catelist}" var="cate">
									<li><a
										href="${pageContext.request.contextPath}/view/client/product-id?id=${cate.id}">${cate.name}
											bỏ danh mục giày vô</a></li>
								</c:forEach>
							</ul>
						</div>
						<!-- single sidebar -->

						<!-- single sidebar -->

						<!-- single sidebar -->

					</aside>
				</div>

			</div>
		</div>
	</section>
</body>
</html>