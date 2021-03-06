<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<div class="aa-header-bottom">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-header-bottom-area">
					<!-- logo  -->
					<div class="aa-logo">
						<!-- Text based logo -->
						<!--                <a href="index.jsp">
                  <span class="fa fa-shopping-cart"></span>
                  <p>daily<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                </a>-->
						<!-- img based logo -->
						<a href=""><img
							src="<c:url value='/template/web/assets/images/logo1.png'/>"
							alt="logo" width="50%"></a>
					</div>
					<!-- / logo  -->
					<!-- Shipping service -->
					<div class="aa-shipping-box">
						<a class="aa-shipping-boxsmall"> <span
							class="aa-shipping-boxsmall-icon fas fa-shipping-fast"></span> <span
							class="aa-shipping-box-text">
								<div class="aa-shipping-title">Miễn phí vận chuyển</div>
								<div class="">Khu vực TP HCM</div>
						</span>

						</a> <a class="aa-shipping-boxsmall"> <span
							class="aa-shipping-boxsmall-icon fas fa-phone"></span> <span
							class="aa-shipping-box-text">
								<div class="aa-shipping-title">Hỗ trợ: 037.7026.186</div>
								<div class="">Tư vấn 24/7 miễn phí</div>
						</span>

						</a> <a class="aa-shipping-boxsmall"> <span
							class="aa-shipping-boxsmall-icon fas fa-shipping-fast"></span> <span
							class="aa-shipping-box-text">
								<div class="aa-shipping-title">Giao hàng toàn quốc</div>
								<div class="">Đảm bảo uy tín, chất lượng</div>
						</span>

						</a>
					</div>

					<!-- cart box -->
					<div class="aa-cartbox">
						<a class="aa-cart-link" href="<c:url value='/cart'/>"> <span
							class="fas fa-cart-arrow-down"></span> <span
							class="aa-cart-title">GIỎ HÀNG</span> <c:if
								test="${cartTotalQuantity != NULL}">
								<span style="background-color: yellow" class="aa-cart-notify">${cartTotalQuantity}</span>

							</c:if>


						</a>


					</div>
					<!-- / cart box -->

				</div>
			</div>
		</div>
	</div>
</div>