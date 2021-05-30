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
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-6">
				<div class="text-center mt-4">
					<p class="lead" style="margin-top: 4em; color: red">
						<b>ĐẶT HÀNG THÀNH CÔNG</b>
					</p>
					<p>Quý khách đã đặt hàng thành công, thông tin đơn hàng được
						xác nhận qua email</p>
					<a href="<c:url value='/trang-chu'/>"> <i
						class="fas fa-arrow-left mr-1"></i> Tiếp tục mua sắm
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>