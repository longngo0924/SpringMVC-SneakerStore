<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section id="aa-product-category">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
          <div class="aa-product-catg-content">
            <div class="aa-product-catg-body">
            
            	<c:choose>
	            	<c:when test="${empty productlist}"> 
	                   <p style="display:none;">Kết quả tìm kiếm cho từ khóa: <strong>${param.s}</strong></p>
	                </c:when>
	                <c:otherwise>
				       <p style="margin-bottom:30px;">Kết quả tìm kiếm cho từ khóa: <strong>${param.s}</strong></p>
				    </c:otherwise>
               </c:choose>
              
              <ul class="aa-product-catg">
                <!-- start single product item -->
                <c:if test="${empty productlist}">
                 	<p style="margin-left: 30px">Không tìm thấy sản phẩm!</p>
                 </c:if>
               
                <c:forEach items="${productlist}" var="product">

	                <li>
	                  <figure>
	                    <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="${product.name}"></a>
	                    <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
	                    <figcaption>
	                      <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name}</a></h4>
	                      
	                    <c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
	                    
	                    </figcaption>
	                  </figure>                         
	                 
	                 <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
	                </li>
                </c:forEach>                                       
              </ul>
                
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
              	<li><a href="${pageContext.request.contextPath}/view/client/product-id?id=${cate.id}">${cate.name}</a></li>
              </c:forEach>                
              </ul>
            </div>
          
		
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>Sản phẩm gần đây</h3>
              <div class="aa-recently-views">
                <ul>
                 <c:forEach items="${productlist}" var="product" end="2">
                  <li>
                    <a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}" class="aa-cartbox-img"><img alt="img" src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                      <c:choose>
						<c:when test="${product.discount == 0}">
	                        <p>${product.price} VNĐ</p>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                       <p>${product1.price} VNĐ</p>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                    
                    </div>                    
                  </li>
                  </c:forEach>
                </ul>
              </div>                                 
            </div>
            <!-- single sidebar -->
           
          </aside>
        </div>
       
      </div>
    </div>
  </section>
</body>
</html>