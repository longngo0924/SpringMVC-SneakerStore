<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section id="menu" style="background-color: black;">
	<div class="container">
		<div class="menu-area">
			<!-- Navbar -->
			<div class="navbar navbar-default" role="navigation">
				<div class="navbar-collapse collapse">
					<!-- Left nav -->
					<ul class="nav navbar-nav">
						<li><a href="${pageContext.request.contextPath}/trang-chu">TRANG CHỦ</a></li>
						<li><a href="">GIỚI THIỆU</a></li>
						<li><a href="${pageContext.request.contextPath}/shoes">SẢN PHẨM</a></li>
						<li>
							<ul class="dropdown-menu">
								<li><a href="">RAU CỦ QUẢ</a></li>
								<li><a href="">CÁC LOẠI HẠT</a></li>
								<li><a href="">TINH DẦU</a></li>
								<li><a href="">MẬT ONG</a></li>
							</ul>
						</li>
						<li><a href="">TIN TỨC</a></li>
						<li><a href="">CHÍNH SÁCH</a></li>
						<li><a href="">LIÊN HỆ</a></li>
						<li class="aa-search">
							<!-- search box --> <a class="aa-search-box">
								<form
									action="${pageContext.request.contextPath}/view/client/product/search"
									method="GET">
									<input type="text" name="s" id=""
										placeholder="Tìm kiếm sản phẩm..">
									<button class="serach-box">
										<span class="fa fa-search"></span>
									</button>
								</form>
						</a> <!-- / search box -->
						</li>
					</ul>
				</div>
				<!--/.nav-collapse -->

			</div>
		</div>
	</div>
</section>