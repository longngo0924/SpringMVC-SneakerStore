<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
             <form action="${pageContext.request.contextPath}/view/client/cart-update" method="post">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>Bỏ chọn</th>
                        <th>Mô tả</th>
                        <th>Sản phẩm</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Giảm giá</th>
                        <th>Thành Tiền</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${order.items}" var="item">
                      <tr>
                        <td><a class="remove" href="${pageContext.request.contextPath}/view/client/cart-delete?id=${item.product.id}"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.product.id}"><img src="${pageContext.request.contextPath}/template/web/assets/images/section_tc1.jpg" alt="img${item.product.name }"></a></td>
                        <td><a class="aa-cart-title" href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.product.id}">${item.product.name } giay</a></td>
                        <td>${item.product.price}100000 VNĐ</td>
                        <td><input class="aa-cart-quantity" type="number" name="${item.product.id}" value="${item.qty}" min=1></td>
                        <td>${item.product.discount} %</td>
                        <td>${item.price}00 VNĐ</td>
                      </tr>
          			 </c:forEach>
          			 <tr>
                        <td colspan="6" class=""><strong>TỔNG TIỀN</strong></td>
                        <td><strong>${sumprice} VNĐ</strong></td>
                      </tr>
                      <tr>
                        <td colspan="7" class="aa-cart-view-bottom">
                          <input class="aa-cart-view-btn" type="submit" value="Cập nhật giỏ hàng">
                        </td>
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
                     <td>${sumprice} VNĐ</td>
                   </tr>
                   <tr>
                     <th>VAT</th>
                     <td>0 VNĐ</td>
                   </tr>
                   <tr>
                     <th>Tổng cộng</th>
                     <td><strong>${sumprice} VNĐ</strong></td>
                   </tr>
                 </tbody>
               </table>
               <a href="${pageContext.request.contextPath}/checkout" class="aa-cart-view-btn">Thanh toán</a>
             </div>
           </div>
         </div>
       </div>
     </div>
    </div>
 </section>
 <!-- / Cart view section -->

</body>
</html>