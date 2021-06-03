<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 ERROR</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='/template/admin/css/styles.css'/>"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div id="layoutError">
		<div id="layoutError_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-6">
							<div class="text-center mt-4">
								<img class="mb-4 img-error"
									src="<c:url value = '/template/web/assets/img/error-404-monochrome.svg'/>" />
								<p class="lead">This requested URL was not found on this
									server.</p>
								<a href="<c:url value ='/trang-chu'/>"> <i class="fas fa-arrow-left mr-1"></i>
									Return to home page
								</a>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutError_footer">
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; 23LAB 2021</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>